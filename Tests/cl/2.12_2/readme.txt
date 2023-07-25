Description :   Test ClearText Logging for tracing     
                CL-2292:
                Admin UI provides the Add Appender capability to an existing logger which CLI doesn't have. 
                We should be able to add appender to an existing logger through CLI.
                
                steps:(2.12, 2.12_2 are dependency to each other)
                2.12
                create and configure two ClearText Appender to logger "com.tibco" for Application level,
                invoke to check the logs
                
                2.12_2 
                delete one of the two appender , check the log to verify result

                
Scenario:       SOAP BT(HTTP) <-> Java1 <-> Java2<-> Java3
MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal