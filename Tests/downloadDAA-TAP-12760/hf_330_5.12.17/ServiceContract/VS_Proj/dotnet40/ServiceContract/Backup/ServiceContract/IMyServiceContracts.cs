using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ServiceModel;
using System.Net.Security;

namespace ServiceContractProject
{
    [ServiceContract]
    interface ISimpleCalculator
    {
        [OperationContract]
        int Add(int arg1, int arg2);
    }

    [ServiceContract(Name = "IMyCalculator", SessionMode = SessionMode.Allowed, Namespace = "http://qa.tibco.com/", ConfigurationName = "MyCalculatorConfiguration")]
    interface IScientificCalculator : ISimpleCalculator
    {
        [OperationContract]
        int Multiply(int arg1, int arg2);
    }
        
}
