<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Sun Aug 31 13:06:25 CST 2014 -->


<TestCase name="getFeatureInfo" version="2">
<id>a070f506</id>
<Documentation>Get Feature info Status by giving Feature name.&#13;&#10;If none optional parameter is provied, return the host status.&#13;&#10;If the expected status is provide, return the Success/Fail to find host with expected status.&#13;&#10;If the expected version is provied, return the Success/Fail to find host with expected version.&#13;&#10;If both expectedVersion and expectedSatus are provied, return the Success/Fail to find host with expectedVersion and expectedSatus.&#13;&#10;</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTEzOTE2Mjc3OTY=</sig>
<rootNode>getNodeID</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>envName</key>
    <value></value>
    <name>Name</name>
    </Parameter>
    <Parameter>
    <key>nodeName</key>
    <value></value>
    <name>Name for node</name>
    </Parameter>
    <Parameter>
    <key>featureName</key>
    <value></value>
    <name>Name for host</name>
    </Parameter>
    <Parameter>
    <key>expectedType</key>
    <value></value>
    <name>Expected Type of the feature</name>
    </Parameter>
    <Parameter>
    <key>expectedVersion</key>
    <value></value>
    <name>Expected version of the feature</name>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value>{{adminURL}}</value>
    <name>Name</name>
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
    <key>lisa.getHosts.rsp.time</key>
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
    <Parameter>
    <key>lisa.getNodeID.rsp</key>
    <value>Set in Step getNodeID</value>
    </Parameter>
    <Parameter>
    <key>lisa.getNodeID.rsp.time</key>
    <value>Set in Step getNodeID</value>
    </Parameter>
    <Parameter>
    <key>myNodeID</key>
    <value>Set in Step getNodeID</value>
    </Parameter>
    <Parameter>
    <key>lisa.getFeature.rsp</key>
    <value>Set in Step getFeature</value>
    </Parameter>
    <Parameter>
    <key>lisa.getFeature.rsp.time</key>
    <value>Set in Step getFeature</value>
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
    <key>myFeatureName</key>
    <value>Set in Step getFeature</value>
    </Parameter>
    <Parameter>
    <key>myFeatureType</key>
    <value>Set in Step getFeature</value>
    </Parameter>
    <Parameter>
    <key>myFeatureVersion</key>
    <value>Set in Step getFeature</value>
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
    <Node name="getNodeID" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getFeature" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/amx/admin/api-ws/node/getNodeID.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>envName</key>
    <value>{{envName}}</value>
    <name>Name for environment</name>
    </Parameter>
    <Parameter>
    <key>nodeName</key>
    <value>{{nodeName}}</value>
    <name>Name of Node</name>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value>{{adminURL}}</value>
    <name>Admin URL</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getNodeID.rsp</valueToFilterKey>
      <prop>myNodeID</prop>
      </Filter>

    </Node>


    <Node name="getFeature" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="Check_to_Return" > 

<graphx>0</graphx>
<graphy>121</graphy>
<url>{{adminURL}}/amxadministrator.httpbasic/services/NodeService</url>
<action>urn:getAllFeatures</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOm5vZGU9Imh0dHA6Ly9ub2RlLmFteC5hcGkuYWRtaW4u
YW1mLnRpYmNvLmNvbSIgeG1sbnM6eHNkPSJodHRwOi8vdHlwZXMuY29yZS5hcGkuYWRtaW4uYW1m
LnRpYmNvLmNvbS94c2QiPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+
DQogICAgICA8bm9kZTpnZXRBbGxGZWF0dXJlcz4NCiAgICAgICAgIDwhLS1PcHRpb25hbDotLT4N
CiAgICAgICAgIDxub2RlOm5vZGU+DQogICAgICAgICAgICA8IS0tT3B0aW9uYWw6LS0+DQogICAg
ICAgICAgICA8eHNkOmlkPnt7bXlOb2RlSUR9fTwveHNkOmlkPg0KICAgICAgICAgICAgPCEtLU9w
dGlvbmFsOi0tPg0KICAgICAgICAgICAgPHhzZDpuYW1lPj88L3hzZDpuYW1lPg0KICAgICAgICAg
PC9ub2RlOm5vZGU+DQogICAgICA8L25vZGU6Z2V0QWxsRmVhdHVyZXM+DQogICA8L3NvYXBlbnY6
Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
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
        <valueToFilterKey>lisa.getFeature.rsp</valueToFilterKey>
