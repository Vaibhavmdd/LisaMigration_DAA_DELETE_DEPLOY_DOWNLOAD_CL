Description :   Test ClearText Logging for tracing     
                CL-2292:
                Admin UI provides the Add Appender capability to an existing logger which CLI doesn't have. 
                We should be able to add appender to an existing logger through CLI.
                
                steps:(3.36, 3.36_2 are dependency to each other)
                3.36
                configure 1 Logger: "com.tibco" for Application
                Create ClearText Appender for Application, configure to logger, invoke to check the logs
                3.36_2 
                Create a new appender,and add new appender the logger "com.tibco",deploy logging
                Invoke the DAA to log and check the appender for logs
                
Scenario:       SOAP BT(HTTP) <-> Java1 <-> Java2<-> Java3
MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal

