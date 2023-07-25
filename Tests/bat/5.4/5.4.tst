<?xml version="1.0" ?>

<TestCase name="5.4" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/15/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/16/2023" host="na2devasgaks01" />
</meta>

<id>52c38dd9</id>
<Documentation>Description : Test WS Addressing (Anonymous &amp; Non Anonymous) with Declared and Undeclared fault&#13;&#10;Scenario: &#9;Composite 1: &#13;&#10;&#9;&#9;&#9;SOAP BT(HTTP) (Anonymous ws addressing) &lt;-&gt; JAVA &lt;-&gt; SOAP BT(HTTP) (Non Anonymous ws addressing) &#13;&#10;&#9;&#9;&#9;Composite 2:&#9;&#13;&#10;&#9;&#9;&#9;SOAP BT(HTTP) (Non Anonymous ws addressing) &lt;-&gt; JAVA &#13;&#10;MEP: In-Out &#13;&#10;SOAP Version: 1.1 &#13;&#10;SOAP Style/Encoding: RPC/Literal</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9MTQ5NTkyNzEwMg==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/amxconfig.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/amxbuild.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

    <Node name="PropReaderStep" log=""
          type="com.itko.lisa.test.PropReaderNode" 
          version="1" 
          uid="52c38dd9-PropReaderStep" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="createdaa" > 

<file>{{LISA_TC_PATH}}/data_g11n.txt</file>
<charset>UTF-8</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="createdaa" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="52c38dd9-createdaa" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="deployApp" > 

