<?xml version="1.0" ?>

<TestCase name="getNodeID" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="03/02/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="03/05/2023" host="na2devasgaks01" />
</meta>

<id>a070f506</id>
<Documentation>Get Node ID giving envName and nodeName</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9MTQyODA0Mjg2Mg==</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>envName</key>
    <value></value>
    <name>Name for environment</name>
    </Parameter>
    <Parameter>
    <key>nodeName</key>
    <value></value>
    <name>Name of Node</name>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value>Value</value>
    <name>Admin URL</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>env_id</key>
    <value></value>
    <name>env_id</name>
    </Parameter>
    <Parameter>
    <key>lisa.Check_to_Return.rsp</key>
    <value></value>
    <name>lisa.Check_to_Return.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.Check_to_Return.rsp.time</key>
    <value></value>
    <name>lisa.Check_to_Return.rsp.time</name>
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
    <key>lisa.getEnvIDByName.rsp</key>
    <value></value>
    <name>lisa.getEnvIDByName.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getEnvIDByName.rsp.time</key>
    <value></value>
    <name>lisa.getEnvIDByName.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.getNodesInfo.rsp</key>
    <value></value>
    <name>lisa.getNodesInfo.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getNodesInfo.rsp.time</key>
    <value></value>
    <name>lisa.getNodesInfo.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>nodeID</key>
    <value></value>
    <name>nodeID</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="getEnvIDByName" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="a070f506-getEnvIDByName" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="getNodesInfo" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.getEnvIDByName.rsp</valueToFilterKey>
<prop>env_id</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getIdResponse&apos;]/*[local-name()=&apos;return&apos;])</xpathq>
      </Filter>

<url>{{adminURL}}/amxadministrator.httpbasic/services/EnvService.EnvServiceHttpSoap11Endpoint/</url>
<action>urn:getId</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmVudj0iaHR0cDovL2Vudi5hbXguYXBpLmFkbWluLmFtZi50aWJjby5jb20iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8ZW52OmdldElkPg0KICAgICAgICAgPCEtLU9wdGlvbmFsOi0tPg0KICAgICAgICAgPGVudjpwYXJhbTA+e3tlbnZOYW1lfX08L2VudjpwYXJhbTA+DQogICAgICA8L2VudjpnZXRJZD4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
    <Parameter>
    <key>Authorization</key>
    <value>Basic cm9vdDp0</value>
    </Parameter>
</customHTTPHeaderInfo>
    </Node>


    <Node name="getNodesInfo" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="a070f506-getNodesInfo" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="Check_to_Return" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.getNodesInfo.rsp</valueToFilterKey>
<prop>nodeID</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getNodesInEnvironmentResponse&apos;]/*[local-name()=&apos;return&apos;]/*[local-name()=&apos;nodeSummary&apos;][*[local-name()=&apos;name&apos;]=&apos;{{nodeName}}&apos;]/*[local-name()=&apos;id&apos;])</xpathq>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert113" type="com.itko.lisa.test.CheckResultContains">
<log>Found Environment {{envName}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Environment {{envName}} was not found</param>
</CheckResult>

<url>{{adminURL}}/amxadministrator.httpbasic/services/NodeService</url>
<action>urn:getNodesInEnvironment</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOm5vZGU9Imh0dHA6Ly9ub2RlLmFteC5hcGkuYWRtaW4uYW1mLnRpYmNvLmNvbSIgeG1sbnM6eHNkPSJodHRwOi8vdHlwZXMuY29yZS5hcGkuYWRtaW4uYW1mLnRpYmNvLmNvbS94c2QiPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8bm9kZTpnZXROb2Rlc0luRW52aXJvbm1lbnQ+DQogICAgICAgICA8IS0tT3B0aW9uYWw6LS0+DQogICAgICAgICA8bm9kZTplbnZJZGVudGlmaWVyPg0KICAgICAgICAgICAgPCEtLU9wdGlvbmFsOi0tPg0KICAgICAgICAgICAgPHhzZDppZD57e2Vudl9pZH19PC94c2Q6aWQ+DQogICAgICAgICAgICA8IS0tT3B0aW9uYWw6LS0+DQogICAgICAgICAgICA8eHNkOm5hbWU+e3tlbnZOYW1lfX08L3hzZDpuYW1lPg0KICAgICAgICAgPC9ub2RlOmVudklkZW50aWZpZXI+DQogICAgICAgICA8IS0tT3B0aW9uYWw6LS0+DQogICAgICAgICA8bm9kZTppbnB1dD4NCiAgICAgICAgICAgIDwhLS1PcHRpb25hbDotLT4NCg0KICAgICAgICAgPC9ub2RlOmlucHV0Pg0KICAgICAgPC9ub2RlOmdldE5vZGVzSW5FbnZpcm9ubWVudD4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
    <Parameter>
    <key>Authorization</key>
    <value>Basic cm9vdDp0</value>
    </Parameter>
</customHTTPHeaderInfo>
    </Node>


    <Node name="Check_to_Return" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="a070f506-Check_to_Return" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert141" type="com.itko.lisa.test.CheckResultRegEx">
<log>Assert [Assert141] fired true of type Result as String Contains Expression</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Failure*</param>
</CheckResult>

<onerror>abort</onerror>
<script>String responseOK = &quot;Success to find expected Node ID with &quot;;&#13;&#10;String responseFail = &quot;Failure to find expected Node ID with &quot;;&#13;&#10;myNodeID = testExec.getStateObject(&quot;nodeID&quot;);&#13;&#10;&#13;&#10;if ((nodeName.length()==0) || (envName.length()==0))&#13;&#10;{&#13;&#10;    return &quot;Failure to get Node ID with empty parameters&quot;;&#13;&#10;}&#13;&#10;//Env is not there, thus node is returned as expected.&#13;&#10;if(myNodeID ==null) &#13;&#10;{&#13;&#10;    return &quot;Failure to get Node ID with given nodeName=&quot; + nodeName +&quot;, envName=&quot; + envName;&#13;&#10;}&#13;&#10;if(myNodeID.length()==0)&#13;&#10;{&#13;&#10;    return &quot;Failure to get Node ID with given nodeName=&quot; + nodeName +&quot;, envName=&quot; + envName;;&#13;&#10;}else&#13;&#10;{&#13;&#10;    return myNodeID;&#13;&#10;}&#13;&#10;</script>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="DB0AF7D2B99811EDA4C8506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="a070f506-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="a070f506-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
