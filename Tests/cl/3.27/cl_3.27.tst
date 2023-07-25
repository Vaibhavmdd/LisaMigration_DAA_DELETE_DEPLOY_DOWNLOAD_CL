<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Wed Aug 11 16:18:01 IST 2021 -->


<TestCase name="cl_3.27" version="2">
<id>f2e92539</id>
<Documentation>Description :  Verify the ticket CL-1992 in AMX 3.1.2 HF-1&#13;&#10;               CL-1992:  When there are more than 100k logrecords in the logservice database, the node that &#13;&#10;               runs logservice no longer goes out of memory with default heap size setting when the logservice &#13;&#10;               is restarted.&#13;&#10;&#13;&#10;Scenario:      Generate 110K pieces of log with each one size is 1 byte with tool given ,&#13;&#10;               wait and let logservice seed these logs into DB.&#13;&#10;               restart logservice(stop and then start it)&#13;&#10;               check the status of logservice : Receivers and Pending Msg, exepected result is 1 receivers and 0 pending Msg.&#13;&#10;                      If ture, SystemNode does not OOM , because logservice and payload service is running on systemNode, they are fine&#13;&#10;                      If false, the case will fail, need to debug for more details.&#13;&#10;               check the systemNode&apos;s log for OOM keyword &quot;out of memory&quot;.if not found, it is fine&#13;&#10;               &#13;&#10;Note: &#13;&#10;      The tool given now(May 10,2012) is only for Windows platform. need to enhance it for linux/Unix platform&#13;&#10;      The usage of tool is given in its readme file. check it for details. &#13;&#10;      Also this Wiki describes how to do performance test with this tool: &#13;&#10;      http://wiki.tibco.com/DataIntWiki/logging/servicePerformance&#13;&#10;      &#13;&#10;      There are hard codes in the jmsclientsampleproperties.xml of the tool for following items that maybe changed &#13;&#10;      for new QA seting, check and update them one by one according to your actual testing Env.&#13;&#10;      &#13;&#10;             &lt;JMSClientConfiguration&gt;&#13;&#10;             &lt;ConnectionFactoryJNDIName&gt;GenericConnectionFactory&lt;/ConnectionFactoryJNDIName&gt;&#13;&#10;             &lt;ContextFactoryName&gt;com.tibco.tibjms.naming.TibjmsInitialContextFactory&lt;/ContextFactoryName&gt;&#13;&#10;             &lt;UserName&gt;admin&lt;/UserName&gt;&#13;&#10;             &lt;Password&gt;&lt;/Password&gt;&#13;&#10;             &lt;MessageQueueName&gt;cl_logservice_queue&lt;/MessageQueueName&gt;&#13;&#10;             &lt;PayloadQueueName&gt;cl_payload_queue&lt;/PayloadQueueName&gt;&#13;&#10;             &lt;ServerURL&gt;tibjmsnaming://localhost:7222&lt;/ServerURL&gt;&#13;&#10;             &lt;/JMSClientConfiguration&gt;&#13;&#10;      &#13;&#10;      This case need 110K pieces of log for testing, it will cosume about 20 minutes to let logservice seed them compeletly into DB,&#13;&#10;      Please be patient.&#13;&#10;      &#13;&#10;      This case is designed based on amsg 3.1.5.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTE0OTQzMzk2NTg=</sig>
<rootNode>purgeCLQueue</rootNode>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>hsql-dbDriver</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>orcl-dbUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>orcl-dbPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hsql-dbUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>orcl-dbUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hsql-dbUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>orcl-dbDriver</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hsql-dbPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyDBData1.rsp.time</key>
    <value>Set in Step copyDBData1</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyDBData2.rsp</key>
    <value>Set in Step copyDBData2</value>
    </Parameter>
    <Parameter>
    <key>lisa.command.pid_handle</key>
    <value>Set in Step CreateRT</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyDBData1.rsp</key>
    <value>Set in Step copyDBData1</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyDBData2.rsp.time</key>
    <value>Set in Step copyDBData2</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.VerifyPayloadLog.rsp</key>
    <value>Set in Step VerifyPayloadLog</value>
    </Parameter>
    <Parameter>
    <key>lisa.VerifyPayloadLog.rsp.time</key>
    <value>Set in Step VerifyPayloadLog</value>
    </Parameter>
    <Parameter>
    <key>lisa.getEMSAdminObject1.rsp</key>
    <value>Set in Step getEMSAdminObject1</value>
    </Parameter>
    <Parameter>
    <key>lisa.getEMSAdminObject1.rsp.time</key>
    <value>Set in Step getEMSAdminObject1</value>
    </Parameter>
    <Parameter>
    <key>lisa.getEMSAdminObject2.rsp</key>
    <value>Set in Step getEMSAdminObject2</value>
    </Parameter>
    <Parameter>
    <key>lisa.getEMSAdminObject2.rsp.time</key>
    <value>Set in Step getEMSAdminObject2</value>
    </Parameter>
    <Parameter>
    <key>EMSAdmin2</key>
    <value>Set in Step getEMSAdminObject2</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkLogserviceQueueReceiver.rsp</key>
    <value>Set in Step checkLogserviceQueueReceiver</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkLogserviceQueueReceiver.rsp.time</key>
    <value>Set in Step checkLogserviceQueueReceiver</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkLogserviceQueuePendingMsg.rsp</key>
    <value>Set in Step checkLogserviceQueuePendingMsg</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkLogserviceQueuePendingMsg.rsp.time</key>
    <value>Set in Step checkLogserviceQueuePendingMsg</value>
    </Parameter>
    <Parameter>
    <key>lisa.SendLogPayloadToQueue.rsp</key>
    <value>Set in Step SendLogPayloadToQueue</value>
    </Parameter>
    <Parameter>
    <key>lisa.SendLogPayloadToQueue.rsp.time</key>
    <value>Set in Step SendLogPayloadToQueue</value>
    </Parameter>
    <Parameter>
    <key>lisa.getEMSAdminObject4.rsp</key>
    <value>Set in Step getEMSAdminObject4</value>
    </Parameter>
    <Parameter>
    <key>lisa.getEMSAdminObject4.rsp.time</key>
    <value>Set in Step getEMSAdminObject4</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkPayLoadserviceQueuePendingMsg.rsp</key>
    <value>Set in Step checkPayLoadserviceQueuePendingMsg</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkPayLoadserviceQueuePendingMsg.rsp.time</key>
    <value>Set in Step checkPayLoadserviceQueuePendingMsg</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifySystemNodeLog.rsp</key>
    <value>Set in Step verifySystemNodeLog</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifySystemNodeLog.rsp.time</key>
    <value>Set in Step verifySystemNodeLog</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait20Minutes_logservicetoseed.rsp</key>
    <value>Set in Step wait20Minutes_logservicetoseed</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait20Minutes_logservicetoseed.rsp.time</key>
    <value>Set in Step wait20Minutes_logservicetoseed</value>
    </Parameter>
    <Parameter>
    <key>lisa.StopStartLogservice.rsp</key>
    <value>Set in Step StopStartLogservice</value>
    </Parameter>
    <Parameter>
    <key>lisa.StopStartLogservice.rsp.time</key>
    <value>Set in Step StopStartLogservice</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait.rsp</key>
    <value>Set in Step wait</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait.rsp.time</key>
    <value>Set in Step wait</value>
    </Parameter>
    <Parameter>
    <key>EMSAdmin</key>
    <value>Set in Step getEMSAdminObject1</value>
    </Parameter>
    <Parameter>
    <key>lisa.getEMSAdminObject3.rsp</key>
    <value>Set in Step getEMSAdminObject3</value>
    </Parameter>
    <Parameter>
    <key>lisa.getEMSAdminObject3.rsp.time</key>
    <value>Set in Step getEMSAdminObject3</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkPayLoadserviceQueueReceiver.rsp</key>
    <value>Set in Step checkPayLoadserviceQueueReceiver</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkPayLoadserviceQueueReceiver.rsp.time</key>
    <value>Set in Step checkPayLoadserviceQueueReceiver</value>
    </Parameter>
    <Parameter>
    <key>lisa.purgeCLQueue1.rsp</key>
    <value>Set in Step purgeCLQueue1</value>
    </Parameter>
    <Parameter>
    <key>lisa.purgeCLQueue1.rsp.time</key>
    <value>Set in Step purgeCLQueue1</value>
    </Parameter>
    <Parameter>
    <key>lisa.purgeCLQueue2.rsp</key>
    <value>Set in Step purgeCLQueue2</value>
    </Parameter>
    <Parameter>
    <key>lisa.purgeCLQueue2.rsp.time</key>
    <value>Set in Step purgeCLQueue2</value>
    </Parameter>
