EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x20_Female MCU_2
U 1 1 5ECB435C
P 5500 3350
F 0 "MCU_2" V 5573 3280 50  0000 C CNN
F 1 "Conn_01x20_Female" V 5664 3280 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 5500 3350 50  0001 C CNN
F 3 "~" H 5500 3350 50  0001 C CNN
	1    5500 3350
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x20_Female MCU_1
U 1 1 5ECC2C3B
P 5400 3800
F 0 "MCU_1" V 5565 3730 50  0000 C CNN
F 1 "Conn_01x20_Female" V 5474 3730 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 5400 3800 50  0001 C CNN
F 3 "~" H 5400 3800 50  0001 C CNN
	1    5400 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1250 1950 1250 2050
Wire Wire Line
	1250 2750 3600 2750
Wire Wire Line
	4500 2750 4500 3050
Wire Wire Line
	4500 2750 4600 2750
Wire Wire Line
	4600 2750 4600 3150
Connection ~ 4500 2750
Wire Wire Line
	8950 1350 8950 5100
Wire Wire Line
	8950 5100 6200 5100
Wire Wire Line
	6200 5100 6200 4700
$Comp
L Device:LED LED_START1
U 1 1 5ECD54A5
P 1900 4050
F 0 "LED_START1" V 1847 4130 50  0000 L CNN
F 1 "RED" V 1938 4130 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm" H 1900 4050 50  0001 C CNN
F 3 "~" H 1900 4050 50  0001 C CNN
	1    1900 4050
	0    1    1    0   
$EndComp
$Comp
L Device:LED LED_FIN1
U 1 1 5ECD6900
P 2350 4050
F 0 "LED_FIN1" V 2297 4130 50  0000 L CNN
F 1 "GREEN" V 2388 4130 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm" H 2350 4050 50  0001 C CNN
F 3 "~" H 2350 4050 50  0001 C CNN
	1    2350 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5ECD717F
P 1900 3550
F 0 "R1" H 1970 3596 50  0000 L CNN
F 1 "220R" H 1970 3505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1830 3550 50  0001 C CNN
F 3 "~" H 1900 3550 50  0001 C CNN
	1    1900 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5ECD7D3D
P 2350 3550
F 0 "R2" H 2420 3596 50  0000 L CNN
F 1 "220R" H 2420 3505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2280 3550 50  0001 C CNN
F 3 "~" H 2350 3550 50  0001 C CNN
	1    2350 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3700 1900 3900
Wire Wire Line
	2350 3700 2350 3900
Wire Wire Line
	1900 3400 2350 3400
$Comp
L Device:R R_PD_St1
U 1 1 5ECDD04B
P 1500 3550
F 0 "R_PD_St1" H 1570 3596 50  0000 L CNN
F 1 "10k" H 1570 3505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1430 3550 50  0001 C CNN
F 3 "~" H 1500 3550 50  0001 C CNN
	1    1500 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R_PD_Fin1
U 1 1 5ECDDAC0
P 2850 3550
F 0 "R_PD_Fin1" H 2920 3596 50  0000 L CNN
F 1 "10k" H 2920 3505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2780 3550 50  0001 C CNN
F 3 "~" H 2850 3550 50  0001 C CNN
	1    2850 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3400 2350 3400
Connection ~ 2350 3400
Wire Wire Line
	1900 3400 1500 3400
Connection ~ 1900 3400
Wire Wire Line
	1500 3700 1500 4200
Wire Wire Line
	1500 4200 1900 4200
Connection ~ 1500 4200
Wire Wire Line
	1500 4400 1500 4200
$Comp
L Isolator:PC817 U2
U 1 1 5ECDEA00
P 1400 4700
F 0 "U2" V 1446 4520 50  0000 R CNN
F 1 "PC817" V 1355 4520 50  0000 R CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 1200 4500 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 1400 4700 50  0001 L CNN
	1    1400 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 5000 1500 5250
