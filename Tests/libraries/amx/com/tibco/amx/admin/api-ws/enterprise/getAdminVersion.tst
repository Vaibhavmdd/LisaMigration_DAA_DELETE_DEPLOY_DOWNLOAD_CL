<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Thu Sep 11 14:40:15 PDT 2014 -->


<TestCase name="getAdminVersion" version="2">
<id>a070f506</id>
<Documentation>Get Admin Version.&#13;&#10;If optional parameter is provied, return the compared result.&#13;&#10;</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0xOTU4MTM3MTUy</sig>
<rootNode>getAdminVersion</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>expectedVersion</key>
    <value></value>
    <name>Optional,return Sucess/Failure find matched Admin</name>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value>Value</value>
    <name>adminURL is required</name>
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
    <key>lisa.Check_to_Return.rsp</key>
    <value>Set in Step Check_to_Return</value>
    </Parameter>
    <Parameter>
    <key>lisa.Check_to_Return.rsp.time</key>
    <value>Set in Step Check_to_Return</value>
    </Parameter>
    <Parameter>
    <key>lisa.getAdminVersion.rsp</key>
    <value>Set in Step getAdminVersion</value>
    </Parameter>
    <Parameter>
    <key>lisa.getAdminVersion.rsp.time</key>
    <value>Set in Step getAdminVersion</value>
    </Parameter>
    <Parameter>
    <key>adminVersion</key>
    <value>Set in Step getAdminVersion</value>
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
    <Node name="getAdminVersion" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="Check_to_Return" > 

<graphx>0</graphx>
<graphy>121</graphy>
<url>{{adminURL}}/amxadministrator.httpbasic/services/EnterpriseService</url>
<action>urn:getAdminVersion</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmVudD0iaHR0cDovL2VudGVycHJpc2UuYW14LmFwaS5h
ZG1pbi5hbWYudGliY28uY29tIj4NCiAgIDxzb2FwZW52OkhlYWRlci8+DQogICA8c29hcGVudjpC
b2R5Pg0KICAgICAgPGVudDpnZXRBZG1pblZlcnNpb24+DQogICAgICAgICA8IS0tT3B0aW9uYWw6
LS0+DQogICAgICAgICA8ZW50OndzaUNvbXBsaWFuY2U+ODk5OTk5OTk5PC9lbnQ6d3NpQ29tcGxp
YW5jZT4NCiAgICAgIDwvZW50OmdldEFkbWluVmVyc2lvbj4NCiAgIDwvc29hcGVudjpCb2R5Pg0K
PC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
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
        <valueToFilterKey>lisa.getAdminVersion.rsp</valueToFilterKey>
<prop>adminVersion</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getAdminVersionResponse&apos;]/*[local-name()=&apos;return&apos;])</xpathq>
      </Filter>

    </Node>


    <Node name="Check_to_Return" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>10</graphx>
<graphy>10</graphy>
<onerror>fail</onerror>
<script>String responseOK = &quot;Success to find expected Admin with &quot;;&#13;&#10;String responseFail = &quot;Failure to find expected Admin with &quot;;&#13;&#10;&#13;&#10;realVersion= testExec.getStateObject(&quot;adminVersion&quot;);&#13;&#10;&#13;&#10;//Something wrong with the xpath search, got null&#13;&#10;if(realVersion ==null)&#13;&#10;{&#13;&#10;   return &quot;Failure to find Admin due to xpath result&quot;;&#13;&#10;}&#13;&#10;//expectedVersion is not provided by outside.&#13;&#10;if(expectedVersion ==null)&#13;&#10;{&#13;&#10;&#9;//System.out.println(&quot;Optinal parameter is not provied.&quot;);&#13;&#10;&#9;sReturn = &quot;Admin version is &quot; + realVersion;&#13;&#10;    return sReturn;&#13;&#10;}&#13;&#10;//expectedVersion is provied &#13;&#10;else&#13;&#10;{&#13;&#10;    //expectedVersion is provied with empty value.&#13;&#10;    if(expectedVersion.length()==0)&#13;&#10;    {&#13;&#10;       sReturn = &quot;Admin version is &quot; + realVersion;&#13;&#10;    }&#13;&#10;    //expectedVersion is proved with non-empty value.&#13;&#10;    else&#13;&#10;    {&#13;&#10;        //get the matched result;&#13;&#10;        if (expectedVersion.equalsIgnoreCase(realVersion)) &#13;&#10;        {&#13;&#10;            sReturn = responseOK + &quot;version at &quot; + realVersion;&#13;&#10;        } &#13;&#10;        //expectedVersion is not equal as real version.&#13;&#10;        else &#13;&#10;        {&#13;&#10;            sReturn = responseFail + &quot;version at &quot; + realVersion&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedVersion + &quot;]&quot;;&#13;&#10;        }&#13;&#10;     }&#13;&#10;}&#13;&#10;return sReturn;&#13;&#10;&#13;&#10;&#13;&#10;</script>

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
