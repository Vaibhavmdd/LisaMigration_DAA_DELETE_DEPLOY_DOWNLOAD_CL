<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Fri Aug 29 13:42:33 PDT 2014 -->


<TestCase name="getResourceInstanceInfo" version="2">
<id>a070f506</id>
<Documentation>Get Host Status by giving host name.&#13;&#10;If none optional parameter is provied, return the RI status.&#13;&#10;If the expectedStatus is provide, return the Success/Fail to find RI with expectedStatus.&#13;&#10;If the expectedScope is provied, return the Success/Fail to find RI with expectedScope.&#13;&#10;If both optional parameters are provied, return the Success/Fail to find RI with expectedVersion and expectedScope.&#13;&#10;</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0xODc1OTA1Mjc3</sig>
<rootNode>getHostIdByName</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>hostName</key>
    <value>SystemHost</value>
    <name>Name for host</name>
    </Parameter>
    <Parameter>
    <key>riName</key>
    <value>1TIBCO ActiveMatrix Internal HTTP Connector Resource</value>
    <name>Name of RI</name>
    </Parameter>
    <Parameter>
    <key>expectedStatus</key>
    <value></value>
    <name>Optional,return Sucess/Failure to find matched RI</name>
    </Parameter>
    <Parameter>
    <key>expectedScope</key>
    <value></value>
    <name>Optional,return Sucess/Failure to find matched RI</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.getHostIdByName.rsp</key>
    <value>Set in Step getHostIdByName</value>
    </Parameter>
    <Parameter>
    <key>lisa.getHostIdByName.rsp.time</key>
    <value>Set in Step getHostIdByName</value>
    </Parameter>
    <Parameter>
    <key>myHostID</key>
    <value>Set in Step getHostIdByName</value>
    </Parameter>
    <Parameter>
    <key>lisa.getResourceInstanceInfo.rsp</key>
    <value>Set in Step getResourceInstanceInfo</value>
    </Parameter>
    <Parameter>
    <key>lisa.getResourceInstanceInfo.rsp.time</key>
    <value>Set in Step getResourceInstanceInfo</value>
    </Parameter>
    <Parameter>
    <key>riStatus</key>
    <value>Set in Step getResourceInstanceInfo</value>
    </Parameter>
    <Parameter>
    <key>riScope</key>
    <value>Set in Step getResourceInstanceInfo</value>
    </Parameter>
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
</resultState>

<Configurations>
<Configuration>
<name>default</name>
<external>false</external>
<props>
</props>
</Configuration>
</Configurations>
    <Node name="getHostIdByName" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getResourceInstanceInfo" > 

<graphx>10</graphx>
<graphy>10</graphy>
<url>{{adminURL}}/amxadministrator.httpbasic/services/HostService.HostServiceHttpSoap11Endpoint/</url>
<action>urn:getHosts</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJv
ZHkvPg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
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
        <valueToFilterKey>lisa.getHostIdByName.rsp</valueToFilterKey>
