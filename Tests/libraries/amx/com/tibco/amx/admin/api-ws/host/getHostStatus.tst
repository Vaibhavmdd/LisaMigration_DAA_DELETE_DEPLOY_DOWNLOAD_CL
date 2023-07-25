<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Thu Aug 28 21:18:01 CST 2014 -->


<TestCase name="getHostStatus" version="2">
<id>a070f506</id>
<Documentation>Get Host Status by giving host name</Documentation>
<sig>ZWQ9MiZ0Y3Y9LTEmbGlzYXY9NC42LjcgKDQuNi43LjE2KSZub2Rlcz0xNTExNjg0NTc3</sig>
<rootNode>getHostStatus</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>hostName</key>
    <value></value>
    <name>Name for host</name>
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
    <key>lisa.getHostStatus.rsp</key>
    <value>Set in Step getHostStatus</value>
    </Parameter>
    <Parameter>
    <key>lisa.getHostStatus.rsp.time</key>
    <value>Set in Step getHostStatus</value>
    </Parameter>
    <Parameter>
    <key>hostStatus</key>
    <value>Set in Step getHostStatus</value>
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
    <Node name="getHostStatus" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="returnResult" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
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
        <valueToFilterKey>lisa.getHostStatus.rsp</valueToFilterKey>
<prop>hostStatus</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getHostsResponse&apos;]/*[local-name()=&apos;return&apos;][*[local-name()=&apos;name&apos;]=&apos;{{hostName}}&apos;]/*[local-name()=&apos;singletonHost&apos;]/*[local-name()=&apos;status&apos;])</xpathq>
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
<Property>hostStatus</Property>
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
