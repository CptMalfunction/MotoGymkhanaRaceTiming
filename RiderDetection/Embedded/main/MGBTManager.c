/*
 * MGBTManager.c
 *
 *  Created on: 21 Nov 2020
 *      Author: cdromke
 */

#include "MGBTManager.h"
#include "MGBTCommProto.h"
#include "MGBTDevice.h"
#include "MGBTTimeMgmt.h"

#include "esp_ibeacon_api.h"
#include "esp_log.h"

static const char* AppName = "MGBTManager";

static MGBTDeviceData deviceList[MAXDEVICES] = {0};
static MGBTCommandData pendingResponse = {0};
static uint8_t lastResponseSent = 0U;
static uint32_t lastTimeCleanup = 0U;

static uint8_t totalPackets;
static uint8_t currentPacket;
static uint8_t currentDeviceIndex;


ManagerState managerState = MgBtMState_Idle;

void InitManager(void)
{
	InitCommProto();
	lastTimeCleanup = GetTimestampMs();
}

static void FindDeviceOrFirstFreeIndex(uint8_t* address, uint16_t* firstFreeIndex, uint16_t* indexFound)
{

	uint16_t index = 0U;


	(*firstFreeIndex) = MAXDEVICES;
	(*indexFound) = MAXDEVICES;

	while (index < MAXDEVICES)
	{
		if (IsDeviceEntryEmpty(&deviceList[index]) == 0U)
		{
			if (BTDeviceAddressEquals(&deviceList[index], address) == 1U)
			{
				(*indexFound) = index;
			}
		}
		else
		{
			if ((*firstFreeIndex) == MAXDEVICES)
			{
				(*firstFreeIndex) = index;
			}
		}
		index++;

		if (((*indexFound) != MAXDEVICES) && ((*firstFreeIndex) != MAXDEVICES))
		{
			index = MAXDEVICES;
		}
	}
}

static uint8_t CountAllowedDevices(void)
{
	uint8_t retVal = 0U;

	uint8_t index = 0U;
	for (index = 0U; index < MAXDEVICES; index++)
	{
		if (deviceList[index].allowed == 1U)
		{
			retVal++;
		}
	}

	return retVal;
}

static void AddDeviceToListAtIndex(uint16_t index, uint8_t* address, uint8_t allowed)
{
	if (index < MAXDEVICES)
	{
		MGBTDeviceData* device = &deviceList[index];
		memcpy(device->device.address, address, ESP_BD_ADDR_LEN);
		device->allowed = allowed;
	}
}

static void AddDeviceToList(uint8_t* address, uint8_t allowed)
{
	uint16_t firstFreeIndex = MAXDEVICES;
	uint16_t indexFound = MAXDEVICES;

	FindDeviceOrFirstFreeIndex(address, &firstFreeIndex, &indexFound);

	if (indexFound == MAXDEVICES)
	{
		if (firstFreeIndex != MAXDEVICES)
		{
			AddDeviceToListAtIndex(firstFreeIndex, address, allowed);
			pendingResponse.status = 0U;
			esp_log_buffer_hex("Added device:", address, ESP_BD_ADDR_LEN );
		}
		else
		{
			pendingResponse.status = 0xFFFEU;
		}
	}
	else
	{
		MGBTDeviceData* device = &deviceList[indexFound];
		if (device->allowed == 0U)
		{
			device->allowed = 0U;
			pendingResponse.status = 0U;
		}
		else
		{
			pendingResponse.status = 0xFFFFU;
		}
	}
}

static void RemoveDeviceFromList(uint8_t* address)
{
	uint16_t firstFreeIndex = MAXDEVICES;
	uint16_t indexFound = MAXDEVICES;

	FindDeviceOrFirstFreeIndex(address, &firstFreeIndex, &indexFound);

	if (indexFound != MAXDEVICES)
	{
		ClearDeviceEntry(&deviceList[indexFound]);
		pendingResponse.status = 0U;
	}
	else
	{
		pendingResponse.status = 0xFFFFU;
	}
}

static void StartListingAllowedDevices(void)
{
	uint8_t nbOfAllowedDevices = CountAllowedDevices();
	uint8_t devicesPerPacket = (uint8_t)(GetCommandMaxDataLength() / sizeof(MGBTDevice));

	if (nbOfAllowedDevices < devicesPerPacket)
	{
		totalPackets = 1U;
	}
	else
	{
		totalPackets = (nbOfAllowedDevices / devicesPerPacket);
		if ((nbOfAllowedDevices % devicesPerPacket) > 0)
		{
			totalPackets++;
		}
	}

	currentDeviceIndex = 0;
	currentPacket = 0;
	managerState = MgBtMState_ListingAllowedDevices;
}

static void SendListAllowedDevicePacket(void)
{

}

static void StartListingAllDevices(void)
{

}

static void SendListAllDevicesPacket(void)
{

}

static MGBTDeviceData* GetClosestDeviceFromList(void)
{
	MGBTDeviceData* retVal = (MGBTDeviceData*)0;
	uint16_t index = 0U;
	for (index = 0U; index < MAXDEVICES; index++)
	{
		MGBTDeviceData* entry = &deviceList[index];
		if (entry->allowed == 1U)
		{
			if (IsDeviceActive(entry) == 1U)
			{
				if (retVal == (MGBTDeviceData*)0)
				{
					retVal = entry;
				}
				else
				{
					if (entry->lastDistanceExponent < retVal->lastDistanceExponent)
					{
						retVal = entry;
					}
				}
			}
		}
	}
	return retVal;
}



