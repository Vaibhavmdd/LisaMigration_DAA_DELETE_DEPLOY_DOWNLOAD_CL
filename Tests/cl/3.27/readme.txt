Description :  Verify the ticket CL-1992 in AMX 3.1.2 HF-1
               CL-1992:  When there are more than 100k logrecords in the logservice database, the node that 
               runs logservice no longer goes out of memory with default heap size setting when the logservice 
               is restarted.

Scenario:      Generate 110K pieces of log with each one size is 1 byte with tool given ,
               wait and let logservice seed these logs into DB.
               restart logservice(stop and then start it)
               check the status of logservice : Receivers and Pending Msg, exepected result is 1 receivers and 0 pending Msg.
                      If ture, SystemNode does not OOM , because logservice and payload service is running on systemNode, they are fine
                      If false, the case will fail, need to debug for more details.
               check the systemNode's log for OOM keyword "out of memory".if not found, it is fine
               
Note: 
      The tool given now(May 10,2012) is only for Windows platform. need to enhance it for linux/Unix platform
      The usage of tool is given in its readme file. check it for details. 
      Also This Wiki describes how to do performance test with this tool: 
      http://wiki.tibco.com/DataIntWiki/logging/servicePerformance
      
      There are hard codes in the jmsclientsampleproperties.xml of the tool for following items that maybe changed 
      for new QA seting, check and update them one by one according to your actual testing Env.
      
             <JMSClientConfiguration>
             <ConnectionFactoryJNDIName>GenericConnectionFactory</ConnectionFactoryJNDIName>
             <ContextFactoryName>com.tibco.tibjms.naming.TibjmsInitialContextFactory</ContextFactoryName>
             <UserName>admin</UserName>
             <Password></Password>
             <MessageQueueName>cl_logservice_queue</MessageQueueName>
             <PayloadQueueName>cl_payload_queue</PayloadQueueName>
             <ServerURL>tibjmsnaming://localhost:7222</ServerURL>
             </JMSClientConfiguration>
      
      This case need 11K pieces of log for testing, it will cosume about 20 minutes to let logservice seed them compeletly into DB,
      Please be patient.
      
      This case is designed based on amsg 3.1.5.