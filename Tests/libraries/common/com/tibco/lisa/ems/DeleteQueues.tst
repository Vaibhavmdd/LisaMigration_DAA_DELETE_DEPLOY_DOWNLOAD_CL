<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Mon Apr 16 17:49:04 PDT 2012 -->


<TestCase name="DeleteQueues" version="2">
<id>bc11aed5</id>
<Documentation>Deletes Queues on EMS Server.&#13;&#10;Make sure the TIBCO EMS Admin jar is in the LISA classpath.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS03NDAyNDUwNzQ=</sig>
<rootNode>getEMSAdminObject</rootNode>
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
    <key>trustedCertificate</key>
    <value>{{TIBCO_EMS_HOME}}/samples/certs/server_root.cert.pem</value>
    <name>Trusted Certificate for ssl connection</name>
    </Parameter>
    <Parameter>
    <key>pattern</key>
    <value></value>
    <name>Pattern indicating which queues to delete</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.log.rsp</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.getEMSAdminObject.rsp</key>
    <value>Set in Step getEMSAdminObject</value>
    </Parameter>
    <Parameter>
    <key>lisa.getEMSAdminObject.rsp.time</key>
    <value>Set in Step getEMSAdminObject</value>
    </Parameter>
    <Parameter>
    <key>EMSAdmin</key>
    <value>Set in Step getEMSAdminObject</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteQueues.rsp</key>
    <value>Set in Step deleteQueues</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteQueues.rsp.time</key>
    <value>Set in Step deleteQueues</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
</resultState>

<Configurations>
<Configuration>
<name>default</name>
<external>false</external>
<props>
</props>
</Configuration>
</Configurations>
    <Node name="getEMSAdminObject" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="log" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
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
    <value>{{url}}</value>
    <name>Url to connect to: tcp or ssl</name>
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
    <Parameter>
    <key>trustedCertificate</key>
    <value>{{trustedCertificate}}</value>
    <name>Trusted certificates to connect with ssl.</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getEMSAdminObject.rsp</valueToFilterKey>
      <prop>EMSAdmin</prop>
      </Filter>

    </Node>


    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deleteQueues" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
      <log>Deleting Queues &quot;{{pattern}}&quot; ...</log>
    </Node>


    <Node name="deleteQueues" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>import com.tibco.tibjms.admin.*;&#13;&#10;&#13;&#10;String errorMsg = &quot;EMS Error&quot;; // Do not modify, assertions on this string might exist.&#13;&#10;String successMsg = &quot;EMS Queue deletion success&quot;;&#13;&#10;String msg = &quot;&quot;;&#13;&#10;String pattern = testExec.parseInState(pattern);&#13;&#10;&#13;&#10;try {&#13;&#10;    EMSAdmin.destroyQueues(pattern);&#13;&#10;    msg = successMsg;&#13;&#10;}&#13;&#10;catch (Exception e) {&#13;&#10;    msg = errorMsg + &quot;: &quot; + e.getClass().getName() + &quot;. &quot; + e.getMessage();&#13;&#10;}&#13;&#10;finally {&#13;&#10;    EMSAdmin.close();&#13;&#10;    return msg;&#13;&#10;}</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>EMS Queue deletion has thrown Exception</log>
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

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
    </Node>


</TestCase>
