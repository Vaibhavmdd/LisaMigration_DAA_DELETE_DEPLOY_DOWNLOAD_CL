Description :   Test ClearText Logging for tracing     
                CL-2292:
                Admin UI provides the Add Appender capability to an existing logger which CLI doesn't have. 
                We should be able to add appender to an existing logger through CLI.
                
                steps:
                create and configure ClearText Appender to existing logger for SystemNode level, check files
                to make sure this appender added successfully, delete this appender in both SystemNode and 
                Logging Appender page ,check the "node-log4j.xml" to verify results.