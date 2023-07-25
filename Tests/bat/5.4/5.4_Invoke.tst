<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Wed Jun 19 14:04:13 PDT 2019 -->


<TestCase name="5.4_Invoke" version="2">
<id>52c38dd9</id>
<Documentation>Description : Test WS Addressing (Anonymous &amp; Non Anonymous) with Declared and Undeclared fault&#13;&#10;Scenario: &#9;Composite 1: &#13;&#10;&#9;&#9;&#9;SOAP BT(HTTP) (Anonymous ws addressing) &lt;-&gt; JAVA &lt;-&gt; SOAP BT(HTTP) (Non Anonymous ws addressing) &#13;&#10;&#9;&#9;&#9;Composite 2:&#9;&#13;&#10;&#9;&#9;&#9;SOAP BT(HTTP) (Non Anonymous ws addressing) &lt;-&gt; JAVA &#13;&#10;MEP: In-Out &#13;&#10;SOAP Version: 1.1 &#13;&#10;SOAP Style/Encoding: RPC/Literal</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0xNDYzNTgzOTQy</sig>
<rootNode>valid-A-Request</rootNode>
<subprocess>false</subprocess>

<initState>
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
    <key>lisa.invokeWSAddressingService.rsp</key>
    <value>Set in Step invokeWSAddressingService</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeWSAddressingService.rsp.time</key>
    <value>Set in Step invokeWSAddressingService</value>
    </Parameter>
    <Parameter>
    <key>WSPORT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>portssl1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwportssl1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
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
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.valid-NA-Request.rsp</key>
    <value>Set in Step valid-NA-Request</value>
    </Parameter>
    <Parameter>
    <key>lisa.valid-NA-Request.rsp.time</key>
    <value>Set in Step valid-NA-Request</value>
    </Parameter>
    <Parameter>
    <key>lisa.ReplyTo-Listner.rsp</key>
    <value>Set in Step ReplyTo-Listner</value>
    </Parameter>
    <Parameter>
    <key>lisa.ReplyTo-Listner.rsp.time</key>
    <value>Set in Step ReplyTo-Listner</value>
    </Parameter>
    <Parameter>
    <key>lisa.DeclaredFault-NA-Request.rsp</key>
    <value>Set in Step DeclaredFault-NA-Request</value>
    </Parameter>
    <Parameter>
    <key>lisa.DeclaredFault-NA-Request.rsp.time</key>
    <value>Set in Step DeclaredFault-NA-Request</value>
    </Parameter>
    <Parameter>
    <key>lisa.FaultTo-1-Listner.rsp</key>
    <value>Set in Step FaultTo-1-Listner</value>
    </Parameter>
    <Parameter>
    <key>lisa.FaultTo-1-Listner.rsp.time</key>
    <value>Set in Step FaultTo-1-Listner</value>
    </Parameter>
    <Parameter>
    <key>lisa.UnDeclaredFault-NA-Request.rsp</key>
    <value>Set in Step UnDeclaredFault-NA-Request</value>
    </Parameter>
    <Parameter>
    <key>lisa.UnDeclaredFault-NA-Request.rsp.time</key>
    <value>Set in Step UnDeclaredFault-NA-Request</value>
    </Parameter>
    <Parameter>
    <key>lisa.FaultTo-2-Listner.rsp</key>
    <value>Set in Step FaultTo-2-Listner</value>
    </Parameter>
    <Parameter>
    <key>lisa.FaultTo-2-Listner.rsp.time</key>
    <value>Set in Step FaultTo-2-Listner</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployApp.rsp</key>
    <value>Set in Step undeployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployApp.rsp.time</key>
    <value>Set in Step undeployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.Re-Deploy.rsp</key>
    <value>Set in Step Re-Deploy</value>
    </Parameter>
    <Parameter>
    <key>lisa.Re-Deploy.rsp.time</key>
    <value>Set in Step Re-Deploy</value>
    </Parameter>
</resultState>

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{LISA_TC_PATH}}/data{{g11n}}.txt</file>
      </Companion>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/amxconfig.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/amxbuild.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

