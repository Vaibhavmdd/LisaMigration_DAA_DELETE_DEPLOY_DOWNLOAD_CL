<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Tue Oct 25 11:51:07 PDT 2011 -->


<TestCase name="5.9_Invoke" version="2">
<id>6cecd3c2</id>
<Documentation>Graceful Start intent.&#13;&#10;Use Node Svars, Binding properties, Reference wiring.&#13;&#10;&#13;&#10;Scenario: &#13;&#10;App1: SOAP BT(HTTP) &lt;-&gt; Java &lt;-&gt; Java &lt;-&gt; SCA (wired to App2)&#13;&#10;App2: SCA &lt;-&gt; Java&#13;&#10;&#13;&#10;Starting App1 also starts App2.&#13;&#10;Stopping App2 also stops App1.&#13;&#10;Clean up Apps at the end.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTIwNTY0OTc0Mw==</sig>
<rootNode>invokeApp1Service1</rootNode>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
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
    <key>bwport1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiconnectionfactory</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.jdbc1.direct.dbUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.hibernate1.dialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwhost1</key>
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
    <key>tibco.amx.rt.jdbc1.direct.jdbcDriver</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.jmx.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSServerForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>portssl1</key>
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
    <key>tibco.amx.rt.teneo1.Dialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.hibernate1.dataSor</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.instance</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.connectionFactory</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndihost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.referenced.identityJNDIName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
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
    <key>env.node1.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>password</key>
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
    <key>tibco.amx.rt.jdbc1.referenced.identityJNDIName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>identityProvider</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.referenced.identityJNDIName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.teneo1.dataSor</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndipwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndicontexturl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.host</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.providerURL</key>
    <value>Property From Config</value>
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
    <key>lisa.startApp1.rsp</key>
    <value>Set in Step startApp1</value>
    </Parameter>
    <Parameter>
    <key>lisa.startApp1.rsp.time</key>
    <value>Set in Step startApp1</value>
    </Parameter>
    <Parameter>
    <key>lisa.stopApp2.rsp</key>
    <value>Set in Step stopApp2</value>
    </Parameter>
    <Parameter>
    <key>lisa.stopApp2.rsp.time</key>
    <value>Set in Step stopApp2</value>
    </Parameter>
    <Parameter>
    <key>lisa.cleanup.rsp</key>
    <value>Set in Step cleanup</value>
    </Parameter>
    <Parameter>
    <key>lisa.cleanup.rsp.time</key>
    <value>Set in Step cleanup</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeApp1Service1.rsp</key>
    <value>Set in Step invokeApp1Service1</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeApp1Service1.rsp.time</key>
    <value>Set in Step invokeApp1Service1</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeApp2Service1.rsp</key>
    <value>Set in Step invokeApp2Service1</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeApp2Service1.rsp.time</key>
    <value>Set in Step invokeApp2Service1</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeApp1Service2.rsp</key>
    <value>Set in Step invokeApp1Service2</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeApp1Service2.rsp.time</key>
    <value>Set in Step invokeApp1Service2</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeApp2Service2.rsp</key>
    <value>Set in Step invokeApp2Service2</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeApp2Service2.rsp.time</key>
    <value>Set in Step invokeApp2Service2</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeApp1Service3.rsp</key>
    <value>Set in Step invokeApp1Service3</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeApp1Service3.rsp.time</key>
    <value>Set in Step invokeApp1Service3</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeApp2Service3.rsp</key>
    <value>Set in Step invokeApp2Service3</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeApp2Service3.rsp.time</key>
    <value>Set in Step invokeApp2Service3</value>
    </Parameter>
    <Parameter>
    <key>jndicontexturlSSL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiconnectionfactorySSL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmspwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbDriver</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiuserSSL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hibernateDialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmsuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndipwdSSL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmsport</key>
    <value>Property From Config</value>
    </Parameter>
</resultState>

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{LISA_TC_PATH}}/data{{g11n}}.txt</file>
      </Companion>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/amxconfig.template.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/amxbuild.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

