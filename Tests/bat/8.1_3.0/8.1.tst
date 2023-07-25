<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Fri Jan 10 08:40:15 PST 2020 -->


<TestCase name="8.1" version="2">
<id>70c16865</id>
<Documentation>HealthCheck case12: SOAP-&gt;Java1-&gt;Java2-&gt;Reference Call SOAP-Java3 (Stop Java3)&#13;&#10;Checkpoints; Healtch check and Timeout if Stop Java on other node.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTE1OTUxNTI2Mzg=</sig>
<rootNode>deployApp</rootNode>
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
    <key>username</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>adapterZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.providerURL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>installJavaHome</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port4</key>
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
    <key>admin.instance.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwport1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keyalias</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>enableMCR</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hibernateDialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>logappender.file.location</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.db.url</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amxZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.jmx.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.env.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSServerForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amxHFZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>keystore.location</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.prefix</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbDriver</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.datafile.template</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keypassword</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.node1.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndicontexturl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwportssl1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>mediation.sample.project.dir</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorepassword</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>clrZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystoretype</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiconnectionfactory</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwhost1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmspwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndicontexturlSSL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndihost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.node2.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>regenerateDAA</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>compiler</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>projectloc</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tmpDir</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorelocation</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.connectionFactory</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>httpConnectionTimeout</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndipwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.instance</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>cppZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amxHF2Zip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmsuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emspwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>installTempDir</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>ejbZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.host</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.sv.queuePrefix</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>portssl1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployApp.rsp</key>
    <value>Set in Step deployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_Normal.rsp</key>
    <value>Set in Step InvokeService_Normal</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_Normal.rsp.time</key>
    <value>Set in Step InvokeService_Normal</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_HealthCheck_PASS.rsp</key>
    <value>Set in Step InvokeService_HealthCheck_PASS</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_HealthCheck_PASS.rsp.time</key>
    <value>Set in Step InvokeService_HealthCheck_PASS</value>
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
    <key>lisa.stopComponent.rsp</key>
    <value>Set in Step stopComponent</value>
    </Parameter>
    <Parameter>
    <key>lisa.stopComponent.rsp.time</key>
    <value>Set in Step stopComponent</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployApp.rsp.time</key>
    <value>Set in Step deployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.startComponent.rsp</key>
    <value>Set in Step startComponent</value>
    </Parameter>
    <Parameter>
    <key>lisa.startComponent.rsp.time</key>
    <value>Set in Step startComponent</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_HealthCheck_PASS_again.rsp</key>
    <value>Set in Step InvokeService_HealthCheck_PASS_again</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_HealthCheck_PASS_again.rsp.time</key>
    <value>Set in Step InvokeService_HealthCheck_PASS_again</value>
    </Parameter>
    <Parameter>
    <key>lisa.addParaIntoQANode1.rsp</key>
    <value>Set in Step addParaIntoQANode1</value>
    </Parameter>
    <Parameter>
    <key>lisa.addParaIntoQANode1.rsp.time</key>
    <value>Set in Step addParaIntoQANode1</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait-01.rsp</key>
    <value>Set in Step wait-01</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait-01.rsp.time</key>
    <value>Set in Step wait-01</value>
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
    <key>lisa.restartQANode2.rsp</key>
    <value>Set in Step restartQANode2</value>
    </Parameter>
    <Parameter>
    <key>lisa.restartQANode2.rsp.time</key>
    <value>Set in Step restartQANode2</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait-02.rsp</key>
    <value>Set in Step wait-02</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait-02.rsp.time</key>
    <value>Set in Step wait-02</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait-03.rsp</key>
    <value>Set in Step wait-03</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait-03.rsp.time</key>
    <value>Set in Step wait-03</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_Timeout_HC.rsp</key>
    <value>Set in Step InvokeService_Timeout_HC</value>
    </Parameter>
    <Parameter>
    <key>lisa.InvokeService_Timeout_HC.rsp.time</key>
    <value>Set in Step InvokeService_Timeout_HC</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait-04.rsp</key>
    <value>Set in Step wait-04</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait-04.rsp.time</key>
    <value>Set in Step wait-04</value>
    </Parameter>
</resultState>

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{LISA_TC_PATH}}/config.txt</file>
      </Companion>

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

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/amxconfig2.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc2</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/amxbuild.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

<Configurations>
<Configuration>
<name>default</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_hsql_cdc.config</doc>
</Configuration>
</Configurations>
    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="InvokeService_Normal" > 

<graphx>130</graphx>
<graphy>130</graphy>
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
    <value>deployTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
<log>Deployment failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="InvokeService_Normal" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="addParaIntoQANode1" > 

