Description :  Create a JMS Appender and a File Appenders,
               Configure a logger "com.tibco" for deployed DAA, By default Additivity is in "false" status.no log will be recorded by
               root logger. now set Additivity as "true" for logger "com.tibco", log will be recorded by root logger also.
               "com.tibco" logger was configured with  JMS appender and root logger was configured with file appender
               Check INFO, Warn, Error level log with JMS appender, check the logs in root logger's appender

Scenario:      SOAP HTTP <-> Java