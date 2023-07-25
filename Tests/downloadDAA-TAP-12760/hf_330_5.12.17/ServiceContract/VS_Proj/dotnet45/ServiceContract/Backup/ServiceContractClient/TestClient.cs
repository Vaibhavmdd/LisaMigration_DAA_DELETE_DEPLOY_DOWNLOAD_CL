using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ServiceModel;

namespace TestClient
{
    class TestClientImpl
    {
        public MyCalculatorClient proxy;
        public TestClientImpl()
        {
            proxy = new MyCalculatorClient("AccessMyCalculatorService");
        }
    }
    class TestClient
    {
        static void Main(string[] args)
        {
            // Create instance of clientImpl
            TestClientImpl myClient = new TestClientImpl();
            // Open proxy for communication
            myClient.proxy.Open();
            // Wait for user go ahead
            Console.WriteLine("MyCalc Client is up; press any key to send the request");
            Console.ReadKey();

            // Do the actual service invocation

            int ReturnValue1 = myClient.proxy.Multiply(2, 3);
            Console.WriteLine("The product is: " + ReturnValue1);
            int ReturnValue2 = myClient.proxy.Add(2, 3);
            Console.WriteLine("The sum is: " + ReturnValue2);
            // close the proxy
            myClient.proxy.Close();
            Console.WriteLine("Hit any key to exit the client");
            Console.ReadKey();
        }
    }
}
