Description :   Test ClearText Logging for tracing CL-1989.Allow uer delete Logger through CLI 
                configure 2 Loggers: "com.tibco" and "qa.com.tibco" for Application
                Create ClearText Appender for Application, configure to loggers
                Delete the logger "qa.com.tibco"
                Invoke the DAA to log and check the appender for logger "com.tibco"
                

Scenario:       SOAP BT(HTTP) <-> Java1 <-> Java2<-> Java3

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal

