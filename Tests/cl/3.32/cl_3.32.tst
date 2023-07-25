<?xml version="1.0" ?>

<TestCase name="cl_3.32" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="07/24/2023" host="na2devasgora03" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="07/24/2023" host="na2devasgora03" />
</meta>

<id>f2e92539</id>
<Documentation>Description :  Monitor running Logservice queue status:pending messages and receivers&#13;&#10;&#13;&#10;Scenario:      purge logservice queue at first&#13;&#10;               send logs with tool given to logservice queue&#13;&#10;               wait for several seconds&#13;&#10;               check the status of logservice queue : Receivers and Pending Msg, exepected result is 1 receivers&#13;&#10;               and 0 pending Msg.&#13;&#10;&#13;&#10;               &#13;&#10;Note: &#13;&#10;      The tool given now(May 16,2012) can be avaliable both for Windows platform and Linux Platform. &#13;&#10;      The usage of tool is given in its readme file. check it for details. &#13;&#10;      Also this Wiki describes how to do performance test with this tool: &#13;&#10;      http://wiki.tibco.com/DataIntWiki/logging/servicePerformance&#13;&#10;      &#13;&#10;      There are hard codes in the jmsclientsampleproperties.xml of the tool for following items that maybe changed &#13;&#10;      for new QA seting, check and update them one by one according to your actual testing Env.&#13;&#10;      &#13;&#10;             &lt;JMSClientConfiguration&gt;&#13;&#10;             &lt;ConnectionFactoryJNDIName&gt;GenericConnectionFactory&lt;/ConnectionFactoryJNDIName&gt;&#13;&#10;             &lt;ContextFactoryName&gt;com.tibco.tibjms.naming.TibjmsInitialContextFactory&lt;/ContextFactoryName&gt;&#13;&#10;             &lt;UserName&gt;admin&lt;/UserName&gt;&#13;&#10;             &lt;Password&gt;&lt;/Password&gt;&#13;&#10;             &lt;MessageQueueName&gt;cl_logservice_queue&lt;/MessageQueueName&gt;&#13;&#10;             &lt;PayloadQueueName&gt;cl_payload_queue&lt;/PayloadQueueName&gt;&#13;&#10;             &lt;ServerURL&gt;tibjmsnaming://localhost:7222&lt;/ServerURL&gt;&#13;&#10;             &lt;/JMSClientConfiguration&gt;&#13;&#10;   &#13;&#10;      &#13;&#10;      This case is designed based on amsg 3.2.0 V48.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPS00MTY0Njc5Mw==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Properties Reader from data.txt" log=""
          type="com.itko.lisa.test.PropReaderNode" 
          version="1" 
          uid="6EE816282A0911EEB2BC506B8DD34562" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="purgePayloadQueue" > 

<file>{{LISA_TC_PATH}}/data.txt</file>
<charset>UTF-8</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="purgePayloadQueue" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="f2e92539-purgePayloadQueue" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="wait" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/PurgeQueue.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
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
</SaveProps>
    </Node>


    <Node name="wait" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="f2e92539-wait" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="getEMSAdminObject1" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>fail</onAbort>
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
          uid="f2e92539-getEMSAdminObject1" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="checkPayLoadserviceQueueReceiver" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getEMSAdminObject1.rsp</valueToFilterKey>
      <prop>EMSAdmin</prop>
      </Filter>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/GetEMSAdminObject.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>fail</onAbort>
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
    </Node>


    <Node name="checkPayLoadserviceQueueReceiver" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="f2e92539-checkPayLoadserviceQueueReceiver" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="getEMSAdminObject2" > 


      <!-- Assertions -->
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

<onerror>fail</onerror>
<script>import com.tibco.tibjms.admin.*;&#13;&#10;&#13;&#10;String errorMsg = &quot;EMS Error&quot;; // Do not modify, assertions on this string might exist.&#13;&#10;int ReceiversCount = -1;&#13;&#10;&#13;&#10;try {&#13;&#10;    QueueInfo Qinfo = EMSAdmin.getQueue(Payloadservice_queueName);  &#13;&#10;    ReceiversCount = Qinfo.getReceiverCount() ;&#13;&#10;    &#13;&#10;}&#13;&#10;catch (Exception e) {&#13;&#10;    msg = errorMsg + &quot;: &quot; + e.getClass().getName() + &quot;. &quot; + e.getMessage();&#13;&#10;}&#13;&#10;finally {&#13;&#10;    EMSAdmin.close();&#13;&#10;    return ReceiversCount;&#13;&#10;    &#13;&#10;}</script>
    </Node>


    <Node name="getEMSAdminObject2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="f2e92539-getEMSAdminObject2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="checkPayLoadserviceQueuePendingMsg" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getEMSAdminObject2.rsp</valueToFilterKey>
      <prop>EMSAdmin</prop>
      </Filter>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/GetEMSAdminObject.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>fail</onAbort>
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
    </Node>


    <Node name="checkPayLoadserviceQueuePendingMsg" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="f2e92539-checkPayLoadserviceQueuePendingMsg" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
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

<onerror>fail</onerror>
<script>import com.tibco.tibjms.admin.*;&#13;&#10;&#13;&#10;String errorMsg = &quot;EMS Error&quot;; // Do not modify, assertions on this string might exist.&#13;&#10;long MsgCount_Payloadservice = -1;&#13;&#10;try {&#13;&#10;    QueueInfo Qinfo = EMSAdmin.getQueue(Payloadservice_queueName);  &#13;&#10;    MsgCount_Payloadservice = Qinfo.getPendingMessageCount();&#13;&#10;}&#13;&#10;catch (Exception e) {&#13;&#10;    msg = errorMsg + &quot;: &quot; + e.getClass().getName() + &quot;. &quot; + e.getMessage();&#13;&#10;}&#13;&#10;finally {&#13;&#10;    EMSAdmin.close();&#13;&#10;    return MsgCount_Payloadservice;&#13;&#10;}</script>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="6A0EC9232A0911EEB2BC506B8DD34562" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="f2e92539-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="f2e92539-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
