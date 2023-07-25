Description :   Test ClearText Logging for tracing     
                CL-2292:
                Admin UI provides the Add Appender capability to an existing logger which CLI doesn't have. 
                We should be able to add appender to an existing logger through CLI.
                
                steps:
                create and configure ClearText Appender "qaFileLogAppender3_40" to existing logger "root"
                for Host level, check files "hpa-log4j.xml" and "CL3_40_Text.log" to verify results