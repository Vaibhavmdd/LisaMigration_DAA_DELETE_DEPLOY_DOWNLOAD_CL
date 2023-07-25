<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Tue Aug 26 17:20:30 CST 2014 -->


<TestCase name="getApplicationSyncStatus" version="2">
<id>d848ee2</id>
<Documentation>Check application sync status by giving application name and environment name</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTE2OTg4NTcwNTM=</sig>
<rootNode>getEnvIDByName</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>appName</key>
    <value></value>
    <name>Name for application</name>
    </Parameter>
    <Parameter>
    <key>envName</key>
    <value></value>
    <name>Name for environment</name>
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
    <key>lisa.getApplicationFolderID.rsp</key>
    <value>Set in Step getApplicationFolderID</value>
    </Parameter>
    <Parameter>
    <key>lisa.getApplicationFolderID.rsp.time</key>
    <value>Set in Step getApplicationFolderID</value>
    </Parameter>
    <Parameter>
    <key>appfolder.id</key>
    <value>Set in Step getApplicationFolderID</value>
    </Parameter>
    <Parameter>
    <key>lisa.getApplicationIDByName.rsp</key>
    <value>Set in Step getApplicationIDByName</value>
    </Parameter>
    <Parameter>
    <key>lisa.getApplicationIDByName.rsp.time</key>
    <value>Set in Step getApplicationIDByName</value>
    </Parameter>
    <Parameter>
    <key>app_id</key>
    <value>Set in Step getApplicationIDByName</value>
    </Parameter>
    <Parameter>
    <key>lisa.getApplicationSummaryById.rsp</key>
    <value>Set in Step getApplicationSummaryById</value>
    </Parameter>
    <Parameter>
    <key>lisa.getApplicationSummaryById.rsp.time</key>
    <value>Set in Step getApplicationSummaryById</value>
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
    <key>lisa.returnResult.rsp</key>
    <value>Set in Step returnResult</value>
    </Parameter>
    <Parameter>
    <key>lisa.returnResult.rsp.time</key>
    <value>Set in Step returnResult</value>
    </Parameter>
    <Parameter>
    <key>appSyncStatus</key>
    <value>Set in Step getApplicationSummaryById</value>
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
          next="getApplicationFolderID" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
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


    <Node name="getApplicationFolderID" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getApplicationIDByName" > 

<graphx>1802</graphx>
<graphy>10</graphy>
<url>{{adminURL}}/amxadministrator.httpbasic/services/ApplicationFolderService.ApplicationFolderServiceHttpSoap11Endpoint/</url>
<action>urn:getRootFolder</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmFwcD0iaHR0cDovL2FwcGZvbGRlci5hbXguYXBpLmFk
bWluLmFtZi50aWJjby5jb20iIHhtbG5zOnhzZD0iaHR0cDovL3R5cGVzLmNvcmUuYXBpLmFkbWlu
LmFtZi50aWJjby5jb20veHNkIj4NCiAgIDxzb2FwZW52OkhlYWRlci8+DQogICA8c29hcGVudjpC
b2R5Pg0KICAgICAgPGFwcDpnZXRSb290Rm9sZGVyPg0KICAgICAgICAgPCEtLU9wdGlvbmFsOi0t
Pg0KICAgICAgICAgPGFwcDpwYXJhbTA+DQogICAgICAgICAgICA8IS0tT3B0aW9uYWw6LS0+DQog
ICAgICAgICAgICA8eHNkOmlkPnt7ZW52X2lkfX08L3hzZDppZD4NCiAgICAgICAgICAgIDwhLS1P
cHRpb25hbDotLT4NCiAgICAgICAgICAgIDx4c2Q6bmFtZT4/PC94c2Q6bmFtZT4NCiAgICAgICAg
IDwvYXBwOnBhcmFtMD4NCiAgICAgIDwvYXBwOmdldFJvb3RGb2xkZXI+DQogICA8L3NvYXBlbnY6
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
        <valueToFilterKey>lisa.getApplicationFolderID.rsp</valueToFilterKey>
