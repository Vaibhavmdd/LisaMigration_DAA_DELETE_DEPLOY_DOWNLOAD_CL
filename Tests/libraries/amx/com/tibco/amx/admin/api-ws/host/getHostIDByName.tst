<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Fri Aug 29 11:47:01 PDT 2014 -->


<TestCase name="getHostIDByName" version="2">
<id>a070f506</id>
<Documentation>Get HostID  by giving host name, for internal use.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTE3ODcxMTAxMjQ=</sig>
<rootNode>getHostIdByName</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>hostName</key>
    <value>SystemHost</value>
    <name>Name for host</name>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value>http://localhost:8120</value>
    <name>Name</name>
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
          next="returnResult" > 

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


    <Node name="returnResult" log=""
          type="com.itko.lisa.dynexec.NodeConvertPropToLastResponse" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="true" 
          next="end" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<Property>myHostID</Property>
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