<Configurations>
<Configuration>
<name>runtime</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_hsql{{g11n}}.config</doc>
</Configuration>
</Configurations>
    <Node name="valid-A-Request" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="Consumer-UnDeclaredFault-A-Request" > 

<graphx>10</graphx>
<graphy>10</graphy>
<url>http://{{host1}}:{{port2}}/5.4-Consumer/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0idXJuOmFteDpRQUVudmlyb25tZW50L0JBVF81
XzRfQ29uc3VtZXIuYXBwIiB4bWxuczpoZWw9Imh0dHA6Ly9ucy50aWJjby5jb20vSGVsbG8vIiB4
bWxuczp3c2E9Imh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZyI+DQogICA8c29h
cGVudjpIZWFkZXI+DQoJPHdzYTpNZXNzYWdlSUQ+dXVpZDo2QjM5RkM0MC1DQTQ3LTEwNjctQjMx
LUpJR0FSMDBERDAxMDZBPC93c2E6TWVzc2FnZUlEPg0KCTx3c2E6UmVwbHlUbz4NCgkJPHdzYTpB
ZGRyZXNzPmh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZy9hbm9ueW1vdXM8L3dz
YTpBZGRyZXNzPg0KCTwvd3NhOlJlcGx5VG8+DQoJPHdzYTpUbz5odHRwOi8ve3t0aWJjby5hbXgu
cnQuaHR0cGNvbm5lY3RvcjEuaG9zdH19Ont7dGliY28uYW14LnJ0Lmh0dHBjb25uZWN0b3IxLnBv
cnR9fS81LjQtQ29uc3VtZXIvPC93c2E6VG8+DQoJPHdzYTpBY3Rpb24+c2F5SGVsbG88L3dzYTpB
Y3Rpb24+DQogICA8L3NvYXBlbnY6SGVhZGVyPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICAgIDxi
YXQ6c2F5SGVsbG8+DQogICAgICAgICA8aW5wdXRTdHJpbmc+DQogICAgICAgICAgICA8aGVsOmlu
cHV0U3RyaW5nPnt7aW5wdXQxfX08L2hlbDppbnB1dFN0cmluZz4NCiAgICAgICAgPC9pbnB1dFN0
cmluZz4NCiAgICAgICAgPGZpcnN0TmFtZT4NCiAgICAgICAgIAk8aGVsOkhlbGxvUmVxdWVzdD57
e25hbWV9fTwvaGVsOkhlbGxvUmVxdWVzdD4NCiAgICAgICAgPC9maXJzdE5hbWU+DQogICAgICA8
L2JhdDpzYXlIZWxsbz4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert137" type="com.itko.lisa.test.CheckResultContains">
<log>Look for {{name}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Hi {{name}}</param>
</CheckResult>

    </Node>


    <Node name="Consumer-UnDeclaredFault-A-Request" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="DeclaredFault-A-Request" > 

<graphx>130</graphx>
<graphy>130</graphy>
<url>http://{{host1}}:{{port2}}/5.4-Consumer/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0idXJuOmFteDpRQUVudmlyb25tZW50L0JBVF81
XzRfQ29uc3VtZXIuYXBwIiB4bWxuczpoZWw9Imh0dHA6Ly9ucy50aWJjby5jb20vSGVsbG8vIiB4
bWxuczp3c2E9Imh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZyI+DQogICA8c29h
cGVudjpIZWFkZXI+DQoJPHdzYTpNZXNzYWdlSUQ+dXVpZDo2QjM5RkM0MC1DQTQ3LTEwNjctQjMx
LUpJR0FSMDBERDAxMDZBPC93c2E6TWVzc2FnZUlEPg0KCTx3c2E6UmVwbHlUbz4NCgkJPHdzYTpB
ZGRyZXNzPmh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZy9hbm9ueW1vdXM8L3dz
YTpBZGRyZXNzPg0KCTwvd3NhOlJlcGx5VG8+DQogICAgPHdzYTpGYXVsdFRvPg0KCQk8d3NhOkFk
ZHJlc3M+aHR0cDovL2xvY2FsaG9zdDoxMTExLzwvd3NhOkFkZHJlc3M+DQoJPC93c2E6RmF1bHRU
bz4NCgk8d3NhOlRvPmh0dHA6Ly97e3RpYmNvLmFteC5ydC5odHRwY29ubmVjdG9yMS5ob3N0fX06
e3t0aWJjby5hbXgucnQuaHR0cGNvbm5lY3RvcjEucG9ydH19LzUuNC1Db25zdW1lci88L3dzYTpU
bz4NCgk8d3NhOkFjdGlvbj5zYXlIZWxsbzwvd3NhOkFjdGlvbj4NCiAgIDwvc29hcGVudjpIZWFk
ZXI+DQogICA8c29hcGVudjpCb2R5Pg0KICAgICAgPGJhdDpzYXlIZWxsbz4NCiAgICAgICAgIDxp
bnB1dFN0cmluZz4NCiAgICAgICAgICAgIDxoZWw6aW5wdXRTdHJpbmc+e3tpbnB1dDJ9fTwvaGVs
OmlucHV0U3RyaW5nPg0KICAgICAgICA8L2lucHV0U3RyaW5nPg0KICAgICAgICA8Zmlyc3ROYW1l
Pg0KICAgICAgICAgCTxoZWw6SGVsbG9SZXF1ZXN0Pnt7bmFtZX19PC9oZWw6SGVsbG9SZXF1ZXN0
Pg0KICAgICAgICA8L2ZpcnN0TmFtZT4NCiAgICAgIDwvYmF0OnNheUhlbGxvPg0KICAgPC9zb2Fw
ZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert161" type="com.itko.lisa.test.CheckResultRegEx">
<log>Assert [Assert161] fired false of type Result as String Contains Expression</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>&lt;faultstring&gt;java.lang.ArithmeticException: .* by zero&lt;/faultstring&gt;</param>
</CheckResult>

    </Node>


    <Node name="DeclaredFault-A-Request" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="UnDeclaredFault-A-Request" > 

<graphx>250</graphx>
<graphy>250</graphy>
<url>http://{{host1}}:{{port2}}/5.4-Consumer/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0idXJuOmFteDpRQUVudmlyb25tZW50L0JBVF81
XzRfQ29uc3VtZXIuYXBwIiB4bWxuczpoZWw9Imh0dHA6Ly9ucy50aWJjby5jb20vSGVsbG8vIiB4
bWxuczp3c2E9Imh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZyI+DQogICA8c29h
cGVudjpIZWFkZXI+DQoJPHdzYTpNZXNzYWdlSUQ+dXVpZDo2QjM5RkM0MC1DQTQ3LTEwNjctQjMx
LUpJR0FSMDBERDAxMDZBPC93c2E6TWVzc2FnZUlEPg0KCTx3c2E6UmVwbHlUbz4NCgkJPHdzYTpB
ZGRyZXNzPmh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZy9hbm9ueW1vdXM8L3dz
YTpBZGRyZXNzPg0KCTwvd3NhOlJlcGx5VG8+DQogICAgPHdzYTpGYXVsdFRvPg0KCQk8d3NhOkFk
ZHJlc3M+aHR0cDovL2xvY2FsaG9zdDoxMTExLzwvd3NhOkFkZHJlc3M+DQoJPC93c2E6RmF1bHRU
bz4NCiAgICA8d3NhOlRvPmh0dHA6Ly97e3RpYmNvLmFteC5ydC5odHRwY29ubmVjdG9yMS5ob3N0
fX06e3t0aWJjby5hbXgucnQuaHR0cGNvbm5lY3RvcjEucG9ydH19LzUuNC1Db25zdW1lci88L3dz
YTpUbz4NCgk8d3NhOkFjdGlvbj5zYXlIZWxsbzwvd3NhOkFjdGlvbj4NCiAgIDwvc29hcGVudjpI
ZWFkZXI+DQogICA8c29hcGVudjpCb2R5Pg0KICAgICAgPGJhdDpzYXlIZWxsbz4NCiAgICAgICAg
IDxpbnB1dFN0cmluZz4NCiAgICAgICAgICAgIDxoZWw6aW5wdXRTdHJpbmc+e3tpbnB1dDN9fTwv
aGVsOmlucHV0U3RyaW5nPg0KICAgICAgICA8L2lucHV0U3RyaW5nPg0KICAgICAgICA8Zmlyc3RO
YW1lPg0KICAgICAgICAgCTxoZWw6SGVsbG9SZXF1ZXN0Pnt7bmFtZX19PC9oZWw6SGVsbG9SZXF1
ZXN0Pg0KICAgICAgICA8L2ZpcnN0TmFtZT4NCiAgICAgIDwvYmF0OnNheUhlbGxvPg0KICAgPC9z
b2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert209" type="com.itko.lisa.test.CheckResultContains">
<log>Look for &lt;faultstring&gt;DeclaredFaultCity fault for name :{{name}}&lt;/faultstring&gt;</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>&lt;faultstring&gt;DeclaredFaultCity fault for name :{{name}}&lt;/faultstring&gt;</param>
</CheckResult>

    </Node>


    <Node name="UnDeclaredFault-A-Request" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="NoDetailFault-A-Request" > 

<graphx>370</graphx>
<graphy>370</graphy>
<url>http://{{host1}}:{{port2}}/5.4-Consumer/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0idXJuOmFteDpRQUVudmlyb25tZW50L0JBVF81
XzRfQ29uc3VtZXIuYXBwIiB4bWxuczpoZWw9Imh0dHA6Ly9ucy50aWJjby5jb20vSGVsbG8vIiB4
bWxuczp3c2E9Imh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZyI+DQogICA8c29h
cGVudjpIZWFkZXI+DQoJPHdzYTpNZXNzYWdlSUQ+dXVpZDo2QjM5RkM0MC1DQTQ3LTEwNjctQjMx
LUpJR0FSMDBERDAxMDZBPC93c2E6TWVzc2FnZUlEPg0KCTx3c2E6UmVwbHlUbz4NCgkJPHdzYTpB
ZGRyZXNzPmh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZy9hbm9ueW1vdXM8L3dz
YTpBZGRyZXNzPg0KCTwvd3NhOlJlcGx5VG8+DQogICAgPHdzYTpGYXVsdFRvPg0KCQk8d3NhOkFk
ZHJlc3M+aHR0cDovL2xvY2FsaG9zdDo5OTk5Lzwvd3NhOkFkZHJlc3M+DQoJPC93c2E6RmF1bHRU
bz4NCgk8d3NhOlRvPmh0dHA6Ly97e3RpYmNvLmFteC5ydC5odHRwY29ubmVjdG9yMS5ob3N0fX06
e3t0aWJjby5hbXgucnQuaHR0cGNvbm5lY3RvcjEucG9ydH19LzUuNC1Db25zdW1lci88L3dzYTpU
bz4NCgk8d3NhOkFjdGlvbj5zYXlIZWxsbzwvd3NhOkFjdGlvbj4NCiAgIDwvc29hcGVudjpIZWFk
ZXI+DQogICA8c29hcGVudjpCb2R5Pg0KICAgICAgPGJhdDpzYXlIZWxsbz4NCiAgICAgICAgIDxp
bnB1dFN0cmluZz4NCiAgICAgICAgICAgIDxoZWw6aW5wdXRTdHJpbmc+e3tpbnB1dDR9fTwvaGVs
OmlucHV0U3RyaW5nPg0KICAgICAgICA8L2lucHV0U3RyaW5nPg0KICAgICAgICA8Zmlyc3ROYW1l
Pg0KICAgICAgICAgCTxoZWw6SGVsbG9SZXF1ZXN0Pnt7bmFtZX19PC9oZWw6SGVsbG9SZXF1ZXN0
Pg0KICAgICAgICA8L2ZpcnN0TmFtZT4NCiAgICAgIDwvYmF0OnNheUhlbGxvPg0KICAgPC9zb2Fw
ZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert197" type="com.itko.lisa.test.CheckResultRegEx">
<log>Assert [Assert197] fired false of type Result as String Contains Expression</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>&lt;faultstring&gt;java.lang.ArithmeticException: .* by zero&lt;/faultstring&gt;</param>
</CheckResult>

    </Node>


    <Node name="NoDetailFault-A-Request" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="valid-NA-Request" > 

<graphx>490</graphx>
<graphy>490</graphy>
<url>http://{{host1}}:{{port2}}/5.4-Consumer/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0idXJuOmFteDpRQUVudmlyb25tZW50L0JBVF81
XzRfQ29uc3VtZXIuYXBwIiB4bWxuczpoZWw9Imh0dHA6Ly9ucy50aWJjby5jb20vSGVsbG8vIiB4
bWxuczp3c2E9Imh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZyI+DQogICA8c29h
cGVudjpIZWFkZXI+DQoJPHdzYTpNZXNzYWdlSUQ+dXVpZDo2QjM5RkM0MC1DQTQ3LTEwNjctQjMx
LUpJR0FSMDBERDAxMDZBPC93c2E6TWVzc2FnZUlEPg0KCTx3c2E6UmVwbHlUbz4NCgkJPHdzYTpB
ZGRyZXNzPmh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZy9hbm9ueW1vdXM8L3dz
YTpBZGRyZXNzPg0KCTwvd3NhOlJlcGx5VG8+DQoJPHdzYTpUbz5odHRwOi8ve3t0aWJjby5hbXgu
cnQuaHR0cGNvbm5lY3RvcjEuaG9zdH19Ont7dGliY28uYW14LnJ0Lmh0dHBjb25uZWN0b3IxLnBv
cnR9fS81LjQtQ29uc3VtZXIvPC93c2E6VG8+DQoJPHdzYTpBY3Rpb24+c2F5SGVsbG88L3dzYTpB
Y3Rpb24+DQogICA8L3NvYXBlbnY6SGVhZGVyPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICAgIDxi
YXQ6c2F5SGVsbG8+DQogICAgICAgICA8aW5wdXRTdHJpbmc+DQogICAgICAgICAgICA8aGVsOmlu
cHV0U3RyaW5nPnt7aW5wdXQ1fX08L2hlbDppbnB1dFN0cmluZz4NCiAgICAgICAgPC9pbnB1dFN0
cmluZz4NCiAgICAgICAgPGZpcnN0TmFtZT4NCiAgICAgICAgIAk8aGVsOkhlbGxvUmVxdWVzdD57
e25hbWV9fTwvaGVsOkhlbGxvUmVxdWVzdD4NCiAgICAgICAgPC9maXJzdE5hbWU+DQogICAgICA8
L2JhdDpzYXlIZWxsbz4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="valid-NA-Request" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="ReplyTo-Listner" > 

<graphx>610</graphx>
<graphy>610</graphy>
<url>http://{{host1}}:{{port3}}/addressPort/</url>
<action>AddressOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0idXJuOmFteDpRQUVudmlyb25tZW50L0JBVF81
XzRfUHJvdmlkZXIuYXBwIiB4bWxuczphZGQ9Imh0dHA6Ly90aWJjby5jb20vbWF0cml4L3FhL3hz
ZC9hZGRyZXNzIiB4bWxuczp3c2E9Imh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2lu
ZyI+DQogICA8c29hcGVudjpIZWFkZXI+DQoJPHdzYTpNZXNzYWdlSUQ+dXVpZDo2QjM5RkM0MC1D
QTQ3LTEwNjctQjMxLUpJR0FSMDBERDAxMDZBPC93c2E6TWVzc2FnZUlEPg0KCTx3c2E6UmVwbHlU
bz4NCgkJPHdzYTpBZGRyZXNzPmh0dHA6Ly97e1dTQS1MaXN0bmVySG9zdH19Ont7V1NBLXJlcGx5
VG99fS88L3dzYTpBZGRyZXNzPg0KCTwvd3NhOlJlcGx5VG8+DQoJPHdzYTpGYXVsdFRvPg0KCQk8
d3NhOkFkZHJlc3M+aHR0cDovL3t7V1NBLUxpc3RuZXJIb3N0fX06e3tXU0EtZmF1bHRUb319Lzwv
d3NhOkFkZHJlc3M+DQoJPC93c2E6RmF1bHRUbz4NCgk8d3NhOlRvPmh0dHA6Ly97e3RpYmNvLmFt
eC5ydC5odHRwY29ubmVjdG9yMi5ob3N0fX06e3t0aWJjby5hbXgucnQuaHR0cGNvbm5lY3RvcjIu
cG9ydH19L2FkZHJlc3NQb3J0Lzwvd3NhOlRvPg0KCTx3c2E6QWN0aW9uPkFkZHJlc3NPcGVyYXRp
b248L3dzYTpBY3Rpb24+DQogICA8L3NvYXBlbnY6SGVhZGVyPg0KICAgPHNvYXBlbnY6Qm9keT4N
CiAgICA8YmF0OkFkZHJlc3NPcGVyYXRpb24+DQoJPEluUGFydD4NCgkgPGFkZDpBZGRyZXNzX0Vs
ZW1lbnQ+DQogICAgICAgICAgICA8YWRkOk5hbWU+e3tuYW1lfX08L2FkZDpOYW1lPg0KICAgICAg
ICAgICAgPGFkZDpBZGRyZXNzPnt7YWRkcmVzc319PC9hZGQ6QWRkcmVzcz4NCiAgICAgICAgICAg
IDxhZGQ6Q2l0eT57e2lucHV0MX19PC9hZGQ6Q2l0eT4NCiAgICAgICAgICAgIDxhZGQ6U3RhdGU+
e3tzdGF0ZX19PC9hZGQ6U3RhdGU+DQogICAgICAgICAgICA8YWRkOlppcD57e3ppcH19PC9hZGQ6
WmlwPg0KICAgICAgICAgPC9hZGQ6QWRkcmVzc19FbGVtZW50Pg0KCTwvSW5QYXJ0Pg0KICAgIDwv
YmF0OkFkZHJlc3NPcGVyYXRpb24+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZl
bG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="ReplyTo-Listner" log=""
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="DeclaredFault-NA-Request" > 

<graphx>14</graphx>
<graphy>399</graphy>
<url>
<proto>http</proto>
<host>{{WSA-ListnerHost}}</host>
<port>{{WSA-replyToLisaListner}}</port>
<path>/</path>
</url>
<images>false</images>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert108" type="com.itko.lisa.test.CheckResultContains">
<log>Expected &quot;{{name}}&quot; in the response. Did not find it.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{name}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert134" type="com.itko.lisa.test.CheckResultContains">
<log>Expected &quot;{{address}}&quot; in the response. Did not find it.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{address}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert186" type="com.itko.lisa.test.CheckResultContains">
<log>Expected &quot;{{state}}&quot; in the response. Did not find it.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{state}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert268" type="com.itko.lisa.test.CheckResultContains">
<log>Expected &quot;{{zip}}&quot; in the response. Did not find it.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{zip}}</param>
</CheckResult>

    </Node>


    <Node name="DeclaredFault-NA-Request" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="FaultTo-1-Listner" > 