<prop>appfolder.id</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getRootFolderResponse&apos;]/*[local-name()=&apos;return&apos;]/*[local-name()=&apos;id&apos;])</xpathq>
      </Filter>

    </Node>


    <Node name="getApplicationIDByName" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getApplicationSummaryById" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<url>{{adminURL}}/amxadministrator.httpbasic/services/ApplicationService</url>
<action>urn:getApplicationIDByNames</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmFwcD0iaHR0cDovL2FwcGxpY2F0aW9uLmFteC5hcGku
YWRtaW4uYW1mLnRpYmNvLmNvbSIgeG1sbnM6eHNkPSJodHRwOi8vdHlwZXMuY29yZS5hcGkuYWRt
aW4uYW1mLnRpYmNvLmNvbS94c2QiPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52
OkJvZHk+DQogICAgICA8YXBwOmdldEFwcGxpY2F0aW9uSURCeU5hbWU+DQogICAgICAgICA8IS0t
T3B0aW9uYWw6LS0+DQogICAgICAgICA8YXBwOnBhcmFtMD4NCiAgICAgICAgICAgIDwhLS1PcHRp
b25hbDotLT4NCiAgICAgICAgICAgIDx4c2Q6aWQ+e3thcHBmb2xkZXIuaWR9fTwveHNkOmlkPg0K
ICAgICAgICAgICAgPCEtLU9wdGlvbmFsOi0tPg0KICAgICAgICAgICAgPHhzZDpuYW1lPj88L3hz
ZDpuYW1lPg0KICAgICAgICAgPC9hcHA6cGFyYW0wPg0KICAgICAgICAgPCEtLU9wdGlvbmFsOi0t
Pg0KICAgICAgICAgPGFwcDpwYXJhbTE+e3thcHBOYW1lfX08L2FwcDpwYXJhbTE+DQogICAgICA8
L2FwcDpnZXRBcHBsaWNhdGlvbklEQnlOYW1lPg0KICAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBl
bnY6RW52ZWxvcGU+</soapRequest>
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
        <valueToFilterKey>lisa.getApplicationIDByName.rsp</valueToFilterKey>
<prop>app_id</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getApplicationIDByNameResponse&apos;]/*[local-name()=&apos;return&apos;])</xpathq>
      </Filter>

    </Node>


    <Node name="getApplicationSummaryById" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="returnResult" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<url>{{adminURL}}/amxadministrator.httpbasic/services/ApplicationService</url>
<action>urn:getApplicationSummaryById</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmFwcD0iaHR0cDovL2FwcGxpY2F0aW9uLmFteC5hcGku
YWRtaW4uYW1mLnRpYmNvLmNvbSIgeG1sbnM6eHNkPSJodHRwOi8vdHlwZXMuY29yZS5hcGkuYWRt
aW4uYW1mLnRpYmNvLmNvbS94c2QiPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52
OkJvZHk+DQogICAgICA8YXBwOmdldEFwcGxpY2F0aW9uU3VtbWFyeUJ5SWQ+DQogICAgICAgICA8
IS0tT3B0aW9uYWw6LS0+DQogICAgICAgICA8YXBwOnBhcmFtMD4NCiAgICAgICAgICAgIDwhLS1P
cHRpb25hbDotLT4NCiAgICAgICAgICAgIDx4c2Q6aWQ+e3thcHBfaWR9fTwveHNkOmlkPg0KICAg
ICAgICAgICAgPCEtLU9wdGlvbmFsOi0tPg0KICAgICAgICAgICAgPHhzZDpuYW1lPj88L3hzZDpu
YW1lPg0KICAgICAgICAgPC9hcHA6cGFyYW0wPg0KICAgICAgPC9hcHA6Z2V0QXBwbGljYXRpb25T
dW1tYXJ5QnlJZD4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
    <Parameter>
    <key>Authorization</key>
    <value>cm9vdDp0</value>
    </Parameter>
</customHTTPHeaderInfo>

      <!-- Filters -->
      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.getApplicationSummaryById.rsp</valueToFilterKey>
<prop>appSyncStatus</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getApplicationSummaryByIdResponse&apos;]/*[local-name()=&apos;return&apos;]/*[local-name()=&apos;synchronization&apos;])</xpathq>
      </Filter>

    </Node>


    <Node name="returnResult" log=""
          type="com.itko.lisa.dynexec.NodeConvertPropToLastResponse" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="true" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Property>appSyncStatus</Property>
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