static void ProcessCommand(MGBTCommandData* command)
{
	switch (command->cmdType)
	{
		case AddAllowedDevice:
		{
			ESP_LOGI(AppName, "Add to allowed devices");
			memcpy(&pendingResponse, command, GetCommandDataSize(command));
			AddDeviceToList(command->data, 1U);
			lastResponseSent = 1U;
			break;
		}
		case RemoveAllowedDevice:
		{
			ESP_LOGI(AppName, "Remove from allowed devices");
			memcpy(&pendingResponse, command, GetCommandDataSize(command));
			RemoveDeviceFromList(command->data);
			lastResponseSent = 1U;
			break;
		}
		case ListAllowedDevices:
		{
			ESP_LOGI(AppName, "List allowed devices");
			memcpy(&pendingResponse, command, GetCommandDataSize(command));
			StartListingAllowedDevices();
			lastResponseSent = 1U;
			break;
		}
		case ListDetectedDevices:
		{
			ESP_LOGI(AppName, "List detected devices");
			memcpy(&pendingResponse, command, GetCommandDataSize(command));
			StartListingAllDevices();
			lastResponseSent = 1U;
			break;
		}
		case GetClosestDevice:
		{
			ESP_LOGI(AppName, "Get closest device");
			memcpy(&pendingResponse, command, GetCommandDataSize(command));
			MGBTDeviceData* device = GetClosestDeviceFromList();
			if (device != (MGBTDeviceData*)0)
			{
				memcpy(pendingResponse.data, &device->device, sizeof(MGBTDevice));
				pendingResponse.dataLength = sizeof(MGBTDevice);
				pendingResponse.status = 0U;
			}
			else
			{
				pendingResponse.status = 0xFFFFU;
			}
			lastResponseSent = 1U;
			break;
		}
		default:
		{
			break;
		}
	}
}

static void ManagerIdleWork(void)
{

}

static void ProcessManagerWork(void)
{
	switch (managerState)
	{
		case MgBtMState_ListingAllowedDevices:
		{
			SendListAllowedDevicePacket();
			break;
		}
		case MgBtMState_ListingAllDetectedDevices:
		{
			SendListAllDevicesPacket();
			break;
		}
		default:
		{
			ManagerIdleWork();
		}

	}
}

static void SendPendingResponse(void)
{
	if (pendingResponse.cmdType != NoOperation)
	{
		SendResponse(&pendingResponse, lastResponseSent);
		if (lastResponseSent == 1U)
		{
			memset(&pendingResponse, 0, sizeof(MGBTCommandData));
		}
	}
}

void RunManager(void)
{
	RunCommProto();
	if (CommandAvailable() != 0U)
	{
		ProcessCommand(GetAndClearCommand());
	}
	ProcessManagerWork();
	if (CanSendResponse() != 0U)
	{
		SendPendingResponse();
	}
}

static uint8_t GetFilterAllowedDevices(void)
{
	uint8_t retVal = 0U;



	return retVal;
}

void ProcessScanResult(esp_ble_gap_cb_param_t* scanResult)
{
	 /* Search for BLE iBeacon Packet */
	if (esp_ble_is_ibeacon_packet(scanResult->scan_rst.ble_adv, scanResult->scan_rst.adv_data_len)){
		esp_ble_ibeacon_t *ibeacon_data = (esp_ble_ibeacon_t*)(scanResult->scan_rst.ble_adv);
		ESP_LOGI(AppName, "----------iBeacon Found----------");
		esp_log_buffer_hex("IBEACON_DEMO: Device address:", scanResult->scan_rst.bda, ESP_BD_ADDR_LEN );
		ESP_LOGI(AppName, "Measured power (RSSI at a 1m distance):%d dbm", ibeacon_data->ibeacon_vendor.measured_power);
		ESP_LOGI(AppName, "RSSI of packet:%d dbm", scanResult->scan_rst.rssi);

		uint16_t index = MAXDEVICES;
		uint16_t firstIndex = MAXDEVICES;

		FindDeviceOrFirstFreeIndex(scanResult->scan_rst.bda, &firstIndex, &index);

		if (index != MAXDEVICES)
		{
			UpdateDeviceData(&deviceList[index], scanResult, ibeacon_data);
			uint16_t dist = GetDistance(&deviceList[index]);
			ESP_LOGI(AppName, "Device is at distance of %d dm", dist);
		}
		else
		{
			ESP_LOGI(AppName, "Device is NOT allowed");
			if (GetFilterAllowedDevices() == 0U)
			{
				AddDeviceToListAtIndex(firstIndex, scanResult->scan_rst.bda, 0U);
			}
		}

	}
	/*else
	{
		ESP_LOGI(AppName, "Found non-iBeacon device:");
		esp_log_buffer_hex("IBEACON_DEMO: Device address:", scanResult->scan_rst.bda, ESP_BD_ADDR_LEN );
		ESP_LOGI(AppName, "RSSI of packet:%d dbm", scanResult->scan_rst.rssi);
	}*/
}
