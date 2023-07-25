Description :  CL-1800:"ExpirationTimeinDB" set in JMS appender UI should be applied to both logservice and 
               Payload service. No need to set expiration time separately for them
               
               Purge Logservice queue
               Set properties of Logservice Application: cl_logservice_timeinterval =1 and cl_logservice_largeMessagesToPayload= true
               Create A JMS Appender to log message with payload data, set expiration time =1
               Deploy DAA, invoke it to generate Logs with payload data.
               Verify the logs and payload key/URL
               wait for  4000 seconds , that is more than expiration time 1 hour set within JMS Appender
               Verify the logs and payload key/URL , they should be deleted after expiration time
               undeploy the DAA, Clear up ENV.

Scenario:      SOAP HTTP <-> Java

MEP: In-Out 
SOAP Version: 1.1 
SOAP Style/Encoding: Document/Literal