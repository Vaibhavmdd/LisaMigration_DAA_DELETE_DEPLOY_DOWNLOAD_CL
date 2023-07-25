<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Wed Sep 14 10:16:23 PDT 2011 -->


<TestCase name="5.12_Invoke" version="2">
<id>a1d828a5</id>
<Documentation>Global Transaction with Oracle 11g.&#13;&#10;Provision and remove Oracle JDBC feature.&#13;&#10;Use App SVars.&#13;&#10;Stop/Start App&#13;&#10;&#13;&#10;Scenario: SOAP(HTTP) &lt;-&gt; Java &lt;-&gt; Java &#13;&#10;&#13;&#10;MEP: In-Out &#13;&#10;SOAP Version: 1.1 &#13;&#10;SOAP Style/Encoding: Doc/Literal/Type&#13;&#10;</Documentation>
<sig>ZWQ9MiZ0Y3Y9MSZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0xMzk1NTc2Njg2</sig>
<rootNode>Invoke-Comp1-UndeclaredFault</rootNode>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>g11n</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.invoke-BW-Service.rsp.time</key>
    <value>Set in Step invoke-BW-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.httpconnector1.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.DeclaredFault-AMX-Service.rsp.time</key>
    <value>Set in Step DeclaredFault-AMX-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.DeclaredFault-BW-Service.rsp.time</key>
    <value>Set in Step DeclaredFault-BW-Service</value>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.UnDeclaredFault-BW-Service.rsp.time</key>
    <value>Set in Step UnDeclaredFault-BW-Service</value>
    </Parameter>
    <Parameter>
    <key>UnDeclaredFaultCondition</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.httpconnector1.host</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.Consumer-DeclaredFault.rsp.time</key>
    <value>Set in Step Consumer-DeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.UnDeclaredFault-AMX-Service.rsp.time</key>
    <value>Set in Step UnDeclaredFault-AMX-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployApp.rsp</key>
    <value>Set in Step deployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployApp.rsp.time</key>
    <value>Set in Step deployApp</value>
    </Parameter>
    <Parameter>
    <key>tenDataSor</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwport1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>smtpPort</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>connFacName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwhost1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tenInhMap</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.node2.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>ldapPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>portssl1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hibDataSor</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>connFacConfName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port4</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwportssl1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port3</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port2</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.datafile.template</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hibSchemaGen</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>ldapProUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>smtpHost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jdbcUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jdbcUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>ldapUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jdbcPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.instance.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tenSchemaGen</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.node1.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>smtpPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emspwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tenDialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jdbcDriver</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>destConfName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>destName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>smtpUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hibDialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.CreateRI.rsp</key>
    <value>Set in Step CreateRI</value>
    </Parameter>
    <Parameter>
    <key>lisa.CreateRI.rsp.time</key>
    <value>Set in Step CreateRI</value>
    </Parameter>
    <Parameter>
    <key>lisa.Invoke-Comp1-UndeclaredFault.rsp</key>
    <value>Set in Step Invoke-Comp1-UndeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.Invoke-Comp1-UndeclaredFault.rsp.time</key>
    <value>Set in Step Invoke-Comp1-UndeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.restartApp.rsp.time</key>
    <value>Set in Step restartApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.restartApp2.rsp.time</key>
    <value>Set in Step restartApp2</value>
    </Parameter>
    <Parameter>
    <key>lisa.restartApp2.rsp</key>
    <value>Set in Step restartApp2</value>
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
    <key>lisa.validateDB-Comp1-UndeclaredFault.rsp</key>
    <value>Set in Step validateDB-Comp1-UndeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.validateDB-Comp1-UndeclaredFault.rsp.time</key>
    <value>Set in Step validateDB-Comp1-UndeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.Invoke-Comp2-UndeclaredFault.rsp</key>
    <value>Set in Step Invoke-Comp2-UndeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.Invoke-Comp2-UndeclaredFault.rsp.time</key>
    <value>Set in Step Invoke-Comp2-UndeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.validateDB-Comp2-UndeclaredFault.rsp</key>
    <value>Set in Step validateDB-Comp2-UndeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.validateDB-Comp2-UndeclaredFault.rsp.time</key>
    <value>Set in Step validateDB-Comp2-UndeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.Invoke-Comp1-DeclaredFault.rsp</key>
    <value>Set in Step Invoke-Comp1-DeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.Invoke-Comp1-DeclaredFault.rsp.time</key>
    <value>Set in Step Invoke-Comp1-DeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.validateDB-Comp1-DeclaredFault.rsp</key>
    <value>Set in Step validateDB-Comp1-DeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.validateDB-Comp1-DeclaredFault.rsp.time</key>
    <value>Set in Step validateDB-Comp1-DeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.restartApp.rsp</key>
    <value>Set in Step restartApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.Invoke-Comp2-DeclaredFault.rsp</key>
    <value>Set in Step Invoke-Comp2-DeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.Invoke-Comp2-DeclaredFault.rsp.time</key>
    <value>Set in Step Invoke-Comp2-DeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.validateDB-Comp2-DeclaredFault.rsp</key>
    <value>Set in Step validateDB-Comp2-DeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.validateDB-Comp2-DeclaredFault.rsp.time</key>
    <value>Set in Step validateDB-Comp2-DeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.Invoke-Service.rsp</key>
    <value>Set in Step Invoke-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.Invoke-Service.rsp.time</key>
    <value>Set in Step Invoke-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.validateDB-Success.rsp</key>
    <value>Set in Step validateDB-Success</value>
    </Parameter>
    <Parameter>
    <key>lisa.validateDB-Success.rsp.time</key>
    <value>Set in Step validateDB-Success</value>
    </Parameter>
    <Parameter>
    <key>lisa.setupOracleDriver.rsp</key>
    <value>Set in Step setupOracleDriver</value>
    </Parameter>
    <Parameter>
    <key>lisa.setupOracleDriver.rsp.time</key>
    <value>Set in Step setupOracleDriver</value>
    </Parameter>
