<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Fri Aug 29 13:43:39 PDT 2014 -->


<TestCase name="getHostInfo" version="2">
<id>a070f506</id>
<Documentation>Get Host Status by giving host name.&#13;&#10;If none optional parameter is provied, return the host status.&#13;&#10;If the expected status is provide, return the Success/Fail to find host with expected status.&#13;&#10;If the expected version is provied, return the Success/Fail to find host with expected version.&#13;&#10;If both expectedVersion and expectedSatus are provied, return the Success/Fail to find host with expectedVersion and expectedSatus.&#13;&#10;</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0xNjYxNTQzNDY2</sig>
<rootNode>getHosts</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>hostName</key>
    <value></value>
    <name>Name for host</name>
    </Parameter>
    <Parameter>
    <key>expectedStatus</key>
    <value></value>
    <name>Optional,return Sucess/Failure to find matched Host</name>
    </Parameter>
    <Parameter>
    <key>expectedVersion</key>
    <value></value>
    <name>Optional,return Sucess/Failure find matched Host</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>hostHPAVersion</key>
    <value>Set in Step getHostStatus</value>
    </Parameter>
    <Parameter>
    <key>lisa.getHosts.rsp</key>
    <value>Set in Step getHosts</value>
    </Parameter>
    <Parameter>
    <key>lisa.getHosts.rsp.time</key>
    <value>Set in Step getHosts</value>
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
    <key>hostStatus</key>
    <value>Set in Step getHosts</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
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
    <Node name="getHosts" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="Check_to_Return" > 

<graphx>0</graphx>
<graphy>121</graphy>
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
        <valueToFilterKey>lisa.getHosts.rsp</valueToFilterKey>
