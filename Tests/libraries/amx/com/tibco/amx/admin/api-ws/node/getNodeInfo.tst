<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Fri Aug 29 13:47:25 PDT 2014 -->


<TestCase name="getNodeInfo" version="2">
<id>a070f506</id>
<Documentation>Get Node Info giving envName.&#13;&#10;If none optional parameter is provied, return the RI status.&#13;&#10;If the expectedStatus is provide, return the Success/Fail to find Node with expectedStatus.&#13;&#10;If the expectedScope is provied, return the Success/Fail to find Node with expectedScope.&#13;&#10;If both optional parameters are provied, return the Success/Fail to find Node with expectedVersion and expectedScope.&#13;&#10;</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTEzMzU0MzE0ODY=</sig>
<rootNode>getEnvIDByName</rootNode>
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
    <key>expectedStatus</key>
    <value></value>
    <name>Optional,return Sucess/Failure to find matched node</name>
    </Parameter>
    <Parameter>
    <key>expectedVersion</key>
    <value></value>
    <name>Optional,return Sucess/Failure to find matched node</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.Check_to_Return.rsp</key>
    <value>Set in Step Check_to_Return</value>
    </Parameter>
    <Parameter>
    <key>lisa.Check_to_Return.rsp.time</key>
    <value>Set in Step Check_to_Return</value>
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
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.getEnvIDByName.rsp</key>
    <value>Set in Step getEnvIDByName</value>
    </Parameter>
    <Parameter>
    <key>lisa.getEnvIDByName.rsp.time</key>
    <value>Set in Step getEnvIDByName</value>
    </Parameter>
    <Parameter>
    <key>env_id</key>
    <value>Set in Step getEnvIDByName</value>
    </Parameter>
    <Parameter>
    <key>nodeStatus</key>
    <value>Set in Step getResourceInstanceInfo</value>
    </Parameter>
    <Parameter>
    <key>nodeVersion</key>
    <value>Set in Step getResourceInstanceInfo</value>
    </Parameter>
    <Parameter>
    <key>lisa.getNodesInfo.rsp</key>
    <value>Set in Step getNodesInfo</value>
    </Parameter>
    <Parameter>
    <key>lisa.getNodesInfo.rsp.time</key>
    <value>Set in Step getNodesInfo</value>
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
    <Node name="getEnvIDByName" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getNodesInfo" > 

<graphx>10</graphx>
<graphy>10</graphy>
<url>{{adminURL}}/amxadministrator.httpbasic/services/EnvService.EnvServiceHttpSoap11Endpoint/</url>
<action>urn:getId</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmVudj0iaHR0cDovL2Vudi5hbXguYXBpLmFkbWluLmFt
Zi50aWJjby5jb20iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQog
ICAgICA8ZW52OmdldElkPg0KICAgICAgICAgPCEtLU9wdGlvbmFsOi0tPg0KICAgICAgICAgPGVu
djpwYXJhbTA+e3tlbnZOYW1lfX08L2VudjpwYXJhbTA+DQogICAgICA8L2VudjpnZXRJZD4NCiAg
IDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
    <Parameter>
    <key>Authorization</key>
    <value>Basic cm9vdDp0</value>
    </Parameter>
</customHTTPHeaderInfo>

      <!-- Filters -->
      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.getEnvIDByName.rsp</valueToFilterKey>