</resultState>

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{LISA_TC_PATH}}/data{{g11n}}.txt</file>
      </Companion>

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{LISA_TC_PATH}}/config.txt</file>
      </Companion>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/amxconfig.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/amxbuild.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

<Configurations>
<Configuration>
<name>default</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_orcl.config</doc>
</Configuration>
<Configuration>
<name>silver</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../silver/1machine_2node.config</doc>
</Configuration>
</Configurations>
    <Node name="Invoke-Comp1-UndeclaredFault" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="validateDB-Comp1-UndeclaredFault" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<url>http://{{host1}}:{{port2}}/echoStringDF/</url>
<action>echo</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxzb2FwZW52OkVudmVsb3Bl
IHhtbG5zOnNvYXBlbnY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUv
IiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9
Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj4NCiAgPHNvYXBlbnY6
Qm9keT4NCiAgICA8ZWNobyB4bWxucz0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9lY2hvU3RyaW5n
REYvIj4NCiAgICAgIDxpbiB4bWxucz0iIj57e3JlcXVlc3RTdHJpbmdVbmRlY2xhcmVkRmF1bHQx
fX08L2luPg0KICAgIDwvZWNobz4NCiAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxv
cGU+</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>continue</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for Fault Response" type="com.itko.lisa.test.CheckResultContains">
<log>Checking for string {{responseStringUndeclaredFault1}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{responseStringUndeclaredFault1}}</param>
</CheckResult>

    </Node>


    <Node name="validateDB-Comp1-UndeclaredFault" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="Invoke-Comp2-UndeclaredFault" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<url>http://{{host1}}:{{port2}}/validateDB/</url>
<action>echo</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxzb2FwZW52OkVudmVsb3Bl
IHhtbG5zOnNvYXBlbnY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUv
IiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9
Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj4NCiAgPHNvYXBlbnY6
Qm9keT4NCiAgICA8ZWNob1JlcXVlc3QgeG1sbnM9Imh0dHA6Ly93d3cuZXhhbXBsZS5vcmcvZWNo
b1N0cmluZy8iPg0KICAgICAgPGluIHhtbG5zPSIiIC8+DQogICAgPC9lY2hvUmVxdWVzdD4NCiAg
PC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for Response" type="com.itko.lisa.test.CheckResultContains">
<log>Checking for string {{responseValidateDB1}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{responseValidateDB1}}</param>
</CheckResult>

    </Node>


    <Node name="Invoke-Comp2-UndeclaredFault" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="validateDB-Comp2-UndeclaredFault" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<url>http://{{host1}}:{{port2}}/echoStringDF/</url>
<action>echo</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxzb2FwZW52OkVudmVsb3Bl
IHhtbG5zOnNvYXBlbnY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUv
IiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9
Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj4NCiAgPHNvYXBlbnY6
Qm9keT4NCiAgICA8ZWNobyB4bWxucz0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9lY2hvU3RyaW5n
REYvIj4NCiAgICAgIDxpbiB4bWxucz0iIj57e3JlcXVlc3RTdHJpbmdVbmRlY2xhcmVkRmF1bHQy
fX08L2luPg0KICAgIDwvZWNobz4NCiAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxv
cGU+</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>continue</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for Fault Response" type="com.itko.lisa.test.CheckResultContains">
<log>Checking for string {{responseStringUndeclaredFault2}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{responseStringUndeclaredFault2}}</param>
</CheckResult>

    </Node>


    <Node name="validateDB-Comp2-UndeclaredFault" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="Invoke-Comp1-DeclaredFault" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<url>http://{{host1}}:{{port2}}/validateDB/</url>