</resultState>

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{LISA_TC_PATH}}/config.txt</file>
      </Companion>

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{LISA_TC_PATH}}/data{{g11n}}.txt</file>
      </Companion>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/amxdata.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/amxbuild.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

<Configurations>
<Configuration>
<name>default</name>
<external>true</external>
<doc>E:\trunk_331\tests\func\runtime\cl\2node_orcl.config</doc>
</Configuration>
<Configuration>
<name>CDC</name>
<external>true</external>
<doc>{{TIBCO_AMX_TEST_FUNC_RT}}/cl/1machine_2node_cdc{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>2node_SQLServer</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../1machine_2node_sqlsvr{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>2node_oracle</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../1machine_2node_orcl{{g11n}}.config</doc>
</Configuration>
</Configurations>
    <Node name="purgeCLQueue" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="SendLogPayloadToQueue" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/PurgeQueue.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>continue</onFail>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>tcp://{{emshost}}:{{emsport}}</value>
    <name>Url to connect to.</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{emsuser}}</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{emspwd}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>queueName</key>
    <value>{{commonlogging.logservice.emsqueue}}</value>
    <name>Queue name to be purged</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="SendLogPayloadToQueue" log="SendLogPayloadToQueue with tool"
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="wait20Minutes_logservicetoseed" > 

<graphx>10</graphx>
<graphy>10</graphy>
<cmd>start.bat,start.sh</cmd>
<basedir>{{LISA_TC_PATH}}/testService_1.0.2</basedir>
<toNode>fail</toNode>
<exceptionNode>fail</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>false</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>true</execShell>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node name="wait20Minutes_logservicetoseed" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="StopStartLogservice" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>1200</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>1200</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="StopStartLogservice" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="wait" > 

<graphx>1885</graphx>
<graphy>4145</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value></value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.amx.buildfile.tc}}</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/stopstartlogservice.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>stopstart.logservice</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}},timeout={{timeout}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{TIBCO_JAVA_HOME}}/jre/lib</value>
    <name>ANT_OPTS environment variable. Optional. Ex: -Xms128m -Xmx512m -XX:PermSize=256m</name>
    </Parameter>
    <Parameter>
    <key>additionalAntCmdLineArgs</key>
    <value></value>
    <name>Additional ant commandline options. Optional. See ant --help for these options.</name>
    </Parameter>
    <Parameter>
    <key>additionalClasspath</key>
    <value></value>
    <name>Additional classpath to add to Ant. Optional.</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>true</value>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for Response" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="wait" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifySystemNodeLog" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>6</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>6</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="verifySystemNodeLog" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="purgeCLQueue1" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{TIBCO_CONFIG_HOME}}/tibcohost/{{host.instance}}/data_3.2.x/nodes/SystemNode/logs/SystemNode.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value></value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Check for OOMmsg log" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{OOMMsg}}&apos; in systemNode&apos;s  log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{OOMmsg}}</param>