<graphx>730</graphx>
<graphy>730</graphy>
<url>http://{{host1}}:{{tibco.amx.rt.httpconnector2.port}}/addressPort/</url>
<action>AddressOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0idXJuOmFteDpRQUVudmlyb25tZW50L0JBVF81
XzRfUHJvdmlkZXIuYXBwIiB4bWxuczphZGQ9Imh0dHA6Ly90aWJjby5jb20vbWF0cml4L3FhL3hz
ZC9hZGRyZXNzIiB4bWxuczp3c2E9Imh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2lu
ZyI+DQogICA8c29hcGVudjpIZWFkZXI+DQoJPHdzYTpNZXNzYWdlSUQ+dXVpZDo2QjM5RkM0MC1D
QTQ3LTEwNjctQjMxLUpJR0FSMDBERDAxMDZBPC93c2E6TWVzc2FnZUlEPg0KCTx3c2E6UmVwbHlU
bz4NCgkJPHdzYTpBZGRyZXNzPmh0dHA6Ly97e1dTQS1MaXN0bmVySG9zdH19Ont7V1NBLXJlcGx5
VG99fS88L3dzYTpBZGRyZXNzPg0KCTwvd3NhOlJlcGx5VG8+DQoJPHdzYTpGYXVsdFRvPg0KCQk8
d3NhOkFkZHJlc3M+aHR0cDovL3t7V1NBLUxpc3RuZXJIb3N0fX06e3tXU0EtZmF1bHRUb319Lzwv
d3NhOkFkZHJlc3M+DQoJPC93c2E6RmF1bHRUbz4NCgk8d3NhOlRvPmh0dHA6Ly97e3RpYmNvLmFt
eC5ydC5odHRwY29ubmVjdG9yMi5ob3N0fX06e3t0aWJjby5hbXgucnQuaHR0cGNvbm5lY3RvcjIu
cG9ydH19L2FkZHJlc3NQb3J0Lzwvd3NhOlRvPg0KCTx3c2E6QWN0aW9uPkFkZHJlc3NPcGVyYXRp
b248L3dzYTpBY3Rpb24+DQogICA8L3NvYXBlbnY6SGVhZGVyPg0KICAgPHNvYXBlbnY6Qm9keT4N
CiAgICA8YmF0OkFkZHJlc3NPcGVyYXRpb24+DQoJPEluUGFydD4NCgkgPGFkZDpBZGRyZXNzX0Vs
ZW1lbnQ+DQogICAgICAgICAgICA8YWRkOk5hbWU+e3tuYW1lfX08L2FkZDpOYW1lPg0KICAgICAg
ICAgICAgPGFkZDpBZGRyZXNzPnt7YWRkcmVzc319PC9hZGQ6QWRkcmVzcz4NCiAgICAgICAgICAg
IDxhZGQ6Q2l0eT57e2lucHV0M319PC9hZGQ6Q2l0eT4NCiAgICAgICAgICAgIDxhZGQ6U3RhdGU+
e3tzdGF0ZX19PC9hZGQ6U3RhdGU+DQogICAgICAgICAgICA8YWRkOlppcD57e3ppcH19PC9hZGQ6
WmlwPg0KICAgICAgICAgPC9hZGQ6QWRkcmVzc19FbGVtZW50Pg0KCTwvSW5QYXJ0Pg0KICAgIDwv
YmF0OkFkZHJlc3NPcGVyYXRpb24+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZl
bG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="FaultTo-1-Listner" log=""
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="UnDeclaredFault-NA-Request" > 