<action>echo</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxzb2FwZW52OkVudmVsb3Bl
IHhtbG5zOnNvYXBlbnY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUv
IiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9
Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj4NCiAgPHNvYXBlbnY6
Qm9keT4NCiAgICA8ZWNob1JlcXVlc3QgeG1sbnM9Imh0dHA6Ly93d3cuZXhhbXBsZS5vcmcvZWNo
b1N0cmluZy8iPg0KICAgICAgPGluIHhtbG5zPSIiIC8+DQogICAgPC9lY2hvUmVxdWVzdD4NCiAg
PC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for Response" type="com.itko.lisa.test.CheckResultContains">
<log>Checking for string {{responseValidateDB1}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{responseValidateDB1}}</param>
</CheckResult>

    </Node>


    <Node name="Invoke-Comp1-DeclaredFault" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="validateDB-Comp1-DeclaredFault" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<url>http://{{host1}}:{{port2}}/echoStringDF/</url>
<action>echo</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxzb2FwZW52OkVudmVsb3Bl
IHhtbG5zOnNvYXBlbnY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUv
IiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9
Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj4NCiAgPHNvYXBlbnY6
Qm9keT4NCiAgICA8ZWNobyB4bWxucz0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9lY2hvU3RyaW5n
REYvIj4NCiAgICAgIDxpbiB4bWxucz0iIj57e3JlcXVlc3RTdHJpbmdEZWNsYXJlZEZhdWx0MX19
PC9pbj4NCiAgICA8L2VjaG8+DQogIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3Bl
Pg==</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>continue</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for Fault Response" type="com.itko.lisa.test.CheckResultContains">
<log>Checking for string {{responseStringDeclaredFault1}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{responseStringDeclaredFault1}}</param>
</CheckResult>

    </Node>


    <Node name="validateDB-Comp1-DeclaredFault" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="restartApp" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<url>http://{{host1}}:{{port2}}/validateDB/</url>
<action>echo</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxzb2FwZW52OkVudmVsb3Bl
IHhtbG5zOnNvYXBlbnY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUv
IiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9
Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj4NCiAgPHNvYXBlbnY6
Qm9keT4NCiAgICA8ZWNob1JlcXVlc3QgeG1sbnM9Imh0dHA6Ly93d3cuZXhhbXBsZS5vcmcvZWNo
b1N0cmluZy8iPg0KICAgICAgPGluIHhtbG5zPSIiIC8+DQogICAgPC9lY2hvUmVxdWVzdD4NCiAg
PC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+DQo=</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for Response" type="com.itko.lisa.test.CheckResultContains">
<log>Checking for string {{responseValidateDB}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{responseValidateDB}}</param>
</CheckResult>

    </Node>


    <Node name="restartApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="Invoke-Comp2-DeclaredFault" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value></value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.amx.buildfile.tc}}</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antRestartApp.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>restart.app</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{TIBCO_JAVA_HOME}}/lib</value>
    <name>ANT_OPTS environment variable. Optional. Ex: -Xms128m -Xmx512m -XX:PermSize=256m</name>
    </Parameter>
    <Parameter>
    <key>additionalAntCmdLineArgs</key>
    <value></value>
    <name>Additional ant commandline options. Optional. See ant --help for these options.</name>
    </Parameter>
    <Parameter>
    <key>additionalClasspath</key>
    <value></value>
    <name>Additional classpath to add to Ant. Optional.</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>true</value>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Restart failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="Invoke-Comp2-DeclaredFault" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="validateDB-Comp2-DeclaredFault" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<url>http://{{host1}}:{{port2}}/echoStringDF/</url>
<action>echo</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxzb2FwZW52OkVudmVsb3Bl
IHhtbG5zOnNvYXBlbnY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUv
IiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9
Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj4NCiAgPHNvYXBlbnY6
Qm9keT4NCiAgICA8ZWNobyB4bWxucz0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9lY2hvU3RyaW5n
REYvIj4NCiAgICAgIDxpbiB4bWxucz0iIj57e3JlcXVlc3RTdHJpbmdEZWNsYXJlZEZhdWx0Mn19
PC9pbj4NCiAgICA8L2VjaG8+DQogIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3Bl
Pg==</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>continue</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for Fault Response" type="com.itko.lisa.test.CheckResultContains">
<log>Checking for string {{responseStringDeclaredFault2}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{responseStringDeclaredFault2}}</param>
</CheckResult>

    </Node>


    <Node name="validateDB-Comp2-DeclaredFault" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="restartApp2" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<url>http://{{host1}}:{{port2}}/validateDB/</url>
