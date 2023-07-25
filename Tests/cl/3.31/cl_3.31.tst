<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Wed Aug 11 17:05:29 IST 2021 -->


<TestCase name="cl_3.31" version="2">
<id>f2e92539</id>
<Documentation>Description :  Monitor running Logservice queue status:pending messages and receivers&#13;&#10;&#13;&#10;Scenario:      purge logservice queue at first&#13;&#10;               send logs with tool given to logservice queue&#13;&#10;               wait for several seconds&#13;&#10;               check the status of logservice queue : Receivers and Pending Msg, exepected result is 1 receivers&#13;&#10;               and 0 pending Msg.&#13;&#10;&#13;&#10;               &#13;&#10;Note: &#13;&#10;      The tool given now(May 16,2012) can be avaliable both for Windows platform and Linux Platform. &#13;&#10;      The usage of tool is given in its readme file. check it for details. &#13;&#10;      Also this Wiki describes how to do performance test with this tool: &#13;&#10;      http://wiki.tibco.com/DataIntWiki/logging/servicePerformance&#13;&#10;      &#13;&#10;      There are hard codes in the jmsclientsampleproperties.xml of the tool for following items that maybe changed &#13;&#10;      for new QA seting, check and update them one by one according to your actual testing Env.&#13;&#10;      &#13;&#10;             &lt;JMSClientConfiguration&gt;&#13;&#10;             &lt;ConnectionFactoryJNDIName&gt;GenericConnectionFactory&lt;/ConnectionFactoryJNDIName&gt;&#13;&#10;             &lt;ContextFactoryName&gt;com.tibco.tibjms.naming.TibjmsInitialContextFactory&lt;/ContextFactoryName&gt;&#13;&#10;             &lt;UserName&gt;admin&lt;/UserName&gt;&#13;&#10;             &lt;Password&gt;&lt;/Password&gt;&#13;&#10;             &lt;MessageQueueName&gt;cl_logservice_queue&lt;/MessageQueueName&gt;&#13;&#10;             &lt;PayloadQueueName&gt;cl_payload_queue&lt;/PayloadQueueName&gt;&#13;&#10;             &lt;ServerURL&gt;tibjmsnaming://localhost:7222&lt;/ServerURL&gt;&#13;&#10;             &lt;/JMSClientConfiguration&gt;&#13;&#10;   &#13;&#10;      &#13;&#10;      This case is designed based on amsg 3.2.0 V48.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTEwMzU4MDM1NjA=</sig>
<rootNode>purgeLogserviceQueue</rootNode>
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
    <key>lisa.continue.rsp</key>
    <value>Set in Step continue</value>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp.time</key>
    <value>Set in Step continue</value>
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
    <key>lisa.purgeLogserviceQueue.rsp</key>
    <value>Set in Step purgeLogserviceQueue</value>
    </Parameter>
    <Parameter>
    <key>lisa.purgeLogserviceQueue.rsp.time</key>
    <value>Set in Step purgeLogserviceQueue</value>
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
    <Node name="purgeLogserviceQueue" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="wait" > 

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
    <value>tcp://{{jmshost}}:{{jmsport}}</value>
    <name>Url to connect to.</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{jmsuser}}</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{jmspwd}}</value>
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


    <Node name="wait" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getEMSAdminObject1" > 

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
          next="end" > 

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