Wire Wire Line
	3600 5250 3600 4900
Wire Wire Line
	3600 3400 2850 3400
Connection ~ 2850 3400
$Comp
L Isolator:PC817 U3
U 1 1 5ECE171C
P 2250 4700
F 0 "U3" V 2296 4520 50  0000 R CNN
F 1 "PC817" V 2205 4520 50  0000 R CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 2050 4500 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 2250 4700 50  0001 L CNN
	1    2250 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1550 1350 1650 1350
Wire Wire Line
	1500 5250 2350 5250
Wire Wire Line
	2350 4400 2350 4200
Wire Wire Line
	2350 4400 2850 4400
Wire Wire Line
	2850 4400 2850 3700
Connection ~ 2350 4400
Wire Wire Line
	2350 5000 2350 5250
Connection ~ 2350 5250
Wire Wire Line
	2350 5250 3600 5250
Wire Wire Line
	1300 4400 1300 4300
Wire Wire Line
	1300 4300 2150 4300
Wire Wire Line
	2150 4300 2150 4400
Wire Wire Line
	700  900  1650 900 
Wire Wire Line
	1650 900  1650 1350
Connection ~ 1650 1350
Wire Wire Line
	1650 1350 1950 1350
Connection ~ 1300 4400
Wire Wire Line
	700  4400 1300 4400
Wire Wire Line
	700  900  700  4400
Wire Wire Line
	3600 3400 3600 2750
Connection ~ 3600 3400
Connection ~ 3600 2750
Wire Wire Line
	3600 2750 4500 2750
$Comp
L 2020-05-24_13-28-23:LM2577T-ADJ_NOPB U1
U 1 1 5ED0DA73
P 850 6700
F 0 "U1" H 1950 7087 60  0000 C CNN
F 1 "LM2577T-ADJ_NOPB" H 1950 6981 60  0000 C CNN
F 2 "footprints:LM2577T-ADJ&slash_NOPB" H 1950 6940 60  0001 C CNN
F 3 "" H 850 6700 60  0000 C CNN
	1    850  6700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5ED0F029
P 1950 1650
F 0 "C1" H 2068 1696 50  0000 L CNN
F 1 "100uF" H 2068 1605 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D13.0mm_P5.00mm" H 1988 1500 50  0001 C CNN
F 3 "~" H 1950 1650 50  0001 C CNN
	1    1950 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1500 1950 1350
Connection ~ 1950 1350
Wire Wire Line
	1950 1350 4400 1350
Wire Wire Line
	1950 1800 1950 2050
Wire Wire Line
	1950 2050 1250 2050
Connection ~ 1250 2050
Wire Wire Line
	1250 2050 1250 2750
$Comp
L Device:CP C4
U 1 1 5ED1146E
P 2450 7250
F 0 "C4" V 2250 7250 50  0000 C CNN
F 1 "680uF" V 2150 7250 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D13.0mm_P5.00mm" H 2488 7100 50  0001 C CNN
F 3 "~" H 2450 7250 50  0001 C CNN
	1    2450 7250
	0    -1   -1   0   
$EndComp
$Comp
L Device:L L1
U 1 1 5ED13096
P 3350 6700
F 0 "L1" V 3169 6700 50  0000 C CNN
F 1 "100uH" V 3260 6700 50  0000 C CNN
F 2 "Inductor_THT:L_Toroid_Vertical_L10.0mm_W5.0mm_P5.08mm" H 3350 6700 50  0001 C CNN
F 3 "~" H 3350 6700 50  0001 C CNN
	1    3350 6700
	0    1    1    0   
$EndComp
$Comp
L Device:R R_COMP1
U 1 1 5ED14787
P 1750 6100
F 0 "R_COMP1" V 1543 6100 50  0000 C CNN
F 1 "2k2" V 1634 6100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1680 6100 50  0001 C CNN
F 3 "~" H 1750 6100 50  0001 C CNN
	1    1750 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 6700 3200 6700
