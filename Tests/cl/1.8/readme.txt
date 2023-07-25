Description :   Test CBE Logging for DevNode
                
                Note by Leveon:
                Configure a CBE appender for DevNode root logger
                Deploy a DAA without any logging configuration, invoke the DAA to generate logs. these logs should be capatured by
                root logger of DevNode on which DAA was deployed. check logs from CBE Log file to verify.
                
Scenario:       SOAP HTTP <-> Java