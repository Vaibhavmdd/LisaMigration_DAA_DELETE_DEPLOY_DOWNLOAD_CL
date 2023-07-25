<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Thu Aug 28 20:42:24 CST 2014 -->


<TestCase name="getEnabledHostsForNodeCreation" version="2">
<id>10416469</id>
<Documentation>Checking enabledHost for Node Creation in one Environment by giving env name</Documentation>
<sig>ZWQ9MiZ0Y3Y9LTEmbGlzYXY9NC42LjcgKDQuNi43LjE2KSZub2Rlcz02NTAxNDI3OQ==</sig>
<rootNode>getEnvIDByName</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>envName</key>
    <value></value>
    <name>Name for env</name>
    </Parameter>
</initState>

<resultState>
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
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.getHostName.rsp</key>
    <value>Set in Step getHostName</value>
    </Parameter>
    <Parameter>
    <key>lisa.getHostName.rsp.time</key>
    <value>Set in Step getHostName</value>
    </Parameter>
    <Parameter>
    <key>hostName</key>
    <value>Set in Step getHostName</value>
    </Parameter>
    <Parameter>
    <key>lisa.returnEnableHostName.rsp</key>
    <value>Set in Step returnEnableHostName</value>
    </Parameter>
    <Parameter>
    <key>lisa.returnEnableHostName.rsp.time</key>
    <value>Set in Step returnEnableHostName</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
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
    <Node name="getEnvIDByName" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getHostName" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
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


    <Node name="getHostName" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="returnEnableHostName" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<url>{{adminURL}}/amxadministrator.httpbasic/services/EnvService.EnvServiceHttpSoap11Endpoint/</url>
<action>urn:getEnabledHostsForNodeCreation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmVudj0iaHR0cDovL2Vudi5hbXguYXBpLmFkbWluLmFt
Zi50aWJjby5jb20iIHhtbG5zOnhzZD0iaHR0cDovL3R5cGVzLmNvcmUuYXBpLmFkbWluLmFtZi50
aWJjby5jb20veHNkIj4NCiAgIDxzb2FwZW52OkhlYWRlci8+DQogICA8c29hcGVudjpCb2R5Pg0K
ICAgICAgPGVudjpnZXRFbmFibGVkSG9zdHNGb3JOb2RlQ3JlYXRpb24+DQogICAgICAgICA8IS0t
T3B0aW9uYWw6LS0+DQogICAgICAgICA8ZW52OmVudmlkPg0KICAgICAgICAgICAgPCEtLU9wdGlv
bmFsOi0tPg0KICAgICAgICAgICAgPHhzZDppZD57e2Vudl9pZH19PC94c2Q6aWQ+DQogICAgICAg
ICAgICA8IS0tT3B0aW9uYWw6LS0+DQogICAgICAgICAgICA8eHNkOm5hbWU+PzwveHNkOm5hbWU+
DQogICAgICAgICA8L2VudjplbnZpZD4NCiAgICAgIDwvZW52OmdldEVuYWJsZWRIb3N0c0Zvck5v
ZGVDcmVhdGlvbj4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
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
        <valueToFilterKey>lisa.getHostName.rsp</valueToFilterKey>
<prop>hostName</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getEnabledHostsForNodeCreationResponse&apos;]/*[local-name()=&apos;return&apos;]/*[local-name()=&apos;name&apos;])</xpathq>
      </Filter>

    </Node>


    <Node name="returnEnableHostName" log=""
          type="com.itko.lisa.dynexec.NodeConvertPropToLastResponse" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="true" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<Property>hostName</Property>
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


</TestCase>