<prop>myFeatureName</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getAllFeaturesResponse&apos;]/*[local-name()=&apos;return&apos;]/*[local-name()=&apos;feature&apos;][*[local-name()=&apos;name&apos;]=&apos;{{featureName}}&apos;]/*[local-name()=&apos;name&apos;])</xpathq>
      </Filter>

      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.getFeature.rsp</valueToFilterKey>
<prop>myFeatureType</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getAllFeaturesResponse&apos;]/*[local-name()=&apos;return&apos;]/*[local-name()=&apos;feature&apos;][*[local-name()=&apos;name&apos;]=&apos;{{featureName}}&apos;]/*[local-name()=&apos;type&apos;])</xpathq>
      </Filter>

      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.getFeature.rsp</valueToFilterKey>
<prop>myFeatureVersion</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getAllFeaturesResponse&apos;]/*[local-name()=&apos;return&apos;]/*[local-name()=&apos;feature&apos;][*[local-name()=&apos;name&apos;]=&apos;{{featureName}}&apos;]/*[local-name()=&apos;version&apos;])</xpathq>
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
<script>String responseOK = &quot;Success to find expected Feature with &quot;;&#13;&#10;String responseFail = &quot;Failure to find expected Feature with &quot;;&#13;&#10;realFeatureName =  testExec.getStateObject(&quot;myFeatureName&quot;);&#13;&#10;realType = testExec.getStateObject(&quot;myFeatureType&quot;);&#13;&#10;realVersion= testExec.getStateObject(&quot;myFeatureVersion&quot;);&#13;&#10;&#13;&#10;//FeatureName is provied by empty input.&#13;&#10;if (featureName.length()==0)&#13;&#10;{&#13;&#10;    return &quot;Failure to find Feature with empty featureName set&quot;;&#13;&#10;}&#13;&#10;//Feature name is not found in the xpath result.&#13;&#10;if(realFeatureName ==null)&#13;&#10;{&#13;&#10;  return &quot;Failure to find Feature with given featureName=&quot; +featureName;&#13;&#10;}&#13;&#10;if(realFeatureName.length()==0)&#13;&#10;{&#13;&#10;  return &quot;Failure to find Feature with given featureName=&quot; +featureName;&#13;&#10;}&#13;&#10;&#13;&#10;String sReturn= &quot;&quot;;&#13;&#10;if (expectedType == null &amp;&amp; expectedVersion == null)&#13;&#10;{&#13;&#10;&#9;//System.out.println(&quot;Optinal parameter is not provied.&quot;);&#13;&#10;&#9;sReturn = responseOK + &quot;version as &quot; + realVersion;&#13;&#10;&#9;return sReturn;&#13;&#10;}&#13;&#10;// Both parameters are provied.&#13;&#10;else if (expectedType != null &amp;&amp; expectedVersion != null) &#13;&#10;{&#13;&#10;&#9;//get matched Feature with expected type and version&#13;&#10;    if ((expectedType.equalsIgnoreCase(realType))&#13;&#10;&#9;&#9;&#9;&amp;&amp; (expectedVersion.toString().equalsIgnoreCase(realVersion.toString()))) &#13;&#10;    {&#13;&#10;&#9;&#9;sReturn = responseOK + &quot;type as &quot; + realType&#13;&#10;&#9;&#9;&#9;&#9;+ &quot; and version as &quot; + realVersion;&#13;&#10;&#9;&#9;return sReturn;&#13;&#10;&#9;} &#13;&#10;    else //one/or both of the para is/are empty.&#13;&#10;    {&#13;&#10;        //Both expectedType and expectedVersion are empty.&#13;&#10;&#9;&#9;if(expectedType.toString().length()==0 &amp;&amp; expectedVersion.toString().length()==0)&#13;&#10;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;sReturn = responseOK + &quot;version as &quot; + realVersion;&#13;&#10;&#9;&#9;&#9;return sReturn;&#13;&#10;&#9;&#9;}&#13;&#10;        //expectedType is empty.&#13;&#10;&#9;&#9;else if(expectedType.toString().length()==0) //type is not provided.){&#13;&#10;&#9;&#9;{&#13;&#10;            //Find matched the version, ignore the type.&#13;&#10;&#9;&#9;&#9;if (expectedVersion.toString().equalsIgnoreCase(realVersion.toString())) {&#13;&#10;&#9;&#9;&#9;&#9;sReturn = responseOK + &quot;version as &quot; + realVersion;&#13;&#10;&#9;&#9;&#9;} else {&#13;&#10;&#9;&#9;&#9;&#9;sReturn = responseFail + &quot;version as &quot; + realVersion&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedVersion.toString() + &quot;]&quot;;&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;return sReturn;&#13;&#10;&#9;    }&#13;&#10;        //expectedVersion is empty.&#13;&#10;        else if(expectedVersion.toString().length()==0) //expected version is not provided.)&#13;&#10;&#9;    {&#13;&#10;            //Find matched the type, ignore the version.&#13;&#10;&#9;&#9;&#9;if (expectedType.equalsIgnoreCase(realType)) {&#13;&#10;&#9;&#9;&#9;&#9;sReturn = responseOK + &quot;type as &quot; + realType;&#13;&#10;&#9;&#9;&#9;} else {&#13;&#10;&#9;&#9;&#9;&#9;sReturn = responseFail + &quot;type as &quot; + realType&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedType + &quot;]&quot;;&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;return sReturn;&#13;&#10;&#9;    }&#13;&#10;        //others, failed to find with expected type and version&#13;&#10;&#9;&#9;sReturn = responseFail + &quot;real type as &quot; + realType&#13;&#10;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedType + &quot;]&quot;&#13;&#10;&#9;&#9;&#9;&#9;+ &quot; and real version as &quot; + realVersion + &quot;[expected as &quot;&#13;&#10;&#9;&#9;&#9;&#9;+ expectedVersion + &quot;]&quot;;&#13;&#10;&#9;&#9;return sReturn;&#13;&#10;&#9;}&#13;&#10;} &#13;&#10;// expectedType is provied, expectedVersion is not provided.&#13;&#10;else if (expectedType != null) // Optional type is provided.&#13;&#10;{&#13;&#10;&#9;if (expectedType.toString().equalsIgnoreCase(realType)) {&#13;&#10;&#9;&#9;sReturn = responseOK + &quot;type as &quot; + realType;&#13;&#10;&#9;} else {&#13;&#10;&#9;&#9;sReturn = responseFail + &quot;type as &quot; + realType&#13;&#10;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedType + &quot;]&quot;;&#13;&#10;&#9;}&#13;&#10;&#9;return sReturn;&#13;&#10;&#13;&#10;} &#13;&#10;// expectedVersion is provied, expectedType is not provided.&#13;&#10;else if (expectedVersion != null) // Optional version is provided.&#13;&#10;{&#13;&#10;&#9;if (expectedVersion.toString().equalsIgnoreCase(realVersion.toString())) {&#13;&#10;&#9;&#9;sReturn = responseOK + &quot;version as &quot; + realVersion;&#13;&#10;&#9;} else {&#13;&#10;&#9;&#9;sReturn = responseFail + &quot;version as &quot; + realVersion&#13;&#10;&#9;&#9;&#9;&#9;+ &quot;[expected as &quot; + expectedVersion.toString() + &quot;]&quot;;&#13;&#10;&#9;}&#13;&#10;&#9;return sReturn;&#13;&#10;}&#13;&#10;return sReturn;&#13;&#10;  &#13;&#10;</script>

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