<graphx>14</graphx>
<graphy>399</graphy>
<url>
<proto>http</proto>
<host>{{WSA-ListnerHost}}</host>
<port>{{WSA-faultToLisaListner}}</port>
<path>/</path>
</url>
<images>false</images>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert282" type="com.itko.lisa.test.CheckResultContains">
<log>Look for DeclaredFaultCity fault for name :{{name}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>DeclaredFaultCity fault for name :{{name}}</param>
</CheckResult>

    </Node>


    <Node name="UnDeclaredFault-NA-Request" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="FaultTo-2-Listner" > 

<graphx>850</graphx>
<graphy>850</graphy>
<url>http://{{host1}}:{{tibco.amx.rt.httpconnector2.port}}/addressPort/</url>
<action>AddressOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0idXJuOmFteDpRQUVudmlyb25tZW50L0JBVF81
XzRfUHJvdmlkZXIuYXBwIiB4bWxuczphZGQ9Imh0dHA6Ly90aWJjby5jb20vbWF0cml4L3FhL3hz
ZC9hZGRyZXNzIiB4bWxuczp3c2E9Imh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2lu
ZyI+DQogICA8c29hcGVudjpIZWFkZXI+DQoJPHdzYTpNZXNzYWdlSUQ+dXVpZDo2QjM5RkM0MC1D
QTQ3LTEwNjctQjMxLUpJR0FSMDBERDAxMDZBPC93c2E6TWVzc2FnZUlEPg0KCTx3c2E6UmVwbHlU
bz4NCgkJPHdzYTpBZGRyZXNzPmh0dHA6Ly97e1dTQS1MaXN0bmVySG9zdH19Ont7V1NBLXJlcGx5
VG99fS88L3dzYTpBZGRyZXNzPg0KCTwvd3NhOlJlcGx5VG8+DQoJPHdzYTpGYXVsdFRvPg0KCQk8
d3NhOkFkZHJlc3M+aHR0cDovL3t7V1NBLUxpc3RuZXJIb3N0fX06e3tXU0EtZmF1bHRUb319Lzwv
d3NhOkFkZHJlc3M+DQoJPC93c2E6RmF1bHRUbz4NCgk8d3NhOlRvPmh0dHA6Ly97e3RpYmNvLmFt
eC5ydC5odHRwY29ubmVjdG9yMi5ob3N0fX06e3t0aWJjby5hbXgucnQuaHR0cGNvbm5lY3RvcjIu
cG9ydH19L2FkZHJlc3NQb3J0Lzwvd3NhOlRvPg0KCTx3c2E6QWN0aW9uPkFkZHJlc3NPcGVyYXRp
b248L3dzYTpBY3Rpb24+DQogICA8L3NvYXBlbnY6SGVhZGVyPg0KICAgPHNvYXBlbnY6Qm9keT4N
CiAgICA8YmF0OkFkZHJlc3NPcGVyYXRpb24+DQoJPEluUGFydD4NCgkgPGFkZDpBZGRyZXNzX0Vs
ZW1lbnQ+DQogICAgICAgICAgICA8YWRkOk5hbWU+e3tuYW1lfX08L2FkZDpOYW1lPg0KICAgICAg
ICAgICAgPGFkZDpBZGRyZXNzPnt7YWRkcmVzc319PC9hZGQ6QWRkcmVzcz4NCiAgICAgICAgICAg
IDxhZGQ6Q2l0eT57e2lucHV0NH19PC9hZGQ6Q2l0eT4NCiAgICAgICAgICAgIDxhZGQ6U3RhdGU+
e3tzdGF0ZX19PC9hZGQ6U3RhdGU+DQogICAgICAgICAgICA8YWRkOlppcD57e3ppcH19PC9hZGQ6
WmlwPg0KICAgICAgICAgPC9hZGQ6QWRkcmVzc19FbGVtZW50Pg0KCTwvSW5QYXJ0Pg0KICAgIDwv
YmF0OkFkZHJlc3NPcGVyYXRpb24+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZl
bG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="FaultTo-2-Listner" log=""
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="undeployApp" > 

<graphx>14</graphx>
<graphy>399</graphy>
<url>
<proto>http</proto>
<host>{{WSA-ListnerHost}}</host>
<port>{{WSA-faultToLisaListner}}</port>
<path>/</path>
</url>
<images>false</images>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert233" type="com.itko.lisa.test.CheckResultRegEx">
<log>Assert [Assert233] fired false of type Result as String Contains Expression</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>&lt;faultstring&gt;java.lang.ArithmeticException: .* by zero&lt;/faultstring&gt;</param>
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
    <value>{{tibco.test.case.log.dir}}/ant_undeploy.log</value>
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
<log>Assert [Assert145] fired false of type Result as String Contains Given String</log>
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

<graphx>1885</graphx>
<graphy>4145</graphy>
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
    <value>{{tibco.test.case.log.dir}}/ant_deploy.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>setup.app</value>
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
<log>Assert [Assert145] fired false of type Result as String Contains Given String</log>
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

<graphx>10</graphx>
<graphy>10</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>130</graphx>
<graphy>130</graphy>
    </Node>


</TestCase>
