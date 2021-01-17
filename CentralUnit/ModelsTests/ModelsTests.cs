using Microsoft.VisualStudio.TestTools.UnitTesting;
using Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;

namespace ModelsTests
{
    [TestClass]
    public class ModelsTests
    {
        [TestMethod]
        public void RaceSummary_ReadAndWrite_ShouldBeSymmetric()
        {

            EnteredEvent e = new EnteredEvent(new DateTime(2000, 1, 1), new Rider("Martijn", new Beacon(new byte[] { 0, 0, 0, 0, 0, 1 }, 1)));

            RaceSummary subject = new RaceSummary(new List<RaceEvent> { e });

            MemoryStream stream = new MemoryStream();

            subject.WriteSummary(stream);

            stream.Seek(0, SeekOrigin.Begin);

            RaceSummary parsed = RaceSummary.ReadSummary(stream);
        }

        [TestMethod]
        public void Test()
        {
            List<A> subject = new List<A>();

            subject.Add(new A { Field1 = "a" });
            subject.Add(new B { Field1 = "b", Field2 = "b" });

            string deserialized = JsonConvert.SerializeObject(subject);

            List<A> parsed = JsonConvert.DeserializeObject<List<A>>(deserialized);
        }
    }
}
