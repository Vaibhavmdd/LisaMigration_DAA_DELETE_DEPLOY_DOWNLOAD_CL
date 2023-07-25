Description :   Test ClearText Logging for tracing     
                CL-2292:
                Admin UI provides the Add Appender capability to an existing logger which CLI doesn't have. 
                We should be able to add appender to an existing logger through CLI.
                
                steps:
                1.createAppender
                2.confLogging
                3.deployLogging
                4.verifyLoggingFile
                5.deleteAppender
                6.re-deployLoggig
                7.re-verifyLoggingFile
                the appender for logs