<prop>env_id</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getIdResponse&apos;]/*[local-name()=&apos;return&apos;])</xpathq>
      </Filter>

    </Node>


    <Node name="getNodesInfo" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="Check_to_Return" > 

<graphx>0</graphx>
<graphy>121</graphy>
<url>{{adminURL}}/amxadministrator.httpbasic/services/NodeService</url>
<action>urn:getNodesInEnvironment</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOm5vZGU9Imh0dHA6Ly9ub2RlLmFteC5hcGkuYWRtaW4u
YW1mLnRpYmNvLmNvbSIgeG1sbnM6eHNkPSJodHRwOi8vdHlwZXMuY29yZS5hcGkuYWRtaW4uYW1m
LnRpYmNvLmNvbS94c2QiPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+
DQogICAgICA8bm9kZTpnZXROb2Rlc0luRW52aXJvbm1lbnQ+DQogICAgICAgICA8IS0tT3B0aW9u
YWw6LS0+DQogICAgICAgICA8bm9kZTplbnZJZGVudGlmaWVyPg0KICAgICAgICAgICAgPCEtLU9w
dGlvbmFsOi0tPg0KICAgICAgICAgICAgPHhzZDppZD57e2Vudl9pZH19PC94c2Q6aWQ+DQogICAg
ICAgICAgICA8IS0tT3B0aW9uYWw6LS0+DQogICAgICAgICAgICA8eHNkOm5hbWU+e3tlbnZOYW1l
fX08L3hzZDpuYW1lPg0KICAgICAgICAgPC9ub2RlOmVudklkZW50aWZpZXI+DQogICAgICAgICA8
IS0tT3B0aW9uYWw6LS0+DQogICAgICAgICA8bm9kZTppbnB1dD4NCiAgICAgICAgICAgIDwhLS1P
cHRpb25hbDotLT4NCg0KICAgICAgICAgPC9ub2RlOmlucHV0Pg0KICAgICAgPC9ub2RlOmdldE5v
ZGVzSW5FbnZpcm9ubWVudD4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3Bl
Pg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
    <Parameter>
    <key>Authorization</key>
    <value>Basic cm9vdDp0</value>
    </Parameter>
</customHTTPHeaderInfo>

      <!-- Filters -->
      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.getNodesInfo.rsp</valueToFilterKey>
<prop>nodeStatus</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getNodesInEnvironmentResponse&apos;]/*[local-name()=&apos;return&apos;]/*[local-name()=&apos;nodeSummary&apos;][*[local-name()=&apos;name&apos;]=&apos;{{nodeName}}&apos;]/*[local-name()=&apos;state&apos;])</xpathq>
      </Filter>

      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.getNodesInfo.rsp</valueToFilterKey>
<prop>nodeVersion</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getNodesInEnvironmentResponse&apos;]/*[local-name()=&apos;return&apos;]/*[local-name()=&apos;nodeSummary&apos;][*[local-name()=&apos;name&apos;]=&apos;{{nodeName}}&apos;]/*[local-name()=&apos;nodeTypeVersion&apos;])</xpathq>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert113" type="com.itko.lisa.test.CheckResultContains">
<log>Found Environment {{envName}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Environment {{envName}} was not found</param>
</CheckResult>

    </Node>


    <Node name="Check_to_Return" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>130</graphx>
<graphy>130</graphy>
<onerror>fail</onerror>
<script>String responseOK = &quot;Success to find expected Node with &quot;;&#13;&#10;String responseFail = &quot;Failure to find expected Node with &quot;;&#13;&#10;realStatus = testExec.getStateObject(&quot;nodeStatus&quot;);&#13;&#10;realVersion= testExec.getStateObject(&quot;nodeVersion&quot;);&#13;&#10;&#13;&#10;if ((nodeName.length()==0) || (envName.length()==0))&#13;&#10;{&#13;&#10;    return &quot;Failure to find Node with empty parameters&quot;;&#13;&#10;}&#13;&#10;//Env is not there, thus node is returned as expected.&#13;&#10;if(realStatus ==null) &#13;&#10;{&#13;&#10;    return &quot;Failure to find Node with given nodeName=&quot; + nodeName +&quot;, envName=&quot; + envName;&#13;&#10;}&#13;&#10;if((nodeStatus.length()==0) || (nodeStatus.length()==0))&#13;&#10;{&#13;&#10;    return &quot;Failure to find Node with given nodeName=&quot; + nodeName +&quot;, envName=&quot; + envName;;&#13;&#10;}&#13;&#10;&#13;&#10;&#13;&#10;String sReturn= &quot;&quot;;&#13;&#10;if (expectedStatus == null &amp;&amp; expectedVersion == null)&#13;&#10;{&#13;&#10;&#9;//System.out.println(&quot;Optinal parameter is not provied.&quot;);&#13;&#10;&#9;sReturn = &quot;Node status is &quot; + realStatus;&#13;&#10;&#9;return sReturn;&#13;&#10;}&#13;&#10;// Both parameters are provied.&#13;&#10;else if (expectedStatus != null &amp;&amp; expectedVersion != null) &#13;&#10;{&#13;&#10;&#9;//get matched Ri with expected status and scope&#13;&#10;    if ((expectedStatus.equalsIgnoreCase(realStatus))&#13;&#10;&#9;&#9;&#9;&amp;&amp; (expectedVersion.equalsIgnoreCase(realVersion))) &#13;&#10;    {&#13;&#10;&#9;&#9;sReturn = responseOK + &quot;status as &quot; + realStatus&#13;&#10;&#9;&#9;&#9;&#9;+ &quot; and version as &quot; + realVersion;&#13;&#10;&#9;&#9;return sReturn;&#13;&#10;&#9;} &#13;&#10;    else //one/or both of the para is/are empty.&#13;&#10;    {&#13;&#10;        //Both expectedStatus and expectedVersion are empty.&#13;&#10;&#9;&#9;if(expectedStatus.length()==0 &amp;&amp; expectedVersion.length()==0)&#13;&#10;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;sReturn = &quot;Node status is &quot; + realStatus;&#13;&#10;&#9;&#9;&#9;return sReturn;&#13;&#10;&#9;&#9;}&#13;&#10;        //expectedStatus is empty.&#13;&#10;&#9;&#9;else if(expectedStatus.length()==0) //status is not provided.){&#13;&#10;&#9;&#9;{&#13;&#10;            //Find matched the scope, ignore the status.&#13;&#10;&#9;&#9;&#9;if (expectedVersion.equalsIgnoreCase(realVersion)) {&#13;&#10;&#9;&#9;&#9;&#9;sReturn = responseOK + &quot;version as &quot; + realVersion;&#13;&#10;&#9;&#9;&#9;} else {&#13;&#10;&#9;&#9;&#9;&#9;sReturn = responseFail + &quot;version as &quot; + realVersion&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedVersion + &quot;]&quot;;&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;return sReturn;&#13;&#10;&#9;    }&#13;&#10;        //expectedVersion is empty.&#13;&#10;        else if(expectedVersion.length()==0) //expected version is not provided.)&#13;&#10;&#9;    {&#13;&#10;            //Find matched the status, ignore the Scope.&#13;&#10;&#9;&#9;&#9;if (expectedStatus.equalsIgnoreCase(realStatus)) {&#13;&#10;&#9;&#9;&#9;&#9;sReturn = responseOK + &quot;status as &quot; + realStatus;&#13;&#10;&#9;&#9;&#9;} else {&#13;&#10;&#9;&#9;&#9;&#9;sReturn = responseFail + &quot;status as &quot; + realStatus&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedStatus + &quot;]&quot;;&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;return sReturn;&#13;&#10;&#9;    }&#13;&#10;        //others, failed to find with expected status and scope&#13;&#10;&#9;&#9;sReturn = responseFail + &quot;real status as &quot; + realStatus&#13;&#10;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedStatus + &quot;]&quot;&#13;&#10;&#9;&#9;&#9;&#9;+ &quot; and real version as &quot; + realVersion + &quot;[expected as &quot;&#13;&#10;&#9;&#9;&#9;&#9;+ expectedVersion + &quot;]&quot;;&#13;&#10;&#9;&#9;return sReturn;&#13;&#10;&#9;}&#13;&#10;} &#13;&#10;// expectedStatus is provied, expectedVersion is not provided.&#13;&#10;else if (expectedStatus != null) // Optional status is provided.&#13;&#10;{&#13;&#10;&#9;if (expectedStatus.equalsIgnoreCase(realStatus)) {&#13;&#10;&#9;&#9;sReturn = responseOK + &quot;status as &quot; + realStatus;&#13;&#10;&#9;} else {&#13;&#10;&#9;&#9;sReturn = responseFail + &quot;status as &quot; + realStatus&#13;&#10;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedStatus + &quot;]&quot;;&#13;&#10;&#9;}&#13;&#10;&#9;return sReturn;&#13;&#10;&#13;&#10;} &#13;&#10;// expectedVersion is provied, expectedStatus is not provided.&#13;&#10;else if (expectedVersion != null) // Optional Scversionope is provided.&#13;&#10;{&#13;&#10;&#9;if (expectedVersion.equalsIgnoreCase(realVersion)) {&#13;&#10;&#9;&#9;sReturn = responseOK + &quot;version as &quot; + realVersion;&#13;&#10;&#9;} else {&#13;&#10;&#9;&#9;sReturn = responseFail + &quot;version as &quot; + realVersion&#13;&#10;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedVersion + &quot;]&quot;;&#13;&#10;&#9;}&#13;&#10;&#9;return sReturn;&#13;&#10;}&#13;&#10;return sReturn;&#13;&#10;  &#13;&#10;</script>

      <!-- Result Elements -->
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

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>122</graphx>
<graphy>244</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>250</graphx>
<graphy>250</graphy>
    </Node>


</TestCase>