<Configurations>
<Configuration>
<name>default</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_hsql{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>silver</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../silver/1machine_2node.config</doc>
</Configuration>
</Configurations>
    <Node name="invokeApp1Service1" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeApp2Service1" > 

<graphx>392</graphx>
<graphy>1942</graphy>
<url>http://{{host1}}:{{port2}}/bat.case5.9.svc1/</url>
<action>http://www.example.org/bat.case5.9/EchoElements</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9iYXQu
Y2FzZTUuOS8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAg
ICA8YmF0OkVjaG9FbGVtZW50cz4NCiAgICAgICAgIDxpbj57e3JlcXVlc3RTdHJpbmd9fTwvaW4+
DQogICAgICA8L2JhdDpFY2hvRWxlbWVudHM+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVu
djpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="application failed with 404" type="com.itko.lisa.test.CheckResultContains">
<log>Application didn&apos;t start, the response failed with 404</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>404</param>
</CheckResult>

    </Node>


    <Node name="invokeApp2Service1" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="startApp1" > 

<graphx>147</graphx>
<graphy>1650</graphy>
<url>http://{{host1}}:{{port2}}/bat.case5.9/</url>
<action>http://www.example.org/bat.case5.9/EchoElements</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9iYXQu
Y2FzZTUuOS8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAg
ICA8YmF0OkVjaG9FbGVtZW50cz4NCiAgICAgICAgIDxpbj57e3JlcXVlc3RTdHJpbmd9fTwvaW4+
DQogICAgICA8L2JhdDpFY2hvRWxlbWVudHM+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVu
djpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="application failed with 404" type="com.itko.lisa.test.CheckResultContains">
<log>Application didn&apos;t start, the response failed with 404</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>404</param>
</CheckResult>

    </Node>


    <Node name="startApp1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeApp1Service2" > 

<graphx>16</graphx>
<graphy>1291</graphy>
<Documentation>start app1 should start app2 auto as app1&apos;s reference enabled &quot;start-svc-first&quot;;</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value>{{LISA_TC_PATH}}</value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.amx.buildfile.tc}}</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antStartApp1.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>start.app1</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>tcTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
<CheckResult assertTrue="false" name="AntFinishSuccessful" type="com.itko.lisa.test.CheckResultContains">
<log>The Response should contain: BUILD SUCCESSFUL</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="invokeApp1Service2" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeApp2Service2" > 

<graphx>147</graphx>
<graphy>549</graphy>
<url>http://{{host1}}:{{port2}}/bat.case5.9.svc1/</url>
<action>http://www.example.org/bat.case5.9/EchoElements</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9iYXQu
Y2FzZTUuOS8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAg
ICA8YmF0OkVjaG9FbGVtZW50cz4NCiAgICAgICAgIDxpbj57e3JlcXVlc3RTdHJpbmd9fTwvaW4+
DQogICAgICA8L2JhdDpFY2hvRWxlbWVudHM+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVu
djpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="NodeName" type="com.itko.lisa.test.CheckResultContains">
<log>The Node Name is: &lt;value&gt;{{env.node2.name}}&lt;/value&gt;</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>&lt;value&gt;{{env.node2.name}}&lt;/value&gt;</param>
</CheckResult>

<CheckResult assertTrue="false" name="Java2 called reference" type="com.itko.lisa.test.CheckResultContains">
<log>Java2 called reference will get bellow response: &lt;value&gt;Java1 echo : java2 -&amp;gt; Call Reference1&lt;/value&gt;</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>&lt;value&gt;Java1 echo : java2 -&amp;gt; Call Reference1&lt;/value&gt;</param>
</CheckResult>

    </Node>


    <Node name="invokeApp2Service2" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="stopApp2" > 