<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/amx/design/InvokeEclipseAntWithCondition.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>studioHome</key>
    <value>{{TIBCO_BS_HOME}}</value>
    <name>BusinessStudio home folder. Required.</name>
    </Parameter>
    <Parameter>
    <key>projectBaseDir</key>
    <value></value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFile</key>
    <value>{{tibco.amx.buildfile.tc}}</value>
    <name>Absolute path to the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>target</key>
    <value>ImportAndRegenerateDAA</value>
    <name>Name of the build target to be invoked.</name>
    </Parameter>
    <Parameter>
    <key>data</key>
    <value>{{tibco.test.case.log.dir}}/WS</value>
    <name>Absolute path to the eclipse workspace. optional</name>
    </Parameter>
    <Parameter>
    <key>propertyFile</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>TIBCO_AMX_LIBRARY={{=TIBCO_AMX_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}},soa.project.loc={{=soa_project_loc.replace(&quot;\\&quot;,&quot;/&quot;)}},java.project.loc={{=java_project_loc.replace(&quot;\\&quot;,&quot;/&quot;)}},projectName={{projectName}},compositeName1={{compositeName1}},daa1={{daa1}},compositeName2={{compositeName2}},daa2={{daa2}},featureid={{featureid}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>1800</value>
    <name>Number of seconds to wait for completion. Required.</name>
    </Parameter>
    <Parameter>
    <key>userCondition</key>
    <value>{{=(regenerateDAA.equals(true))?true:false}}</value>
    <name>User condition. If assessed to true DAA generation will proceed else skipped</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="52c38dd9-deployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="valid-A-Request" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application on host finished.....</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
    </Node>


    <Node name="valid-A-Request" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="52c38dd9-valid-A-Request" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Consumer-UnDeclaredFault-A-Request" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert137" type="com.itko.lisa.test.CheckResultContains">
<log>Look for {{name}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Hi {{name}}</param>
</CheckResult>

<url>http://{{host1}}:{{port2}}/5.4-Consumer/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0idXJuOmFteDpRQUVudmlyb25tZW50L0JBVF81XzRfQ29uc3VtZXIuYXBwIiB4bWxuczpoZWw9Imh0dHA6Ly9ucy50aWJjby5jb20vSGVsbG8vIiB4bWxuczp3c2E9Imh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZyI+DQogICA8c29hcGVudjpIZWFkZXI+DQoJPHdzYTpNZXNzYWdlSUQ+dXVpZDo2QjM5RkM0MC1DQTQ3LTEwNjctQjMxLUpJR0FSMDBERDAxMDZBPC93c2E6TWVzc2FnZUlEPg0KCTx3c2E6UmVwbHlUbz4NCgkJPHdzYTpBZGRyZXNzPmh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZy9hbm9ueW1vdXM8L3dzYTpBZGRyZXNzPg0KCTwvd3NhOlJlcGx5VG8+DQoJPHdzYTpUbz5odHRwOi8ve3t0aWJjby5hbXgucnQuaHR0cGNvbm5lY3RvcjEuaG9zdH19Ont7dGliY28uYW14LnJ0Lmh0dHBjb25uZWN0b3IxLnBvcnR9fS81LjQtQ29uc3VtZXIvPC93c2E6VG8+DQoJPHdzYTpBY3Rpb24+c2F5SGVsbG88L3dzYTpBY3Rpb24+DQogICA8L3NvYXBlbnY6SGVhZGVyPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICAgIDxiYXQ6c2F5SGVsbG8+DQogICAgICAgICA8aW5wdXRTdHJpbmc+DQogICAgICAgICAgICA8aGVsOmlucHV0U3RyaW5nPnt7aW5wdXQxfX08L2hlbDppbnB1dFN0cmluZz4NCiAgICAgICAgPC9pbnB1dFN0cmluZz4NCiAgICAgICAgPGZpcnN0TmFtZT4NCiAgICAgICAgIAk8aGVsOkhlbGxvUmVxdWVzdD57e25hbWV9fTwvaGVsOkhlbGxvUmVxdWVzdD4NCiAgICAgICAgPC9maXJzdE5hbWU+DQogICAgICA8L2JhdDpzYXlIZWxsbz4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="Consumer-UnDeclaredFault-A-Request" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="52c38dd9-Consumer-UnDeclaredFault-A-Request" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="DeclaredFault-A-Request" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert197" type="com.itko.lisa.test.CheckResultRegEx">
<log>Assert [Assert197] fired false of type Result as String Contains Expression</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>&lt;faultstring&gt;java.lang.ArithmeticException: .* by zero&lt;/faultstring&gt;</param>
</CheckResult>

<url>http://{{host1}}:{{port2}}/5.4-Consumer/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0idXJuOmFteDpRQUVudmlyb25tZW50L0JBVF81XzRfQ29uc3VtZXIuYXBwIiB4bWxuczpoZWw9Imh0dHA6Ly9ucy50aWJjby5jb20vSGVsbG8vIiB4bWxuczp3c2E9Imh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZyI+DQogICA8c29hcGVudjpIZWFkZXI+DQoJPHdzYTpNZXNzYWdlSUQ+dXVpZDo2QjM5RkM0MC1DQTQ3LTEwNjctQjMxLUpJR0FSMDBERDAxMDZBPC93c2E6TWVzc2FnZUlEPg0KCTx3c2E6UmVwbHlUbz4NCgkJPHdzYTpBZGRyZXNzPmh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZy9hbm9ueW1vdXM8L3dzYTpBZGRyZXNzPg0KCTwvd3NhOlJlcGx5VG8+DQogICAgPHdzYTpGYXVsdFRvPg0KCQk8d3NhOkFkZHJlc3M+aHR0cDovL2xvY2FsaG9zdDoxMTExLzwvd3NhOkFkZHJlc3M+DQoJPC93c2E6RmF1bHRUbz4NCgk8d3NhOlRvPmh0dHA6Ly97e3RpYmNvLmFteC5ydC5odHRwY29ubmVjdG9yMS5ob3N0fX06e3t0aWJjby5hbXgucnQuaHR0cGNvbm5lY3RvcjEucG9ydH19LzUuNC1Db25zdW1lci88L3dzYTpUbz4NCgk8d3NhOkFjdGlvbj5zYXlIZWxsbzwvd3NhOkFjdGlvbj4NCiAgIDwvc29hcGVudjpIZWFkZXI+DQogICA8c29hcGVudjpCb2R5Pg0KICAgICAgPGJhdDpzYXlIZWxsbz4NCiAgICAgICAgIDxpbnB1dFN0cmluZz4NCiAgICAgICAgICAgIDxoZWw6aW5wdXRTdHJpbmc+e3tpbnB1dDJ9fTwvaGVsOmlucHV0U3RyaW5nPg0KICAgICAgICA8L2lucHV0U3RyaW5nPg0KICAgICAgICA8Zmlyc3ROYW1lPg0KICAgICAgICAgCTxoZWw6SGVsbG9SZXF1ZXN0Pnt7bmFtZX19PC9oZWw6SGVsbG9SZXF1ZXN0Pg0KICAgICAgICA8L2ZpcnN0TmFtZT4NCiAgICAgIDwvYmF0OnNheUhlbGxvPg0KICAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="DeclaredFault-A-Request" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="52c38dd9-DeclaredFault-A-Request" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="UnDeclaredFault-A-Request" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert209" type="com.itko.lisa.test.CheckResultContains">
<log>Look for &lt;faultstring&gt;DeclaredFaultCity fault for name :{{name}}&lt;/faultstring&gt;</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>&lt;faultstring&gt;DeclaredFaultCity fault for name :{{name}}&lt;/faultstring&gt;</param>
</CheckResult>

<url>http://{{host1}}:{{port2}}/5.4-Consumer/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0idXJuOmFteDpRQUVudmlyb25tZW50L0JBVF81XzRfQ29uc3VtZXIuYXBwIiB4bWxuczpoZWw9Imh0dHA6Ly9ucy50aWJjby5jb20vSGVsbG8vIiB4bWxuczp3c2E9Imh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZyI+DQogICA8c29hcGVudjpIZWFkZXI+DQoJPHdzYTpNZXNzYWdlSUQ+dXVpZDo2QjM5RkM0MC1DQTQ3LTEwNjctQjMxLUpJR0FSMDBERDAxMDZBPC93c2E6TWVzc2FnZUlEPg0KCTx3c2E6UmVwbHlUbz4NCgkJPHdzYTpBZGRyZXNzPmh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZy9hbm9ueW1vdXM8L3dzYTpBZGRyZXNzPg0KCTwvd3NhOlJlcGx5VG8+DQogICAgPHdzYTpGYXVsdFRvPg0KCQk8d3NhOkFkZHJlc3M+aHR0cDovL2xvY2FsaG9zdDoxMTExLzwvd3NhOkFkZHJlc3M+DQoJPC93c2E6RmF1bHRUbz4NCiAgICA8d3NhOlRvPmh0dHA6Ly97e3RpYmNvLmFteC5ydC5odHRwY29ubmVjdG9yMS5ob3N0fX06e3t0aWJjby5hbXgucnQuaHR0cGNvbm5lY3RvcjEucG9ydH19LzUuNC1Db25zdW1lci88L3dzYTpUbz4NCgk8d3NhOkFjdGlvbj5zYXlIZWxsbzwvd3NhOkFjdGlvbj4NCiAgIDwvc29hcGVudjpIZWFkZXI+DQogICA8c29hcGVudjpCb2R5Pg0KICAgICAgPGJhdDpzYXlIZWxsbz4NCiAgICAgICAgIDxpbnB1dFN0cmluZz4NCiAgICAgICAgICAgIDxoZWw6aW5wdXRTdHJpbmc+e3tpbnB1dDN9fTwvaGVsOmlucHV0U3RyaW5nPg0KICAgICAgICA8L2lucHV0U3RyaW5nPg0KICAgICAgICA8Zmlyc3ROYW1lPg0KICAgICAgICAgCTxoZWw6SGVsbG9SZXF1ZXN0Pnt7bmFtZX19PC9oZWw6SGVsbG9SZXF1ZXN0Pg0KICAgICAgICA8L2ZpcnN0TmFtZT4NCiAgICAgIDwvYmF0OnNheUhlbGxvPg0KICAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="UnDeclaredFault-A-Request" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="52c38dd9-UnDeclaredFault-A-Request" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="NoDetailFault-A-Request" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert197" type="com.itko.lisa.test.CheckResultRegEx">
<log>Assert [Assert197] fired false of type Result as String Contains Expression</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>&lt;faultstring&gt;java.lang.ArithmeticException: .* by zero&lt;/faultstring&gt;</param>
</CheckResult>

<url>http://{{host1}}:{{port2}}/5.4-Consumer/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0idXJuOmFteDpRQUVudmlyb25tZW50L0JBVF81XzRfQ29uc3VtZXIuYXBwIiB4bWxuczpoZWw9Imh0dHA6Ly9ucy50aWJjby5jb20vSGVsbG8vIiB4bWxuczp3c2E9Imh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZyI+DQogICA8c29hcGVudjpIZWFkZXI+DQoJPHdzYTpNZXNzYWdlSUQ+dXVpZDo2QjM5RkM0MC1DQTQ3LTEwNjctQjMxLUpJR0FSMDBERDAxMDZBPC93c2E6TWVzc2FnZUlEPg0KCTx3c2E6UmVwbHlUbz4NCgkJPHdzYTpBZGRyZXNzPmh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZy9hbm9ueW1vdXM8L3dzYTpBZGRyZXNzPg0KCTwvd3NhOlJlcGx5VG8+DQogICAgPHdzYTpGYXVsdFRvPg0KCQk8d3NhOkFkZHJlc3M+aHR0cDovL2xvY2FsaG9zdDo5OTk5Lzwvd3NhOkFkZHJlc3M+DQoJPC93c2E6RmF1bHRUbz4NCgk8d3NhOlRvPmh0dHA6Ly97e3RpYmNvLmFteC5ydC5odHRwY29ubmVjdG9yMS5ob3N0fX06e3t0aWJjby5hbXgucnQuaHR0cGNvbm5lY3RvcjEucG9ydH19LzUuNC1Db25zdW1lci88L3dzYTpUbz4NCgk8d3NhOkFjdGlvbj5zYXlIZWxsbzwvd3NhOkFjdGlvbj4NCiAgIDwvc29hcGVudjpIZWFkZXI+DQogICA8c29hcGVudjpCb2R5Pg0KICAgICAgPGJhdDpzYXlIZWxsbz4NCiAgICAgICAgIDxpbnB1dFN0cmluZz4NCiAgICAgICAgICAgIDxoZWw6aW5wdXRTdHJpbmc+e3tpbnB1dDR9fTwvaGVsOmlucHV0U3RyaW5nPg0KICAgICAgICA8L2lucHV0U3RyaW5nPg0KICAgICAgICA8Zmlyc3ROYW1lPg0KICAgICAgICAgCTxoZWw6SGVsbG9SZXF1ZXN0Pnt7bmFtZX19PC9oZWw6SGVsbG9SZXF1ZXN0Pg0KICAgICAgICA8L2ZpcnN0TmFtZT4NCiAgICAgIDwvYmF0OnNheUhlbGxvPg0KICAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="NoDetailFault-A-Request" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="52c38dd9-NoDetailFault-A-Request" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="valid-NA-Request" > 

<url>http://{{host1}}:{{port2}}/5.4-Consumer/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0idXJuOmFteDpRQUVudmlyb25tZW50L0JBVF81XzRfQ29uc3VtZXIuYXBwIiB4bWxuczpoZWw9Imh0dHA6Ly9ucy50aWJjby5jb20vSGVsbG8vIiB4bWxuczp3c2E9Imh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZyI+DQogICA8c29hcGVudjpIZWFkZXI+DQoJPHdzYTpNZXNzYWdlSUQ+dXVpZDo2QjM5RkM0MC1DQTQ3LTEwNjctQjMxLUpJR0FSMDBERDAxMDZBPC93c2E6TWVzc2FnZUlEPg0KCTx3c2E6UmVwbHlUbz4NCgkJPHdzYTpBZGRyZXNzPmh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZy9hbm9ueW1vdXM8L3dzYTpBZGRyZXNzPg0KCTwvd3NhOlJlcGx5VG8+DQoJPHdzYTpUbz5odHRwOi8ve3t0aWJjby5hbXgucnQuaHR0cGNvbm5lY3RvcjEuaG9zdH19Ont7dGliY28uYW14LnJ0Lmh0dHBjb25uZWN0b3IxLnBvcnR9fS81LjQtQ29uc3VtZXIvPC93c2E6VG8+DQoJPHdzYTpBY3Rpb24+c2F5SGVsbG88L3dzYTpBY3Rpb24+DQogICA8L3NvYXBlbnY6SGVhZGVyPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICAgIDxiYXQ6c2F5SGVsbG8+DQogICAgICAgICA8aW5wdXRTdHJpbmc+DQogICAgICAgICAgICA8aGVsOmlucHV0U3RyaW5nPnt7aW5wdXQ1fX08L2hlbDppbnB1dFN0cmluZz4NCiAgICAgICAgPC9pbnB1dFN0cmluZz4NCiAgICAgICAgPGZpcnN0TmFtZT4NCiAgICAgICAgIAk8aGVsOkhlbGxvUmVxdWVzdD57e25hbWV9fTwvaGVsOkhlbGxvUmVxdWVzdD4NCiAgICAgICAgPC9maXJzdE5hbWU+DQogICAgICA8L2JhdDpzYXlIZWxsbz4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="valid-NA-Request" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="52c38dd9-valid-NA-Request" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="ReplyTo-Listner" > 

<url>http://{{host1}}:{{tibco.amx.rt.httpconnector2.port}}/addressPort/</url>
<action>AddressOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0idXJuOmFteDpRQUVudmlyb25tZW50L0JBVF81XzRfUHJvdmlkZXIuYXBwIiB4bWxuczphZGQ9Imh0dHA6Ly90aWJjby5jb20vbWF0cml4L3FhL3hzZC9hZGRyZXNzIiB4bWxuczp3c2E9Imh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZyI+DQogICA8c29hcGVudjpIZWFkZXI+DQoJPHdzYTpNZXNzYWdlSUQ+dXVpZDo2QjM5RkM0MC1DQTQ3LTEwNjctQjMxLUpJR0FSMDBERDAxMDZBPC93c2E6TWVzc2FnZUlEPg0KCTx3c2E6UmVwbHlUbz4NCgkJPHdzYTpBZGRyZXNzPmh0dHA6Ly97e1dTQS1MaXN0bmVySG9zdH19Ont7V1NBLXJlcGx5VG99fS88L3dzYTpBZGRyZXNzPg0KCTwvd3NhOlJlcGx5VG8+DQoJPHdzYTpGYXVsdFRvPg0KCQk8d3NhOkFkZHJlc3M+aHR0cDovL3t7V1NBLUxpc3RuZXJIb3N0fX06e3tXU0EtZmF1bHRUb319Lzwvd3NhOkFkZHJlc3M+DQoJPC93c2E6RmF1bHRUbz4NCgk8d3NhOlRvPmh0dHA6Ly97e3RpYmNvLmFteC5ydC5odHRwY29ubmVjdG9yMi5ob3N0fX06e3t0aWJjby5hbXgucnQuaHR0cGNvbm5lY3RvcjIucG9ydH19L2FkZHJlc3NQb3J0Lzwvd3NhOlRvPg0KCTx3c2E6QWN0aW9uPkFkZHJlc3NPcGVyYXRpb248L3dzYTpBY3Rpb24+DQogICA8L3NvYXBlbnY6SGVhZGVyPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICA8YmF0OkFkZHJlc3NPcGVyYXRpb24+DQoJPEluUGFydD4NCgkgPGFkZDpBZGRyZXNzX0VsZW1lbnQ+DQogICAgICAgICAgICA8YWRkOk5hbWU+e3tuYW1lfX08L2FkZDpOYW1lPg0KICAgICAgICAgICAgPGFkZDpBZGRyZXNzPnt7YWRkcmVzc319PC9hZGQ6QWRkcmVzcz4NCiAgICAgICAgICAgIDxhZGQ6Q2l0eT57e2lucHV0MX19PC9hZGQ6Q2l0eT4NCiAgICAgICAgICAgIDxhZGQ6U3RhdGU+e3tzdGF0ZX19PC9hZGQ6U3RhdGU+DQogICAgICAgICAgICA8YWRkOlppcD57e3ppcH19PC9hZGQ6WmlwPg0KICAgICAgICAgPC9hZGQ6QWRkcmVzc19FbGVtZW50Pg0KCTwvSW5QYXJ0Pg0KICAgIDwvYmF0OkFkZHJlc3NPcGVyYXRpb24+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="ReplyTo-Listner" log=""
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          uid="52c38dd9-ReplyTo-Listner" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="DeclaredFault-NA-Request" > 


      <!-- Assertions -->
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

<url>
<proto>http</proto>
<host>{{WSA-ListnerHost}}</host>
<port>{{WSA-replyToLisaListner}}</port>
<path>/</path>
</url>
<images>false</images>
<sslInfo>
</sslInfo>
<encoding>UTF-8</encoding>
<params-saved-as-unicode>false</params-saved-as-unicode>
    </Node>


    <Node name="DeclaredFault-NA-Request" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="52c38dd9-DeclaredFault-NA-Request" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="FaultTo-1-Listner" > 

<url>http://{{host1}}:{{tibco.amx.rt.httpconnector2.port}}/addressPort/</url>
<action>AddressOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0idXJuOmFteDpRQUVudmlyb25tZW50L0JBVF81XzRfUHJvdmlkZXIuYXBwIiB4bWxuczphZGQ9Imh0dHA6Ly90aWJjby5jb20vbWF0cml4L3FhL3hzZC9hZGRyZXNzIiB4bWxuczp3c2E9Imh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZyI+DQogICA8c29hcGVudjpIZWFkZXI+DQoJPHdzYTpNZXNzYWdlSUQ+dXVpZDo2QjM5RkM0MC1DQTQ3LTEwNjctQjMxLUpJR0FSMDBERDAxMDZBPC93c2E6TWVzc2FnZUlEPg0KCTx3c2E6UmVwbHlUbz4NCgkJPHdzYTpBZGRyZXNzPmh0dHA6Ly97e1dTQS1MaXN0bmVySG9zdH19Ont7V1NBLXJlcGx5VG99fS88L3dzYTpBZGRyZXNzPg0KCTwvd3NhOlJlcGx5VG8+DQoJPHdzYTpGYXVsdFRvPg0KCQk8d3NhOkFkZHJlc3M+aHR0cDovL3t7V1NBLUxpc3RuZXJIb3N0fX06e3tXU0EtZmF1bHRUb319Lzwvd3NhOkFkZHJlc3M+DQoJPC93c2E6RmF1bHRUbz4NCgk8d3NhOlRvPmh0dHA6Ly97e3RpYmNvLmFteC5ydC5odHRwY29ubmVjdG9yMi5ob3N0fX06e3t0aWJjby5hbXgucnQuaHR0cGNvbm5lY3RvcjIucG9ydH19L2FkZHJlc3NQb3J0Lzwvd3NhOlRvPg0KCTx3c2E6QWN0aW9uPkFkZHJlc3NPcGVyYXRpb248L3dzYTpBY3Rpb24+DQogICA8L3NvYXBlbnY6SGVhZGVyPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICA8YmF0OkFkZHJlc3NPcGVyYXRpb24+DQoJPEluUGFydD4NCgkgPGFkZDpBZGRyZXNzX0VsZW1lbnQ+DQogICAgICAgICAgICA8YWRkOk5hbWU+e3tuYW1lfX08L2FkZDpOYW1lPg0KICAgICAgICAgICAgPGFkZDpBZGRyZXNzPnt7YWRkcmVzc319PC9hZGQ6QWRkcmVzcz4NCiAgICAgICAgICAgIDxhZGQ6Q2l0eT57e2lucHV0M319PC9hZGQ6Q2l0eT4NCiAgICAgICAgICAgIDxhZGQ6U3RhdGU+e3tzdGF0ZX19PC9hZGQ6U3RhdGU+DQogICAgICAgICAgICA8YWRkOlppcD57e3ppcH19PC9hZGQ6WmlwPg0KICAgICAgICAgPC9hZGQ6QWRkcmVzc19FbGVtZW50Pg0KCTwvSW5QYXJ0Pg0KICAgIDwvYmF0OkFkZHJlc3NPcGVyYXRpb24+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="FaultTo-1-Listner" log=""
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          uid="52c38dd9-FaultTo-1-Listner" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="UnDeclaredFault-NA-Request" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert282" type="com.itko.lisa.test.CheckResultContains">
<log>Look for DeclaredFaultCity fault for name :{{name}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>DeclaredFaultCity fault for name :{{name}}</param>
</CheckResult>

<url>
<proto>http</proto>
<host>{{WSA-ListnerHost}}</host>
<port>{{WSA-faultToLisaListner}}</port>
<path>/</path>
</url>
<images>false</images>
<sslInfo>
</sslInfo>
<encoding>UTF-8</encoding>
<params-saved-as-unicode>false</params-saved-as-unicode>
    </Node>


    <Node name="UnDeclaredFault-NA-Request" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="52c38dd9-UnDeclaredFault-NA-Request" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="FaultTo-2-Listner" > 

<url>http://{{host1}}:{{tibco.amx.rt.httpconnector2.port}}/addressPort/</url>
<action>AddressOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0idXJuOmFteDpRQUVudmlyb25tZW50L0JBVF81XzRfUHJvdmlkZXIuYXBwIiB4bWxuczphZGQ9Imh0dHA6Ly90aWJjby5jb20vbWF0cml4L3FhL3hzZC9hZGRyZXNzIiB4bWxuczp3c2E9Imh0dHA6Ly93d3cudzMub3JnLzIwMDUvMDgvYWRkcmVzc2luZyI+DQogICA8c29hcGVudjpIZWFkZXI+DQoJPHdzYTpNZXNzYWdlSUQ+dXVpZDo2QjM5RkM0MC1DQTQ3LTEwNjctQjMxLUpJR0FSMDBERDAxMDZBPC93c2E6TWVzc2FnZUlEPg0KCTx3c2E6UmVwbHlUbz4NCgkJPHdzYTpBZGRyZXNzPmh0dHA6Ly97e1dTQS1MaXN0bmVySG9zdH19Ont7V1NBLXJlcGx5VG99fS88L3dzYTpBZGRyZXNzPg0KCTwvd3NhOlJlcGx5VG8+DQoJPHdzYTpGYXVsdFRvPg0KCQk8d3NhOkFkZHJlc3M+aHR0cDovL3t7V1NBLUxpc3RuZXJIb3N0fX06e3tXU0EtZmF1bHRUb319Lzwvd3NhOkFkZHJlc3M+DQoJPC93c2E6RmF1bHRUbz4NCgk8d3NhOlRvPmh0dHA6Ly97e3RpYmNvLmFteC5ydC5odHRwY29ubmVjdG9yMi5ob3N0fX06e3t0aWJjby5hbXgucnQuaHR0cGNvbm5lY3RvcjIucG9ydH19L2FkZHJlc3NQb3J0Lzwvd3NhOlRvPg0KCTx3c2E6QWN0aW9uPkFkZHJlc3NPcGVyYXRpb248L3dzYTpBY3Rpb24+DQogICA8L3NvYXBlbnY6SGVhZGVyPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICA8YmF0OkFkZHJlc3NPcGVyYXRpb24+DQoJPEluUGFydD4NCgkgPGFkZDpBZGRyZXNzX0VsZW1lbnQ+DQogICAgICAgICAgICA8YWRkOk5hbWU+e3tuYW1lfX08L2FkZDpOYW1lPg0KICAgICAgICAgICAgPGFkZDpBZGRyZXNzPnt7YWRkcmVzc319PC9hZGQ6QWRkcmVzcz4NCiAgICAgICAgICAgIDxhZGQ6Q2l0eT57e2lucHV0NH19PC9hZGQ6Q2l0eT4NCiAgICAgICAgICAgIDxhZGQ6U3RhdGU+e3tzdGF0ZX19PC9hZGQ6U3RhdGU+DQogICAgICAgICAgICA8YWRkOlppcD57e3ppcH19PC9hZGQ6WmlwPg0KICAgICAgICAgPC9hZGQ6QWRkcmVzc19FbGVtZW50Pg0KCTwvSW5QYXJ0Pg0KICAgIDwvYmF0OkFkZHJlc3NPcGVyYXRpb24+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="FaultTo-2-Listner" log=""
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          uid="52c38dd9-FaultTo-2-Listner" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="undeployApp" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert197" type="com.itko.lisa.test.CheckResultRegEx">
<log>Assert [Assert197] fired false of type Result as String Contains Expression</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>&lt;faultstring&gt;java.lang.ArithmeticException: .* by zero&lt;/faultstring&gt;</param>
</CheckResult>

<url>
<proto>http</proto>
<host>{{WSA-ListnerHost}}</host>
<port>{{WSA-faultToLisaListner}}</port>
<path>/</path>
</url>
<images>false</images>
<sslInfo>
</sslInfo>
<encoding>UTF-8</encoding>
<params-saved-as-unicode>false</params-saved-as-unicode>
    </Node>


    <Node name="undeployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="52c38dd9-undeployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Re-Deploy" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application on host finished.....</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
    </Node>


    <Node name="Re-Deploy" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="52c38dd9-Re-Deploy" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert145] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="AD6B93E3956411EDAF3B506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="52c38dd9-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="52c38dd9-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