Wire Wire Line
	3050 6800 3500 6800
Wire Wire Line
	3500 6800 3500 6700
$Comp
L Diode:1N5822 D1
U 1 1 5ED139F6
P 1950 7550
F 0 "D1" H 1950 7767 50  0000 C CNN
F 1 "1N5822" H 1950 7676 50  0000 C CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" H 1950 7375 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 1950 7550 50  0001 C CNN
	1    1950 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  6800 850  7250
Wire Wire Line
	850  7550 1800 7550
Wire Wire Line
	2100 7550 3500 7550
Wire Wire Line
	3500 7550 3500 6800
Connection ~ 3500 6800
Wire Wire Line
	3050 6900 3050 7250
Wire Wire Line
	3050 7250 2600 7250
Wire Wire Line
	2300 7250 850  7250
Connection ~ 850  7250
Wire Wire Line
	850  7250 850  7550
$Comp
L Device:C C3
U 1 1 5ED3BAF7
P 3200 7100
F 0 "C3" H 3315 7146 50  0000 L CNN
F 1 "0.1uF" H 3315 7055 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D10.0mm_H12.5mm_P5.00mm" H 3238 6950 50  0001 C CNN
F 3 "~" H 3200 7100 50  0001 C CNN
	1    3200 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5ED3C188
P 2150 6100
F 0 "C2" V 1898 6100 50  0000 C CNN
F 1 "0.33uF" V 1989 6100 50  0000 C CNN
F 2 "Capacitor_THT:C_Radial_D10.0mm_H12.5mm_P5.00mm" H 2188 5950 50  0001 C CNN
F 3 "~" H 2150 6100 50  0001 C CNN
	1    2150 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 6100 2000 6100
Wire Wire Line
	1600 6100 850  6100
Wire Wire Line
	850  6100 850  6700
Wire Wire Line
	3200 7250 3050 7250
Connection ~ 3050 7250
Wire Wire Line
	3200 6950 3200 6700
Connection ~ 3200 6700
Wire Wire Line
	2300 6100 3600 6100
Wire Wire Line
	3600 6100 3600 7250
Wire Wire Line
	3600 7250 3200 7250
Connection ~ 3200 7250
Wire Wire Line
	3600 6100 3600 5250
Connection ~ 3600 6100
Connection ~ 3600 5250
Wire Wire Line
	3200 6700 3200 5750
Wire Wire Line
	3200 5750 700  5750
Wire Wire Line
	700  5750 700  4400
Connection ~ 700  4400
$Comp
L Connector:Screw_Terminal_01x03 SENS_START1
U 1 1 5ED4FB52
P 4400 7650
F 0 "SENS_START1" V 4272 7830 50  0000 L CNN
F 1 "Screw_Terminal_01x03" V 4363 7830 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-3_P5.00mm" H 4400 7650 50  0001 C CNN
F 3 "~" H 4400 7650 50  0001 C CNN
	1    4400 7650
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 SENS_FIN1
U 1 1 5ED5142A
P 5750 7650
F 0 "SENS_FIN1" V 5622 7830 50  0000 L CNN
F 1 "Screw_Terminal_01x03" V 5713 7830 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-3_P5.00mm" H 5750 7650 50  0001 C CNN
F 3 "~" H 5750 7650 50  0001 C CNN
	1    5750 7650
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 6100 4400 6100
Wire Wire Line
	4400 6100 4400 7450
Wire Wire Line
	4400 6100 5750 6100
Wire Wire Line
	5750 6100 5750 7450
Connection ~ 4400 6100
Wire Wire Line
	5650 7450 5650 6200
Wire Wire Line
	5650 6200 4300 6200
Wire Wire Line
	4300 6200 4300 7450
Wire Wire Line
	4300 7450 3700 7450
Wire Wire Line
	3700 7450 3700 7650
