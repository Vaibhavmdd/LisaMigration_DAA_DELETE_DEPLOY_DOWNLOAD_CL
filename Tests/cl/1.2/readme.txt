Description :   Test CBE-based Logging.
                Create CBE Appender for Application, check correlationID, Context ID, parentContext ID in CBE log with 
                Debug Level.check correlationID, Context ID, parentContext ID in CBE log, there should exists in log.
                But this case can not check the value of each ID because they are created each time by random.
                
Scenario:       SOAP BT(HTTP) <-> Java1 -> Java2-> Java3

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal

