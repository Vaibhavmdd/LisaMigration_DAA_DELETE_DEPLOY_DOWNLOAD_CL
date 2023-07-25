Description :  Create a CBE Appender and a File Appenders,
               Pluggable mechanism for IT/BT to register their contributed loggers. 
               See details in http://jira.tibco.com/browse/AMX-7750
               Define 2 logger names with 
                   <scact:applicationLogger>appLoggerQA</scact:applicationLogger>
                    <scact:nodeLogger>nodeLoggerQA</scact:nodeLogger>
              appLoggerQA is for Application level and nodeLoggerQA is for Node Level      
              configure Appender for defined "appLoggerQA" logger and Check INFO, Warn, Error level log with CBE Appender log

Scenario:      SOAP HTTP <-> Java

Note: this case is for application Level testing, and another case will cover NodeLevel testing