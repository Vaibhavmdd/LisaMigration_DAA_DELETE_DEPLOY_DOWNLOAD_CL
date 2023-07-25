<?xml version="1.0" ?>

<TestCase name="DeleteTopic" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/05/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/05/2023" host="na2devasgaks01" />
</meta>

<id>bc11aed5</id>
<Documentation>Deletes a Topic on EMS Server.&#13;&#10;Make sure the TIBCO EMS Admin jar is in the LISA classpath.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9LTk2MzAwMjM0Nw==</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>url</key>
    <value>tcp://localhost:7222</value>
    <name>Url to connect to.</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>admin</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value></value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>topicName</key>
    <value></value>
    <name>Topic name to be deleted</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>EMSAdmin</key>
    <value></value>
    <name>EMSAdmin</name>
    </Parameter>
    <Parameter>
    <key>lisa.deleteTopic.rsp</key>
    <value></value>
    <name>lisa.deleteTopic.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.deleteTopic.rsp.time</key>
    <value></value>
    <name>lisa.deleteTopic.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value></value>
    <name>lisa.end.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value></value>
    <name>lisa.end.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value></value>
    <name>lisa.fail.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value></value>
    <name>lisa.fail.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.getEMSAdminObject.rsp</key>
    <value></value>
    <name>lisa.getEMSAdminObject.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getEMSAdminObject.rsp.time</key>
    <value></value>
    <name>lisa.getEMSAdminObject.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp</key>
    <value></value>
    <name>lisa.log.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value></value>
    <name>lisa.log.rsp.time</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="getEMSAdminObject" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="bc11aed5-getEMSAdminObject" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="log" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getEMSAdminObject.rsp</valueToFilterKey>
      <prop>EMSAdmin</prop>
      </Filter>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/GetEMSAdminObject.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>{{url}}</value>
    <name>Url to connect to.</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{username}}</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{password}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="bc11aed5-log" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="deleteTopic" > 

<log>Deleting Topic &quot;{{topicName}}&quot; ...</log>
    </Node>


    <Node name="deleteTopic" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="bc11aed5-deleteTopic" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>EMS Topic deletion has thrown Exception</log>
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

<onerror>abort</onerror>
<script>import com.tibco.tibjms.admin.*;&#13;&#10;&#13;&#10;String errorMsg = &quot;EMS Error&quot;; // Do not modify, assertions on this string might exist.&#13;&#10;String successMsg = &quot;EMS Topic deletion success&quot;;&#13;&#10;String msg = &quot;&quot;;&#13;&#10;String topicName = testExec.parseInState(topicName);&#13;&#10;&#13;&#10;try {&#13;&#10;    EMSAdmin.destroyTopic(topicName);&#13;&#10;    msg = successMsg;&#13;&#10;}&#13;&#10;catch (Exception e) {&#13;&#10;    msg = errorMsg + &quot;: &quot; + e.getClass().getName() + &quot;. &quot; + e.getMessage();&#13;&#10;}&#13;&#10;finally {&#13;&#10;    EMSAdmin.close();&#13;&#10;    return msg;&#13;&#10;}</script>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="4DAAE6048CDD11EDAFE8506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="bc11aed5-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="bc11aed5-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