<graphx>10</graphx>
<graphy>10</graphy>
<url>http://{{host1}}:{{HttpConnector_BAT8.1_Invoke_port}}/helloWorldPT/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmhlbD0iaHR0cDovL25zLnRpYmNvLmNvbS9IZWxsby8i
Pg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8aGVsOkhl
bGxvUmVxdWVzdD50ZXN0PC9oZWw6SGVsbG9SZXF1ZXN0Pg0KICAgPC9zb2FwZW52OkJvZHk+DQo8
L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
    <Parameter>
    <key>mi_input_basic_string</key>
    <value>{{mi_input_basic_string}}</value>
    </Parameter>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check Response" type="com.itko.lisa.test.CheckResultContains">
<log>Check &quot;Hi test! This is the Java component &quot; in response message</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Hi test! This is the Java component</param>
</CheckResult>

    </Node>


    <Node name="addParaIntoQANode1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="addParaIntoQANode2" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/amx/admin/addParaIntoNodeTRA.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>NodeName</key>
    <value>{{env.node1.name}}</value>
    <name>Which node tra will be operated</name>
    </Parameter>
    <Parameter>
    <key>key</key>
    <value>java.property.com.tibco.amx.healthcheck</value>
    <name>Parameters will been writed into</name>
    </Parameter>
    <Parameter>
    <key>value</key>
    <value>true</value>
    <name>Parameters will been writed into</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Verfiy" type="com.itko.lisa.test.CheckResultContains">
<log>Cannot find true in response </log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>true</param>
</CheckResult>

    </Node>


    <Node name="addParaIntoQANode2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="wait-01" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/amx/admin/addParaIntoNodeTRA.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>NodeName</key>
    <value>{{env.node2.name}}</value>
    <name>Which node tra will be operated</name>
    </Parameter>
    <Parameter>
    <key>key</key>
    <value>java.property.com.tibco.amx.healthcheck</value>
    <name>Parameters will been writed into</name>
    </Parameter>
    <Parameter>
    <key>value</key>
    <value>true</value>
    <name>Parameters will been writed into</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Verfiy" type="com.itko.lisa.test.CheckResultContains">
<log>Cannot find true in response </log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>true</param>
</CheckResult>

    </Node>


    <Node name="wait-01" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="restartQANode2" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>60</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>60</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="restartQANode2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="wait-02" > 

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
    <value>{{tibco.test.case.log.dir}}/restart.node.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>restart.node</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
<CheckResult assertTrue="false" name="BUILD SUCCESSFUL" type="com.itko.lisa.test.CheckResultContains">
<log>BUILD SUCCESSFUL</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="wait-02" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="InvokeService_HealthCheck_PASS" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>120</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>120</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="InvokeService_HealthCheck_PASS" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="stopComponent" > 

<graphx>10</graphx>
<graphy>10</graphy>
<url>http://{{host1}}:{{HttpConnector_BAT8.1_Invoke_port}}/helloWorldPT/</url>
<action>checkHealth</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmhlYWw9Imh0dHA6Ly93d3cudGliY28uY29tL2hlYWx0
aGNoZWNrLyI+DQogICA8c29hcGVudjpIZWFkZXIvPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICAg
IDxoZWFsOkhlYWx0aENoZWNrUmVxdWVzdD4NCiAgICAgICAgIDxob3BzPjE8L2hvcHM+DQogICAg
ICA8L2hlYWw6SGVhbHRoQ2hlY2tSZXF1ZXN0Pg0KICAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBl
bnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
    <Parameter>
    <key>mi_input_basic_string</key>
    <value>{{mi_input_basic_string}}</value>
    </Parameter>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="HealthCheckResponse/applicationName" type="com.itko.lisa.xml.AssertXMLXPath">
<log>check HealthCheckResponse/applicationName</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;HealthCheckResponse&quot;]/@applicationName=&quot;BAT8.1_SOAP2JavaCallJava3Stop_Client&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="HealthCheckResponse/status" type="com.itko.lisa.xml.AssertXMLXPath">
<log>check HealthCheckResponse/status</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;HealthCheckResponse&quot;]/@status=&quot;Passed&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Service/nodeName" type="com.itko.lisa.xml.AssertXMLXPath">
<log>check Service/nodeName</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;Service&quot;]/@nodeName=&quot;{{env.node1.name}}&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Component/nodeName_java1" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Check Component/nodeName_java1</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;Component&quot;][@name=&quot;Java1&quot;]/@nodeName=&quot;{{env.node1.name}}&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Component/nodeName_java2" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Check Component/nodeName_java2</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;Component&quot;][@name=&quot;Java2&quot;]/@nodeName=&quot;{{env.node1.name}}&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="ComponentReference/name" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Check there is ComponentReference/name is health check response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;ComponentReference&quot;]/@name=&quot;HelloWorldPT&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Reference/name" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Check there is Reference/name is health check response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;Reference&quot;]/@name=&quot;HelloWorldPT/SOAPReference_Binding1&quot;</xpathq>
</CheckResult>

    </Node>


    <Node name="stopComponent" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="wait-03" > 