</CheckResult>

    </Node>


    <Node name="purgeCLQueue1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="purgeCLQueue2" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/PurgeQueue.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>continue</onFail>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>tcp://{{emshost}}:{{emsport}}</value>
    <name>Url to connect to.</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{emsuser}}</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{emspwd}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>queueName</key>
    <value>{{commonlogging.logservice.emsqueue}}</value>
    <name>Queue name to be purged</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="purgeCLQueue2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getEMSAdminObject1" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/PurgeQueue.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>continue</onFail>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>tcp://{{emshost}}:{{emsport}}</value>
    <name>Url to connect to.</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{emsuser}}</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{emspwd}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>queueName</key>
    <value>{{commonlogging.payload.emsqueue}}</value>
    <name>Queue name to be purged</name>
    </Parameter>
</Parameters>
<SaveProps>
<save>lisa.fail.rsp.time</save>
</SaveProps>
    </Node>


    <Node name="getEMSAdminObject1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="checkLogserviceQueueReceiver" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/GetEMSAdminObject.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>tcp://{{emshost}}:{{emsport}}</value>
    <name>Url to connect to: tcp or ssl</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{emsuser}}</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{emspwd}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>trustedCertificate</key>
    <value>{{TIBCO_EMS_HOME}}/samples/certs/server_root.cert.pem</value>
    <name>Trusted certificates to connect with ssl.</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getEMSAdminObject1.rsp</valueToFilterKey>
      <prop>EMSAdmin</prop>
      </Filter>

    </Node>


    <Node name="checkLogserviceQueueReceiver" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getEMSAdminObject2" > 