<graphx>392</graphx>
<graphy>257</graphy>
<url>http://{{host1}}:{{port2}}/bat.case5.9/</url>
<action>http://www.example.org/bat.case5.9/EchoElements</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9iYXQu
Y2FzZTUuOS8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAg
ICA8YmF0OkVjaG9FbGVtZW50cz4NCiAgICAgICAgIDxpbj57e3JlcXVlc3RTdHJpbmd9fTwvaW4+
DQogICAgICA8L2JhdDpFY2hvRWxlbWVudHM+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVu
djpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="NodeName" type="com.itko.lisa.test.CheckResultContains">
<log>NodeName is: {{env.node2.name}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>&lt;value&gt;{{env.node2.name}}&lt;/value&gt;</param>
</CheckResult>

<CheckResult assertTrue="false" name="Java1  response:" type="com.itko.lisa.test.CheckResultContains">
<log>Java response is: &lt;value&gt;Java1 echo : {{responseString}}&lt;/value&gt;</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>&lt;value&gt;Java1 echo : {{responseString}}&lt;/value&gt;</param>
</CheckResult>

    </Node>


    <Node name="stopApp2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeApp1Service3" > 

<graphx>723</graphx>
<graphy>66</graphy>
<Documentation>stop app2 should stop app1 auto as app1&apos;s reference enabled &quot;start-svc-first&quot;;</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value>{{LISA_TC_PATH}}</value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.amx.buildfile.tc}}</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antStopApp2.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>stop.app2</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>tcTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
<CheckResult assertTrue="false" name="AntFinishSuccessful" type="com.itko.lisa.test.CheckResultContains">
<log>The Response should contain: BUILD SUCCESSFUL</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="invokeApp1Service3" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeApp2Service3" > 

<graphx>1476</graphx>
<graphy>66</graphy>
<url>http://{{host1}}:{{port2}}/bat.case5.9.svc1/</url>
<action>http://www.example.org/bat.case5.9/EchoElements</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9iYXQu
Y2FzZTUuOS8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAg
ICA8YmF0OkVjaG9FbGVtZW50cz4NCiAgICAgICAgIDxpbj57e3JlcXVlc3RTdHJpbmd9fTwvaW4+
DQogICAgICA8L2JhdDpFY2hvRWxlbWVudHM+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVu
djpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="application failed with 404" type="com.itko.lisa.test.CheckResultContains">
<log>Application stoped, the response failed with 404</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>404</param>
</CheckResult>

    </Node>


    <Node name="invokeApp2Service3" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="cleanup" > 

<graphx>1807</graphx>
<graphy>257</graphy>
<url>http://{{host1}}:{{port2}}/bat.case5.9/</url>
<action>http://www.example.org/bat.case5.9/EchoElements</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9iYXQu
Y2FzZTUuOS8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAg
ICA8YmF0OkVjaG9FbGVtZW50cz4NCiAgICAgICAgIDxpbj57e3JlcXVlc3RTdHJpbmd9fTwvaW4+
DQogICAgICA8L2JhdDpFY2hvRWxlbWVudHM+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVu
djpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="application failed with 404" type="com.itko.lisa.test.CheckResultContains">
<log>Application stoped, the response failed with 404</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>404</param>
</CheckResult>

    </Node>


    <Node name="cleanup" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="Re-Deploy" > 

<graphx>2052</graphx>
<graphy>550</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
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
    <value>{{tibco.test.case.log.dir}}/antCleanup.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>cleanup</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>tcTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
<CheckResult assertTrue="false" name="AntFinishSuccessful" type="com.itko.lisa.test.CheckResultContains">
<log>The Response should contain: BUILD SUCCESSFUL</log>
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

<graphx>908</graphx>
<graphy>2183</graphy>
<Documentation>1. create app1 and app2, while enabled &quot;start-svc-first&quot; at app1&apos;s reference;&#13;&#10;2. wire app1 to app2;&#13;&#10;3. Distribute the components to differenct Nodes, that they linked by internal SVB.&#13;&#10;4. Deploy app1 and app2 without start.</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value>{{LISA_TC_PATH}}</value>
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
    <value>tcTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
<CheckResult assertTrue="false" name="AntFinishSuccessful" type="com.itko.lisa.test.CheckResultContains">
<log>The Response should contain: BUILD SUCCESSFUL</log>
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

<graphx>2183</graphx>
<graphy>1291</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>2133</graphx>
<graphy>1476</graphy>
    </Node>


</TestCase>