<action>echo</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxzb2FwZW52OkVudmVsb3Bl
IHhtbG5zOnNvYXBlbnY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUv
IiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9
Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj4NCiAgPHNvYXBlbnY6
Qm9keT4NCiAgICA8ZWNob1JlcXVlc3QgeG1sbnM9Imh0dHA6Ly93d3cuZXhhbXBsZS5vcmcvZWNo
b1N0cmluZy8iPg0KICAgICAgPGluIHhtbG5zPSIiIC8+DQogICAgPC9lY2hvUmVxdWVzdD4NCiAg
PC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for Response" type="com.itko.lisa.test.CheckResultContains">
<log>Checking for string {{responseValidateDB}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{responseValidateDB}}</param>
</CheckResult>

    </Node>


    <Node name="restartApp2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="Invoke-Service" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value></value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.amx.buildfile.tc}}</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antRestartApp2.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>restart.app</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{TIBCO_JAVA_HOME}}/lib</value>
    <name>ANT_OPTS environment variable. Optional. Ex: -Xms128m -Xmx512m -XX:PermSize=256m</name>
    </Parameter>
    <Parameter>
    <key>additionalAntCmdLineArgs</key>
    <value></value>
    <name>Additional ant commandline options. Optional. See ant --help for these options.</name>
    </Parameter>
    <Parameter>
    <key>additionalClasspath</key>
    <value></value>
    <name>Additional classpath to add to Ant. Optional.</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>true</value>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Restart failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="Invoke-Service" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="validateDB-Success" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<url>http://{{host1}}:{{port2}}/echoStringDF/</url>
<action>echo</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxzb2FwZW52OkVudmVsb3Bl
IHhtbG5zOnNvYXBlbnY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUv
IiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9
Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj4NCiAgPHNvYXBlbnY6
Qm9keT4NCiAgICA8ZWNobyB4bWxucz0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9lY2hvU3RyaW5n
REYvIj4NCiAgICAgIDxpbiB4bWxucz0iIiAvPg0KICAgIDwvZWNobz4NCiAgPC9zb2FwZW52OkJv
ZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for  Response" type="com.itko.lisa.test.CheckResultContains">
<log>Checking for string {{responseString3}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{responseString3}}</param>
</CheckResult>

    </Node>


    <Node name="validateDB-Success" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="undeployApp" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<url>http://{{host1}}:{{port2}}/validateDB/</url>
<action>echo</action>
<soapRequest itko_enc="base64">PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxzb2FwZW52OkVudmVsb3Bl
IHhtbG5zOnNvYXBlbnY9Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3NvYXAvZW52ZWxvcGUv
IiB4bWxuczp4c2Q9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9
Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj4NCiAgPHNvYXBlbnY6
Qm9keT4NCiAgICA8ZWNob1JlcXVlc3QgeG1sbnM9Imh0dHA6Ly93d3cuZXhhbXBsZS5vcmcvZWNo
b1N0cmluZy8iPg0KICAgICAgPGluIHhtbG5zPSIiIC8+DQogICAgPC9lY2hvUmVxdWVzdD4NCiAg
PC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for Response" type="com.itko.lisa.test.CheckResultContains">
<log>Checking for string {{responseValidateDB}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{responseValidateDB}}</param>
</CheckResult>

    </Node>


    <Node name="undeployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="Re-Deploy" > 

<graphx>3328</graphx>
<graphy>419</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value></value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.amx.buildfile.tc}}</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antUndeploy.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>undeploy.app</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{TIBCO_JAVA_HOME}}/jre/lib</value>
    <name>ANT_OPTS environment variable. Optional. Ex: -Xms128m -Xmx512m -XX:PermSize=256m</name>
    </Parameter>
    <Parameter>
    <key>additionalAntCmdLineArgs</key>
    <value></value>
    <name>Additional ant commandline options. Optional. See ant --help for these options.</name>
    </Parameter>
    <Parameter>
    <key>additionalClasspath</key>
    <value></value>
    <name>Additional classpath to add to Ant. Optional.</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>true</value>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Undeploy failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="Re-Deploy" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value></value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.amx.buildfile.tc}}</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antDeploy.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>deploy.app</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{TIBCO_JAVA_HOME}}/lib</value>
    <name>ANT_OPTS environment variable. Optional. Ex: -Xms128m -Xmx512m -XX:PermSize=256m</name>
    </Parameter>
    <Parameter>
    <key>additionalAntCmdLineArgs</key>
    <value></value>
    <name>Additional ant commandline options. Optional. See ant --help for these options.</name>
    </Parameter>
    <Parameter>
    <key>additionalClasspath</key>
    <value></value>
    <name>Additional classpath to add to Ant. Optional.</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>true</value>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Deployment failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>3734</graphx>
<graphy>825</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>3842</graphx>
<graphy>983</graphy>
    </Node>


</TestCase>