<graphx>250</graphx>
<graphy>250</graphy>
<onerror>fail</onerror>
<script>import com.tibco.tibjms.admin.*;&#13;&#10;&#13;&#10;String errorMsg = &quot;EMS Error&quot;; // Do not modify, assertions on this string might exist.&#13;&#10;int ReceiversCount = -1;&#13;&#10;&#13;&#10;try {&#13;&#10;    QueueInfo Qinfo = EMSAdmin.getQueue(Logservice_queueName);  &#13;&#10;    ReceiversCount = Qinfo.getReceiverCount() ;&#13;&#10;    &#13;&#10;}&#13;&#10;catch (Exception e) {&#13;&#10;    msg = errorMsg + &quot;: &quot; + e.getClass().getName() + &quot;. &quot; + e.getMessage();&#13;&#10;}&#13;&#10;finally {&#13;&#10;    EMSAdmin.close();&#13;&#10;    return ReceiversCount;&#13;&#10;    &#13;&#10;}</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Check log service queue has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert120" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>EMS Error</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check log service queue&apos;s receiver" type="com.itko.lisa.test.CheckResultContains">
<log>message has blocked in logging service queue</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>1</param>
</CheckResult>

    </Node>


    <Node name="getEMSAdminObject2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="checkLogserviceQueuePendingMsg" > 

<graphx>370</graphx>
<graphy>370</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/GetEMSAdminObject.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>tcp://{{emshost}}:{{emsport}}</value>
    <name>Url to connect to: tcp or ssl</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{emsuser}}</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{emspwd}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>trustedCertificate</key>
    <value>{{TIBCO_EMS_HOME}}/samples/certs/server_root.cert.pem</value>
    <name>Trusted certificates to connect with ssl.</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getEMSAdminObject2.rsp</valueToFilterKey>
      <prop>EMSAdmin</prop>
      </Filter>

    </Node>


    <Node name="checkLogserviceQueuePendingMsg" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getEMSAdminObject3" > 

<graphx>490</graphx>
<graphy>490</graphy>
<onerror>fail</onerror>
<script>import com.tibco.tibjms.admin.*;&#13;&#10;&#13;&#10;String errorMsg = &quot;EMS Error&quot;; // Do not modify, assertions on this string might exist.&#13;&#10;long MsgCount_logservice = -1;&#13;&#10;try {&#13;&#10;    QueueInfo Qinfo = EMSAdmin.getQueue(Logservice_queueName);  &#13;&#10;    MsgCount_logservice = Qinfo.getPendingMessageCount();&#13;&#10;}&#13;&#10;catch (Exception e) {&#13;&#10;    msg = errorMsg + &quot;: &quot; + e.getClass().getName() + &quot;. &quot; + e.getMessage();&#13;&#10;}&#13;&#10;finally {&#13;&#10;    EMSAdmin.close();&#13;&#10;    return MsgCount_logservice;&#13;&#10;}</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Check log service queue has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert120" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>EMS Error</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check log service queue" type="com.itko.lisa.test.CheckResultContains">
<log>message has blocked in logging service queue</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>0</param>
</CheckResult>

    </Node>


    <Node name="getEMSAdminObject3" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="checkPayLoadserviceQueueReceiver" > 