<graphx>130</graphx>
<graphy>130</graphy>
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
    <value>stop.component</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile2={{tibco.amx.datafile.tc2}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
<log>Deployment failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="wait-03" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="InvokeService_Timeout_HC" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>10</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>10</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="InvokeService_Timeout_HC" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="startComponent" > 

<graphx>10</graphx>
<graphy>10</graphy>
<url>http://{{host1}}:{{HttpConnector_BAT8.1_Invoke_port}}/helloWorldPT/</url>
<action>checkHealth</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmhlYWw9Imh0dHA6Ly93d3cudGliY28uY29tL2hlYWx0
aGNoZWNrLyI+DQogICA8c29hcGVudjpIZWFkZXIvPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICAg
IDxoZWFsOkhlYWx0aENoZWNrUmVxdWVzdD4NCiAgICAgICAgIDxob3BzPi0xPC9ob3BzPg0KICAg
ICAgICAgIDx0aW1lb3V0PjE1MDAwPC90aW1lb3V0Pg0KICAgICAgPC9oZWFsOkhlYWx0aENoZWNr
UmVxdWVzdD4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
    <Parameter>
    <key>mi_input_basic_string</key>
    <value>{{mi_input_basic_string}}</value>
    </Parameter>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="HealthCheckResponse/status" type="com.itko.lisa.xml.AssertXMLXPath">
<log>check HealthCheckResponse/status</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;HealthCheckResponse&quot;]/@status=&quot;TimedOut&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Check ErrorString" type="com.itko.lisa.test.CheckResultContains">
<log>Check {{Health Check execution stopped due to Timeout}} in response message</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Health Check execution stopped due to Timeout</param>
</CheckResult>

    </Node>


    <Node name="startComponent" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="wait-04" > 

<graphx>130</graphx>
<graphy>130</graphy>
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
    <value>start.component</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile2={{tibco.amx.datafile.tc2}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
<log>Deployment failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="wait-04" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="InvokeService_HealthCheck_PASS_again" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>60</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>60</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="InvokeService_HealthCheck_PASS_again" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="undeployApp" > 

<graphx>10</graphx>
<graphy>10</graphy>
<url>http://{{host1}}:{{HttpConnector_BAT8.1_Invoke_port}}/helloWorldPT/</url>
<action>checkHealth</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmhlYWw9Imh0dHA6Ly93d3cudGliY28uY29tL2hlYWx0
aGNoZWNrLyI+DQogICA8c29hcGVudjpIZWFkZXIvPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICAg
IDxoZWFsOkhlYWx0aENoZWNrUmVxdWVzdD4NCiAgICAgICAgIDxob3BzPjE8L2hvcHM+DQogICAg
ICA8L2hlYWw6SGVhbHRoQ2hlY2tSZXF1ZXN0Pg0KICAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBl
bnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
    <Parameter>
    <key>mi_input_basic_string</key>
    <value>{{mi_input_basic_string}}</value>
    </Parameter>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="HealthCheckResponse/applicationName" type="com.itko.lisa.xml.AssertXMLXPath">
<log>check HealthCheckResponse/applicationName</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;HealthCheckResponse&quot;]/@applicationName=&quot;BAT8.1_SOAP2JavaCallJava3Stop_Client&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="HealthCheckResponse/status" type="com.itko.lisa.xml.AssertXMLXPath">
<log>check HealthCheckResponse/status</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;HealthCheckResponse&quot;]/@status=&quot;Passed&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Service/nodeName" type="com.itko.lisa.xml.AssertXMLXPath">
<log>check Service/nodeName</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;Service&quot;]/@nodeName=&quot;{{env.node1.name}}&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Component/nodeName_java1" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Check Component/nodeName_java1</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;Component&quot;][@name=&quot;Java1&quot;]/@nodeName=&quot;{{env.node1.name}}&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Component/nodeName_java2" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Check Component/nodeName_java2</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;Component&quot;][@name=&quot;Java2&quot;]/@nodeName=&quot;{{env.node1.name}}&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="ComponentReference/name" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Check there is ComponentReference/name is health check response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;ComponentReference&quot;]/@name=&quot;HelloWorldPT&quot;</xpathq>
</CheckResult>

<CheckResult assertTrue="false" name="Reference/name" type="com.itko.lisa.xml.AssertXMLXPath">
<log>Check there is Reference/name is health check response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<xpathq>//*[local-name()=&quot;Reference&quot;]/@name=&quot;HelloWorldPT/SOAPReference_Binding1&quot;</xpathq>
</CheckResult>

    </Node>


    <Node name="undeployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>130</graphx>
<graphy>130</graphy>
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
    <value>{{tibco.test.case.log.dir}}/ant_undeploy.app.log</value>
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
    <value>deployTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
<log>Deployment failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

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
