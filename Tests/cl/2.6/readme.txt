Description :   Test ClearText Logging for DevNode for rolling up , see AMRP-3718
                
              
                Configure a ClearText appender for QaNode "com.tibco" logger, define its size is 1M (1024K), set its level TRACE ,max index up 5
                Stop and then start up the QA Node to generate logs
                check logs file name from CBE Log file to verify rolling up. it should be CL02_06_rollingup.log,CL02_06_rollingup.log.1,....
                