<graphx>370</graphx>
<graphy>370</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/GetEMSAdminObject.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>tcp://{{emshost}}:{{emsport}}</value>
    <name>Url to connect to: tcp or ssl</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{emsuser}}</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{emspwd}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>trustedCertificate</key>
    <value>{{TIBCO_EMS_HOME}}/samples/certs/server_root.cert.pem</value>
    <name>Trusted certificates to connect with ssl.</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getEMSAdminObject3.rsp</valueToFilterKey>
      <prop>EMSAdmin</prop>
      </Filter>

    </Node>


    <Node name="checkPayLoadserviceQueueReceiver" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getEMSAdminObject4" > 

<graphx>250</graphx>
<graphy>250</graphy>
<onerror>fail</onerror>
<script>import com.tibco.tibjms.admin.*;&#13;&#10;&#13;&#10;String errorMsg = &quot;EMS Error&quot;; // Do not modify, assertions on this string might exist.&#13;&#10;int ReceiversCount = -1;&#13;&#10;&#13;&#10;try {&#13;&#10;    QueueInfo Qinfo = EMSAdmin.getQueue(Payloadservice_queueName);  &#13;&#10;    ReceiversCount = Qinfo.getReceiverCount();&#13;&#10;    &#13;&#10;}&#13;&#10;catch (Exception e) {&#13;&#10;    msg = errorMsg + &quot;: &quot; + e.getClass().getName() + &quot;. &quot; + e.getMessage();&#13;&#10;}&#13;&#10;finally {&#13;&#10;    EMSAdmin.close();&#13;&#10;    return ReceiversCount;&#13;&#10;    &#13;&#10;}</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Check log service queue has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert120" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>EMS Error</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check log service queue&apos;s receiver" type="com.itko.lisa.test.CheckResultContains">
<log>message has blocked in logging service queue</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>1</param>
</CheckResult>

    </Node>


    <Node name="getEMSAdminObject4" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="checkPayLoadserviceQueuePendingMsg" > 

<graphx>370</graphx>
<graphy>370</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/GetEMSAdminObject.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>tcp://{{emshost}}:{{emsport}}</value>
    <name>Url to connect to: tcp or ssl</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{emsuser}}</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{emspwd}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>trustedCertificate</key>
    <value>{{TIBCO_EMS_HOME}}/samples/certs/server_root.cert.pem</value>
    <name>Trusted certificates to connect with ssl.</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getEMSAdminObject4.rsp</valueToFilterKey>
      <prop>EMSAdmin</prop>
      </Filter>

    </Node>


    <Node name="checkPayLoadserviceQueuePendingMsg" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>250</graphx>
<graphy>250</graphy>
<onerror>fail</onerror>
<script>import com.tibco.tibjms.admin.*;&#13;&#10;&#13;&#10;String errorMsg = &quot;EMS Error&quot;; // Do not modify, assertions on this string might exist.&#13;&#10;long MsgCount_payload = -1;&#13;&#10;&#13;&#10;try {&#13;&#10;    QueueInfo Qinfo = EMSAdmin.getQueue(Payloadservice_queueName);  &#13;&#10;    MsgCount_payload = Qinfo.getPendingMessageCount();&#13;&#10;    &#13;&#10;}&#13;&#10;catch (Exception e) {&#13;&#10;    msg = errorMsg + &quot;: &quot; + e.getClass().getName() + &quot;. &quot; + e.getMessage();&#13;&#10;}&#13;&#10;finally {&#13;&#10;    EMSAdmin.close();&#13;&#10;    return MsgCount_payload;&#13;&#10;    &#13;&#10;}</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Check log service queue has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert120" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>EMS Error</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check log service queue&apos;s receiver" type="com.itko.lisa.test.CheckResultContains">
<log>message has blocked in logging service queue</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>0</param>
</CheckResult>

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>10</graphx>
<graphy>10</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>130</graphx>
<graphy>130</graphy>
    </Node>


</TestCase>