<prop>hostStatus</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getHostsResponse&apos;]/*[local-name()=&apos;return&apos;][*[local-name()=&apos;name&apos;]=&apos;{{hostName}}&apos;]/*[local-name()=&apos;singletonHost&apos;]/*[local-name()=&apos;status&apos;])</xpathq>
      </Filter>

      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.getHosts.rsp</valueToFilterKey>
<prop>hostHPAVersion</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getHostsResponse&apos;]/*[local-name()=&apos;return&apos;][*[local-name()=&apos;name&apos;]=&apos;{{hostName}}&apos;]/*[local-name()=&apos;singletonHost&apos;]/*[local-name()=&apos;hpaFeatureVersion&apos;])</xpathq>
      </Filter>

    </Node>


    <Node name="Check_to_Return" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<onerror>fail</onerror>
<script>String responseOK = &quot;Success to find expected Host with &quot;;&#13;&#10;String responseFail = &quot;Failure to find expected Host with &quot;;&#13;&#10;realStatus = testExec.getStateObject(&quot;hostStatus&quot;);&#13;&#10;realVersion= testExec.getStateObject(&quot;hostHPAVersion&quot;);&#13;&#10;&#13;&#10;if(hostName.length()==0)&#13;&#10;{&#13;&#10;    return  &quot;Failure to find Host with empty parameters&quot;;&#13;&#10;}&#13;&#10;if(realStatus ==null)&#13;&#10;{&#13;&#10;   return &quot;Failure to find Host with given hostName=&quot; +hostName;&#13;&#10;}&#13;&#10;if(realStatus.length()==0 || realScope.length()==0)&#13;&#10;{&#13;&#10;    return &quot;Failure to find Host with given hostName=&quot; +hostName;&#13;&#10;}&#13;&#10;String sReturn= &quot;&quot;;&#13;&#10;if (expectedStatus == null &amp;&amp; expectedVersion == null)&#13;&#10;{&#13;&#10;&#9;//System.out.println(&quot;Optinal parameter is not provied.&quot;);&#13;&#10;&#9;sReturn = &quot;Host status is &quot; + realStatus;&#13;&#10;&#9;return sReturn;&#13;&#10;}&#13;&#10;// Both parameters are provied.&#13;&#10;else if (expectedStatus != null &amp;&amp; expectedVersion != null) &#13;&#10;{&#13;&#10;&#9;//get matched Ri with expected status and scope&#13;&#10;    if ((expectedStatus.equalsIgnoreCase(realStatus))&#13;&#10;&#9;&#9;&#9;&amp;&amp; (expectedVersion.equalsIgnoreCase(realVersion))) &#13;&#10;    {&#13;&#10;&#9;&#9;sReturn = responseOK + &quot;status as &quot; + realStatus&#13;&#10;&#9;&#9;&#9;&#9;+ &quot; and scope as &quot; + realVersion;&#13;&#10;&#9;&#9;return sReturn;&#13;&#10;&#9;} &#13;&#10;    else //one/or both of the para is/are empty.&#13;&#10;    {&#13;&#10;        //Both expectedStatus and expectedVersion are empty.&#13;&#10;&#9;&#9;if(expectedStatus.length()==0 &amp;&amp; expectedVersion.length()==0)&#13;&#10;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;sReturn = &quot;Host status is &quot; + realStatus;&#13;&#10;&#9;&#9;&#9;return sReturn;&#13;&#10;&#9;&#9;}&#13;&#10;        //expectedStatus is empty.&#13;&#10;&#9;&#9;else if(expectedStatus.length()==0) //status is not provided.){&#13;&#10;&#9;&#9;{&#13;&#10;            //Find matched the version, ignore the status.&#13;&#10;&#9;&#9;&#9;if (expectedVersion.equalsIgnoreCase(realVersion)) {&#13;&#10;&#9;&#9;&#9;&#9;sReturn = responseOK + &quot;version at &quot; + realVersion;&#13;&#10;&#9;&#9;&#9;} else {&#13;&#10;&#9;&#9;&#9;&#9;sReturn = responseFail + &quot;version at &quot; + realVersion&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedVersion + &quot;]&quot;;&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;return sReturn;&#13;&#10;&#9;    }&#13;&#10;        //expectedVersion is empty.&#13;&#10;        else if(expectedVersion.length()==0) //expected version is not provided.)&#13;&#10;&#9;    {&#13;&#10;            //Find matched the status, ignore the Scope.&#13;&#10;&#9;&#9;&#9;if (expectedStatus.equalsIgnoreCase(realStatus)) {&#13;&#10;&#9;&#9;&#9;&#9;sReturn = responseOK + &quot;status at &quot; + realStatus;&#13;&#10;&#9;&#9;&#9;} else {&#13;&#10;&#9;&#9;&#9;&#9;sReturn = responseFail + &quot;status at &quot; + realStatus&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedStatus + &quot;]&quot;;&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;return sReturn;&#13;&#10;&#9;    }&#13;&#10;        //others, failed to find with expected status and version&#13;&#10;&#9;&#9;sReturn = responseFail + &quot;real status as &quot; + realStatus&#13;&#10;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedStatus + &quot;]&quot;&#13;&#10;&#9;&#9;&#9;&#9;+ &quot; and real version as &quot; + realVersion + &quot;[expected as &quot;&#13;&#10;&#9;&#9;&#9;&#9;+ expectedVersion + &quot;]&quot;;&#13;&#10;&#9;&#9;return sReturn;&#13;&#10;&#9;}&#13;&#10;} &#13;&#10;// expectedStatus is provied, expectedVersion is not provided.&#13;&#10;else if (expectedStatus != null) // Optional status is provided.&#13;&#10;{&#13;&#10;&#9;if (expectedStatus.equalsIgnoreCase(realStatus)) {&#13;&#10;&#9;&#9;sReturn = responseOK + &quot;status as &quot; + realStatus;&#13;&#10;&#9;} else {&#13;&#10;&#9;&#9;sReturn = responseFail + &quot;status as &quot; + realStatus&#13;&#10;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedStatus + &quot;]&quot;;&#13;&#10;&#9;}&#13;&#10;&#9;return sReturn;&#13;&#10;&#13;&#10;} &#13;&#10;// expectedVersion is provied, expectedStatus is not provided.&#13;&#10;else if (expectedVersion != null) // Optional Scope is provided.&#13;&#10;{&#13;&#10;&#9;if (expectedVersion.equalsIgnoreCase(realVersion)) {&#13;&#10;&#9;&#9;sReturn = responseOK + &quot;version as &quot; + realVersion;&#13;&#10;&#9;} else {&#13;&#10;&#9;&#9;sReturn = responseFail + &quot;version as &quot; + realVersion&#13;&#10;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedVersion + &quot;]&quot;;&#13;&#10;&#9;}&#13;&#10;&#9;return sReturn;&#13;&#10;}&#13;&#10;return sReturn;&#13;&#10;  &#13;&#10;</script>

      <!-- Result Elements -->
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