<prop>myHostID</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getHostsResponse&apos;]/*[local-name()=&apos;return&apos;][*[local-name()=&apos;name&apos;]=&apos;{{hostName}}&apos;]/*[local-name()=&apos;id&apos;])</xpathq>
      </Filter>

    </Node>


    <Node name="getResourceInstanceInfo" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="Check_to_Return" > 

<graphx>0</graphx>
<graphy>121</graphy>
<url>{{adminURL}}/amxadministrator.httpbasic/services/ResourceInstanceService</url>
<action>urn:getInstancesOnHost</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnJlcz0iaHR0cDovL3Jlc2luc3RhbmNlLmFteC5hcGku
YWRtaW4uYW1mLnRpYmNvLmNvbSIgeG1sbnM6eHNkPSJodHRwOi8vdHlwZXMuY29yZS5hcGkuYWRt
aW4uYW1mLnRpYmNvLmNvbS94c2QiPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52
OkJvZHk+DQogICAgICA8cmVzOmdldEluc3RhbmNlc09uSG9zdD4NCiAgICAgICAgIDwhLS1PcHRp
b25hbDotLT4NCiAgICAgICAgIDxyZXM6aG9zdElkPg0KICAgICAgICAgICAgPCEtLU9wdGlvbmFs
Oi0tPg0KICAgICAgICAgICAgPHhzZDppZD57e215SG9zdElEfX08L3hzZDppZD4NCiAgICAgICAg
ICAgIDwhLS1PcHRpb25hbDotLT4NCiAgICAgICAgICAgIDwhLS14c2Q6bmFtZT5TeXN0ZW1Ib3N0
PC94c2Q6bmFtZS0tPg0KICAgICAgICAgPC9yZXM6aG9zdElkPg0KICAgICAgPC9yZXM6Z2V0SW5z
dGFuY2VzT25Ib3N0Pg0KICAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
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
        <valueToFilterKey>lisa.getResourceInstanceInfo.rsp</valueToFilterKey>
<prop>riStatus</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getInstancesOnHostResponse&apos;]/*[local-name()=&apos;return&apos;][*[local-name()=&apos;name&apos;]=&apos;{{riName}}&apos;]/*[local-name()=&apos;state&apos;])</xpathq>
      </Filter>

      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.getResourceInstanceInfo.rsp</valueToFilterKey>
<prop>riScope</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getInstancesOnHostResponse&apos;]/*[local-name()=&apos;return&apos;][*[local-name()=&apos;name&apos;]=&apos;{{riName}}&apos;]/*[local-name()=&apos;scopeDisplayName&apos;])</xpathq>
      </Filter>

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
<script>String responseOK = &quot;Success to find expected ResourceInstance with &quot;;&#13;&#10;String responseFail = &quot;Failure to find expected ResourceInstance with &quot;;&#13;&#10;realStatus = testExec.getStateObject(&quot;riStatus&quot;);&#13;&#10;realScope= testExec.getStateObject(&quot;riScope&quot;);&#13;&#10;&#13;&#10;if ((riName.length()==0) || (hostName.length()==0))&#13;&#10;{&#13;&#10;    return &quot;Failure to find ResourceInstane with empty parameters&quot;;&#13;&#10;}&#13;&#10;if(realStatus ==null)&#13;&#10;{&#13;&#10;  return &quot;Failure to find ResourceInstane with given riName=&quot; +riName;&#13;&#10;}&#13;&#10;if(realStatus.length()==0 || realScope.length()==0)&#13;&#10;{&#13;&#10;    return &quot;Failure to find ResourceInstane with given riName=&quot; +riName;&#13;&#10;}&#13;&#10;String sReturn= &quot;&quot;;&#13;&#10;if (expectedStatus == null &amp;&amp; expectedScope == null)&#13;&#10;{&#13;&#10;&#9;//System.out.println(&quot;Optinal parameter is not provied.&quot;);&#13;&#10;&#9;sReturn = &quot;ResourceInstane status is &quot; + realStatus;&#13;&#10;&#9;return sReturn;&#13;&#10;}&#13;&#10;// Both parameters are provied.&#13;&#10;else if (expectedStatus != null &amp;&amp; expectedScope != null) &#13;&#10;{&#13;&#10;&#9;//get matched Ri with expected status and scope&#13;&#10;    if ((expectedStatus.equalsIgnoreCase(realStatus))&#13;&#10;&#9;&#9;&#9;&amp;&amp; (expectedScope.equalsIgnoreCase(realScope))) &#13;&#10;    {&#13;&#10;&#9;&#9;sReturn = responseOK + &quot;status as &quot; + realStatus&#13;&#10;&#9;&#9;&#9;&#9;+ &quot; and scope as &quot; + realScope;&#13;&#10;&#9;&#9;return sReturn;&#13;&#10;&#9;} &#13;&#10;    else //one/or both of the para is/are empty.&#13;&#10;    {&#13;&#10;        //Both expectedStatus and expectedScope are empty.&#13;&#10;&#9;&#9;if(expectedStatus.length()==0 &amp;&amp; expectedScope.length()==0)&#13;&#10;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;sReturn = &quot;ResourceInstane status is &quot; + realStatus;&#13;&#10;&#9;&#9;&#9;return sReturn;&#13;&#10;&#9;&#9;}&#13;&#10;        //expectedStatus is empty.&#13;&#10;&#9;&#9;else if(expectedStatus.length()==0) //status is not provided.){&#13;&#10;&#9;&#9;{&#13;&#10;            //Find matched the scope, ignore the status.&#13;&#10;&#9;&#9;&#9;if (expectedScope.equalsIgnoreCase(realScope)) {&#13;&#10;&#9;&#9;&#9;&#9;sReturn = responseOK + &quot;scope as &quot; + realScope;&#13;&#10;&#9;&#9;&#9;} else {&#13;&#10;&#9;&#9;&#9;&#9;sReturn = responseFail + &quot;scope as &quot; + realScope&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedScope + &quot;]&quot;;&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;return sReturn;&#13;&#10;&#9;    }&#13;&#10;        //expectedScope is empty.&#13;&#10;        else if(expectedScope.length()==0) //expected scope is not provided.)&#13;&#10;&#9;    {&#13;&#10;            //Find matched the status, ignore the Scope.&#13;&#10;&#9;&#9;&#9;if (expectedStatus.equalsIgnoreCase(realStatus)) {&#13;&#10;&#9;&#9;&#9;&#9;sReturn = responseOK + &quot;status as &quot; + realStatus;&#13;&#10;&#9;&#9;&#9;} else {&#13;&#10;&#9;&#9;&#9;&#9;sReturn = responseFail + &quot;status as &quot; + realStatus&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedStatus + &quot;]&quot;;&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;return sReturn;&#13;&#10;&#9;    }&#13;&#10;        //others, failed to find with expected status and scope&#13;&#10;&#9;&#9;sReturn = responseFail + &quot;real status as &quot; + realStatus&#13;&#10;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedStatus + &quot;]&quot;&#13;&#10;&#9;&#9;&#9;&#9;+ &quot; and real scope as &quot; + realScope + &quot;[expected as &quot;&#13;&#10;&#9;&#9;&#9;&#9;+ expectedScope + &quot;]&quot;;&#13;&#10;&#9;&#9;return sReturn;&#13;&#10;&#9;}&#13;&#10;} &#13;&#10;// expectedStatus is provied, expectedScope is not provided.&#13;&#10;else if (expectedStatus != null) // Optional status is provided.&#13;&#10;{&#13;&#10;&#9;if (expectedStatus.equalsIgnoreCase(realStatus)) {&#13;&#10;&#9;&#9;sReturn = responseOK + &quot;status as &quot; + realStatus;&#13;&#10;&#9;} else {&#13;&#10;&#9;&#9;sReturn = responseFail + &quot;status as &quot; + realStatus&#13;&#10;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedStatus + &quot;]&quot;;&#13;&#10;&#9;}&#13;&#10;&#9;return sReturn;&#13;&#10;&#13;&#10;} &#13;&#10;// expectedScope is provied, expectedStatus is not provided.&#13;&#10;else if (expectedScope != null) // Optional Scope is provided.&#13;&#10;{&#13;&#10;&#9;if (expectedScope.equalsIgnoreCase(realScope)) {&#13;&#10;&#9;&#9;sReturn = responseOK + &quot;scope as &quot; + realScope;&#13;&#10;&#9;} else {&#13;&#10;&#9;&#9;sReturn = responseFail + &quot;scope as &quot; + realScope&#13;&#10;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedScope + &quot;]&quot;;&#13;&#10;&#9;}&#13;&#10;&#9;return sReturn;&#13;&#10;}&#13;&#10;return sReturn;&#13;&#10;  &#13;&#10;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert141" type="com.itko.lisa.test.CheckResultRegEx">
<log>Assert [Assert141] fired true of type Result as String Contains Expression</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Failure*</param>
</CheckResult>

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


</TestCase>