Wire Wire Line
	3700 7650 800  7650
Wire Wire Line
	800  7650 800  7250
Wire Wire Line
	800  7250 850  7250
Connection ~ 4300 7450
$Comp
L Device:R R_START1
U 1 1 5ED58707
P 1300 5250
F 0 "R_START1" H 1370 5296 50  0000 L CNN
F 1 "470" H 1370 5205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1230 5250 50  0001 C CNN
F 3 "~" H 1300 5250 50  0001 C CNN
	1    1300 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R_FIN1
U 1 1 5ED59275
P 2300 5400
F 0 "R_FIN1" V 2093 5400 50  0000 C CNN
F 1 "470" V 2184 5400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2230 5400 50  0001 C CNN
F 3 "~" H 2300 5400 50  0001 C CNN
	1    2300 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 5400 2150 5000
Wire Wire Line
	1300 5100 1300 5000
Wire Wire Line
	2450 5400 5850 5400
Wire Wire Line
	5850 5400 5850 7450
Wire Wire Line
	4500 7450 4500 5500
Wire Wire Line
	4500 5500 1300 5500
Wire Wire Line
	1300 5500 1300 5400
Wire Wire Line
	2850 4400 3800 4400
Wire Wire Line
	3800 4400 3800 3000
Connection ~ 2850 4400
Wire Wire Line
	1500 4200 1150 4200
Wire Wire Line
	1150 4200 1150 3250
Wire Wire Line
	1150 3250 4000 3250
Wire Wire Line
	4000 3250 4000 4250
Wire Wire Line
	4000 4250 4900 4250
Wire Wire Line
	4900 4250 4900 4000
$Comp
L Connector:Conn_01x06_Female RTC1
U 1 1 5ED66EB3
P 5450 5100
F 0 "RTC1" V 5296 5348 50  0000 L CNN
F 1 "Conn_01x06_Female" V 5387 5348 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 5450 5100 50  0001 C CNN
F 3 "~" H 5450 5100 50  0001 C CNN
	1    5450 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 4900 4650 4900
Connection ~ 3600 4900
Wire Wire Line
	3600 4900 3600 4550
Wire Wire Line
	5550 4900 5550 4700
Wire Wire Line
	5550 4250 5500 4250
Wire Wire Line
	5500 4250 5500 4000
$Comp
L Device:R R_SQW1
U 1 1 5ED6D858
P 5850 4700
F 0 "R_SQW1" V 5643 4700 50  0000 C CNN
F 1 "1k" V 5734 4700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5780 4700 50  0001 C CNN
F 3 "~" H 5850 4700 50  0001 C CNN
	1    5850 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 4700 5550 4700
Connection ~ 5550 4700
Wire Wire Line
	5550 4700 5550 4250
Wire Wire Line
	6000 4700 6200 4700
Connection ~ 6200 4700
Wire Wire Line
	6200 4700 6200 4400
Wire Wire Line
	5250 4400 6200 4400
Wire Wire Line
	5250 4400 5250 4550
Connection ~ 6200 4400
Wire Wire Line
	6200 4400 6200 4000
Wire Wire Line
	5450 4900 5450 4350
Wire Wire Line
	5350 4900 5350 4300
$Comp
L Connector:Conn_01x05_Male Disp_L2
U 1 1 5ED7DE7F
P 4950 2100
F 0 "Disp_L2" V 5012 2344 50  0000 L CNN
F 1 "Conn_01x05_Male" V 5103 2344 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Horizontal" H 4950 2100 50  0001 C CNN
F 3 "~" H 4950 2100 50  0001 C CNN
	1    4950 2100
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x05_Male Disp_Line1
U 1 1 5ED7FD68
P 4200 4850
F 0 "Disp_Line1" V 4354 4562 50  0000 R CNN
F 1 "Conn_01x05_Male" V 4263 4562 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Horizontal" H 4200 4850 50  0001 C CNN
F 3 "~" H 4200 4850 50  0001 C CNN
	1    4200 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 2300 4750 2350
