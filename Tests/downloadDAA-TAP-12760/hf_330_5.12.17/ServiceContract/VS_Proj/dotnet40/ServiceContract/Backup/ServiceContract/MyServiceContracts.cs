using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ServiceContractProject;
using System.ServiceModel;
using System.Net.Security;
using System.ServiceModel.Description;
//using System.Runtime.Serialization;
//using global::com.tibco.matrix.clr;


namespace ServiceContractProject
{
    class MyServiceContractsImpl : IScientificCalculator
    {
        public int Add(int arg1, int arg2)
        {
            Console.WriteLine("Adding {0} and {1}", arg1, arg2);
            return arg1 + arg2;
        }
        public int Multiply(int arg1, int arg2)
        {
            Console.WriteLine("Multiplying {0} and {1}", arg1, arg2);
            return arg1 * arg2;
        }
    }
    class MyServiceContracts
    {
        static void Main(string[] args)
        {
            Console.WriteLine("MyCalculator service is Up!");
            // lets create a host here
            ServiceHost host = new ServiceHost(typeof(MyServiceContractsImpl));
            
            foreach (ServiceEndpoint sc in host.Description.Endpoints)
            {
                Console.WriteLine("\nServiceContract: Name = {0}", sc.Contract.Name);
               // Funcs.ts.TraceInformation("\nServiceContract: Name = {0}", sc.Contract.Name);
                Console.WriteLine("\nServiceContract: Namespace = {0}", sc.Contract.Namespace);
               // Funcs.ts.TraceInformation("\nServiceContract: Namespace = {0}", sc.Contract.Namespace);
                Console.WriteLine("\nServiceContract: ConfigurationName = {0}", sc.Contract.ConfigurationName);
               // Funcs.ts.TraceInformation("\nServiceContract: ConfigurationName = {0}", sc.Contract.ConfigurationName);
                Console.WriteLine("\nServiceContract: HasProtectionLevel = {0}", sc.Contract.HasProtectionLevel);
               // Funcs.ts.TraceInformation("\nServiceContract: HasProtectionLevel = {0}", sc.Contract.HasProtectionLevel);
                Console.WriteLine("\nServiceContract: ProtectionLevel = {0}", sc.Contract.ProtectionLevel.ToString());
               // Funcs.ts.TraceInformation("\nServiceContract: ProtectionLevel = {0}", sc.Contract.ProtectionLevel.ToString());
                Console.WriteLine("\nServiceContract: SessionMode = {0}", sc.Contract.SessionMode.ToString());
               // Funcs.ts.TraceInformation("\nServiceContract: SessionMode = {0}", sc.Contract.SessionMode.ToString());
            }

            // lets open the host
            host.Open();

            Console.ReadKey();
            // lets close the host when the user enters a key
            host.Close();
            Console.WriteLine("MyCalculator service is Down.");
        }
    }
}