Wire Wire Line
	4750 2350 4400 2350
Wire Wire Line
	4400 2350 4400 1350
Connection ~ 4400 1350
Wire Wire Line
	4400 1350 8950 1350
Wire Wire Line
	4850 2300 4850 2750
Wire Wire Line
	4850 2750 4800 2750
Connection ~ 4600 2750
Wire Wire Line
	4950 2300 4950 2900
Wire Wire Line
	5150 2450 5150 2300
Wire Wire Line
	5050 2300 5050 2600
Wire Wire Line
	4400 4650 4400 4550
Wire Wire Line
	4400 4550 5250 4550
Connection ~ 5250 4550
Wire Wire Line
	5250 4550 5250 4900
Wire Wire Line
	4300 4650 4300 4550
Wire Wire Line
	4300 4550 3600 4550
Connection ~ 3600 4550
Wire Wire Line
	3600 4550 3600 3400
Wire Wire Line
	4200 4650 4200 4400
Wire Wire Line
	4200 4400 4800 4400
Wire Wire Line
	4800 4400 4800 4000
Wire Wire Line
	4500 4350 4100 4350
Wire Wire Line
	4100 4350 4100 4650
Wire Wire Line
	4500 4000 4500 4350
Wire Wire Line
	4000 4650 4000 4300
Wire Wire Line
	4000 4300 4600 4300
Wire Wire Line
	4600 4300 4600 4000
NoConn ~ 6400 3150
NoConn ~ 6300 3150
NoConn ~ 6200 3150
NoConn ~ 6100 3150
NoConn ~ 6000 3150
NoConn ~ 5900 3150
NoConn ~ 5800 3150
NoConn ~ 5200 3150
NoConn ~ 5100 3150
NoConn ~ 4800 3150
NoConn ~ 6400 4000
NoConn ~ 5600 4000
NoConn ~ 5400 4000
NoConn ~ 5300 4000
NoConn ~ 5200 4000
NoConn ~ 4700 4000
NoConn ~ 5650 4900
NoConn ~ 1550 1550
NoConn ~ 1550 1650
NoConn ~ 1550 1750
$Comp
L Connector:USB_B_Micro PWR1
U 1 1 5ECC64DE
P 1250 1550
F 0 "PWR1" H 1307 2017 50  0000 C CNN
F 1 "USB_B_Micro" H 1307 1926 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Wuerth_614105150721_Vertical_CircularHoles" H 1400 1500 50  0001 C CNN
F 3 "~" H 1400 1500 50  0001 C CNN
	1    1250 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1900 1150 1950
Wire Wire Line
	1150 1950 1150 2050
Wire Wire Line
	1150 2050 1250 2050
Connection ~ 1150 1950
Wire Wire Line
	5450 4350 5900 4350
Wire Wire Line
	5900 4350 5900 4000
Wire Wire Line
	5800 4300 5800 4000
Wire Wire Line
	5350 4300 5800 4300
NoConn ~ 5700 4000
Wire Wire Line
	4500 3050 4300 3050
Wire Wire Line
	4300 3050 4300 3700
Wire Wire Line
	4300 3700 6550 3700
Wire Wire Line
	6550 3700 6550 4150
Wire Wire Line
	6550 4150 6300 4150
Wire Wire Line
	6300 4150 6300 4000
Connection ~ 4500 3050
Wire Wire Line
	4500 3050 4500 3150
$Comp
L Connector:Conn_01x03_Male JLT1
U 1 1 5ED22EE5
P 6500 4650
F 0 "JLT1" H 6654 4462 50  0000 R CNN
F 1 "Conn_01x03_Male" H 6563 4462 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6500 4650 50  0001 C CNN
F 3 "~" H 6500 4650 50  0001 C CNN
	1    6500 4650
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x03_Male JSC1
U 1 1 5ED24AEC
P 6950 4650
F 0 "JSC1" H 7104 4462 50  0000 R CNN
F 1 "Conn_01x03_Male" H 7013 4462 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6950 4650 50  0001 C CNN
F 3 "~" H 6950 4650 50  0001 C CNN
	1    6950 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 4450 6500 4250
Wire Wire Line
	6500 4250 6000 4250
Wire Wire Line
	6000 4250 6000 4000
Wire Wire Line
	6950 4450 6950 4200
Wire Wire Line
	6950 4200 6100 4200
Wire Wire Line
	6100 4200 6100 4000
Wire Wire Line
	6200 4700 6300 4700
Wire Wire Line
	6300 4700 6300 4450
Wire Wire Line
	6300 4450 6400 4450
Wire Wire Line
	6400 4450 6400 4350
Wire Wire Line
	6400 4350 6850 4350
Wire Wire Line
	6850 4350 6850 4450
Connection ~ 6400 4450
Wire Wire Line
	6550 4150 7050 4150
Wire Wire Line
	7050 4150 7050 4450
Connection ~ 6550 4150
Wire Wire Line
	5050 2600 5600 2600
Wire Wire Line
	5600 2600 5600 3150
Wire Wire Line
	5150 2450 5500 2450
Wire Wire Line
	5500 2450 5500 3150
NoConn ~ 5700 3150
Wire Wire Line
	6600 4450 6600 4250
Wire Wire Line
	6600 4250 6550 4250
Wire Wire Line
	6550 4250 6550 4150
Wire Wire Line
	4950 2900 5300 2900
Wire Wire Line
	5300 2900 5300 3150
NoConn ~ 5400 3150
$Comp
L Connector:Conn_01x04_Male UART1
U 1 1 5EDA4F4A
P 4750 5250
F 0 "UART1" H 4904 4962 50  0000 R CNN
F 1 "Conn_01x04_Male" H 4813 4962 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4750 5250 50  0001 C CNN
F 3 "~" H 4750 5250 50  0001 C CNN
	1    4750 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5000 4000 5000 4800
Wire Wire Line
	4750 4800 4750 5050
Wire Wire Line
	5000 4800 4750 4800
Wire Wire Line
	4850 5050 4850 4850
Wire Wire Line
	4850 4850 5100 4850
Wire Wire Line
	5100 4850 5100 4000
Wire Wire Line
	4650 4900 4650 5050
Connection ~ 4650 4900
Wire Wire Line
	4650 4900 3600 4900
Wire Wire Line
	4950 5050 5050 5050
Wire Wire Line
	5050 5050 5050 5200
Wire Wire Line
	5050 5200 6200 5200
Wire Wire Line
	6200 5200 6200 5100
Connection ~ 6200 5100
Wire Wire Line
	3800 3000 4900 3000
Wire Wire Line
	4900 3000 4900 3150
$Comp
L Connector:Conn_01x03_Male CMODE1
U 1 1 5EE0E5C1
P 4400 2400
F 0 "CMODE1" V 4462 2544 50  0000 L CNN
F 1 "Conn_01x03_Male" V 4553 2544 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4400 2400 50  0001 C CNN
F 3 "~" H 4400 2400 50  0001 C CNN
	1    4400 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 2600 4300 2700
Wire Wire Line
	4300 2700 4700 2700
Wire Wire Line
	4400 2600 4400 2650
Wire Wire Line
	4400 2650 4750 2650
Wire Wire Line
	4750 2650 4750 2950
Wire Wire Line
	4750 2950 5000 2950
Wire Wire Line
	5000 2950 5000 3150
Wire Wire Line
	4500 2600 4800 2600
Wire Wire Line
	4800 2600 4800 2750
Connection ~ 4800 2750
Wire Wire Line
	4600 2750 4800 2750
Wire Wire Line
	4700 2700 4700 3150
$EndSCHEMATC
