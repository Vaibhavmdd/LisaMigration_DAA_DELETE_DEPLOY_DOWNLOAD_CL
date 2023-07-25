<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Thu Sep 27 17:01:42 CDT 2012 -->


<TestCase name="5.18" version="2">
<id>a1d828a5</id>
<Documentation>Description : Restart TIBCO Host, make sure application is still running upon restart.&#13;&#10;              Check runtime wsdl url.&#13;&#10;Scenario &#9;: SOAP BT(HTTP) &lt;-&gt; JAVA &#13;&#10;&#13;&#10;</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTM1NzM3NDY3MQ==</sig>
<rootNode>deployApp</rootNode>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.invoke-BW-Service.rsp</key>
    <value>Set in Step invoke-BW-Service</value>
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
    <key>lisa.DeclaredFault-AMX-Service.rsp</key>
    <value>Set in Step DeclaredFault-AMX-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.DeclaredFault-AMX-Service.rsp.time</key>
    <value>Set in Step DeclaredFault-AMX-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.DeclaredFault-BW-Service.rsp</key>
    <value>Set in Step DeclaredFault-BW-Service</value>
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
    <key>lisa.UnDeclaredFault-BW-Service.rsp</key>
    <value>Set in Step UnDeclaredFault-BW-Service</value>
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
    <key>lisa.Consumer-DeclaredFault.rsp</key>
    <value>Set in Step Consumer-DeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.Consumer-DeclaredFault.rsp.time</key>
    <value>Set in Step Consumer-DeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.UnDeclaredFault-AMX-Service.rsp</key>
    <value>Set in Step UnDeclaredFault-AMX-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.UnDeclaredFault-AMX-Service.rsp.time</key>
    <value>Set in Step UnDeclaredFault-AMX-Service</value>
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
    <key>jmshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.jmx.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmspwd</key>
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
    <key>tibco.amx.rt.jdbc1.direct.dbpwd</key>
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
    <key>admin.instance.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmsuser</key>
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
    <key>tibco.amx.rt.jdbc1.direct.dbuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmsport</key>
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
    <key>lisa.repeatSleep.rsp.time</key>
    <value>Set in Step repeatSleep</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatGetWsdl.rsp.time</key>
    <value>Set in Step repeatGetWsdl</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.stopTIBCOHost.rsp</key>
    <value>Set in Step stopTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.stopTIBCOHost.rsp.time</key>
    <value>Set in Step stopTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyNode1Down.rsp.time</key>
    <value>Set in Step verifyNode1Down</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyNode2Down.rsp.time</key>
    <value>Set in Step verifyNode2Down</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifySystemNodeDown.rsp.time</key>
    <value>Set in Step verifySystemNodeDown</value>
    </Parameter>
    <Parameter>
    <key>lisa.startTIBCOHost.rsp.time</key>
    <value>Set in Step startTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.getTimeLimit.rsp.time</key>
    <value>Set in Step getTimeLimit</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkAdminUp.rsp.time</key>
    <value>Set in Step checkAdminUp</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait.rsp</key>
    <value>Set in Step wait</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait.rsp.time</key>
    <value>Set in Step wait</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTIBCOHostDown.rsp</key>
    <value>Set in Step verifyTIBCOHostDown</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTIBCOHostDown.rsp.time</key>
    <value>Set in Step verifyTIBCOHostDown</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyNode1Down.rsp</key>
    <value>Set in Step verifyNode1Down</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyNode2Down.rsp</key>
    <value>Set in Step verifyNode2Down</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifySystemNodeDown.rsp</key>
    <value>Set in Step verifySystemNodeDown</value>
    </Parameter>
    <Parameter>
    <key>lisa.startTIBCOHost.rsp</key>
    <value>Set in Step startTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkAdminUp.rsp</key>
    <value>Set in Step checkAdminUp</value>
    </Parameter>
    <Parameter>
    <key>lisa.getTimeLimit.rsp</key>
    <value>Set in Step getTimeLimit</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatGetWsdl.rsp</key>
    <value>Set in Step repeatGetWsdl</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatSleep.rsp</key>
    <value>Set in Step repeatSleep</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployApp.rsp</key>
    <value>Set in Step undeployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.getWsdl.rsp</key>
    <value>Set in Step getWsdl</value>
    </Parameter>
    <Parameter>
    <key>lisa.getWsdl.rsp.time</key>
    <value>Set in Step getWsdl</value>
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
    <key>lisa.invokeService.rsp</key>
    <value>Set in Step invokeService</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeService.rsp.time</key>
    <value>Set in Step invokeService</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeService2.rsp</key>
    <value>Set in Step invokeService2</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeService2.rsp.time</key>
    <value>Set in Step invokeService2</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployApp.rsp.time</key>
    <value>Set in Step undeployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.backupTIBCOHostLog.rsp</key>
    <value>Set in Step backupTIBCOHostLog</value>
    </Parameter>
    <Parameter>
    <key>lisa.backupTIBCOHostLog.rsp.time</key>
    <value>Set in Step backupTIBCOHostLog</value>
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
<doc>/groupfiler/tests/tests/amsg/3.0/tests/func/runtime/bat/2node_ssl_orcl.config</doc>
</Configuration>
</Configurations>
    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getWsdl" > 

<graphx>361</graphx>
<graphy>1066</graphy>
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
    <value>timeout=360,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    <value>400</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" type="com.itko.lisa.test.CheckResultContains" name="Assert145">
<log>Assert [Assert145] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="getWsdl" log="Get runtime WSDL"
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeService" > 

<graphx>10</graphx>
<graphy>10</graphy>
<url>
<proto>http</proto>
<host>{{host1}}</host>
<port>{{port2}}</port>
<path>/TC5-18/</path>
<query>wsdl</query>
</url>
<images>false</images>

      <!-- Result Elements -->
<CheckResult assertTrue="false" type="com.itko.lisa.test.CheckResultHTTPResponseCode" name="Assert146">
<log>Expected response code was 200. Got {{lisa.repeatGetWsdl.http.responseCode}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>200</param>
</CheckResult>

<CheckResult assertTrue="false" type="com.itko.lisa.test.CheckResultContains" name="Assert236">
<log>GetWsdl response does not contain &quot;wsdl:definitions&quot;</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>wsdl:definitions</param>
</CheckResult>

    </Node>


    <Node name="invokeService" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="stopTIBCOHost" > 

<graphx>130</graphx>
<graphy>130</graphy>
<url>http://{{host1}}:{{port2}}/TC5-18/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxT
Y2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFu
Y2UiPg0KICA8c29hcGVudjpCb2R5Pg0KICAgIDxIZWxsb1JlcXVlc3QgeG1sbnM9Imh0dHA6Ly9u
cy50aWJjby5jb20vSGVsbG8vIj57e2lucHV0fX08L0hlbGxvUmVxdWVzdD4NCiAgPC9zb2FwZW52
OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" type="com.itko.lisa.test.CheckResultContains" name="Assert279">
<log>Did not found {{output}} in SOAP response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{output}}</param>
</CheckResult>

    </Node>


    <Node name="stopTIBCOHost" log="Stop TIBCO Host with Mode=normal and Wait=true"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="wait" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Documentation>Stop TIBCO Host in normal mode with wait set to true (synchronized call):&#13;&#10;TIBCO Host is supposed to wait for all the nodes to shutdown before it terminates.</Documentation>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/tibcohost/StopTibcoHost.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>host</key>
    <value>{{LISA_HOST}}</value>
    <name>Host on which to stop the TIBCOHost</name>
    </Parameter>
    <Parameter>
    <key>tibcoHostinstance</key>
    <value>{{TIBCO_HOST_CONFIG}}/{{host.instance}}/host</value>
    <name>TIBCOHost instance directory</name>
    </Parameter>
    <Parameter>
    <key>mode</key>
    <value>normal</value>
    <name>Stop mode used for stopping the node (normal - immediate - abort). Default is normal.</name>
    </Parameter>
    <Parameter>
    <key>wait</key>
    <value>true</value>
    <name>If set to true the wait becomes synchronous and only returns when all node processes were stopped. Default is false</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>1200</value>
    <name>Max number of seconds to wait to allow the TIBCOHost to stop</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="wait" log="repeat sleep"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifyTIBCOHostDown" > 

<graphx>301</graphx>
<graphy>37</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
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


    <Node name="verifyTIBCOHostDown" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifyNode1Down" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>processName</key>
    <value>tibcohost</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert116">
<log>tibcohost was still up and running</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>SUCCESS</param>
</CheckResult>

    </Node>


    <Node name="verifyNode1Down" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifyNode2Down" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>processName</key>
    <value>tibamx_{{env.node1.name}}</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert119">
<log>Node {{env.node1.name}} was still up and running</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>SUCCESS</param>
</CheckResult>

    </Node>


    <Node name="verifyNode2Down" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifySystemNodeDown" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>processName</key>
    <value>tibamx_{{env.node2.name}}</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert120">
<log>Node {{env.node2.name}} was still up and running</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>SUCCESS</param>
</CheckResult>

    </Node>


    <Node name="verifySystemNodeDown" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="backupTIBCOHostLog" > 

<graphx>250</graphx>
<graphy>250</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>processName</key>
    <value>tibamx_{{tibco.amx.admin.configuration1.tibcohostconfig1.node1.nodeName}}</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert121">
<log>Node {{tibco.amx.admin.configuration1.tibcohostconfig1.node1.nodeName}} was still up and running</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>SUCCESS</param>
</CheckResult>

    </Node>


    <Node name="backupTIBCOHostLog" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="startTIBCOHost" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CopyFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>fileIn</key>
    <value>{{tibco.test.suite.log.dir}}/setup/tibcohost.log</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{tibco.test.suite.log.dir}}/setup/tibcohost.backup.log</value>
    <name>Destination file or directory</name>
    </Parameter>
    <Parameter>
    <key>createDirectory</key>
    <value>false</value>
    <name>If true, create the necessary directories to copy the destination file</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="startTIBCOHost" log="Re-start TIBCO Host"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="checkAdminUp" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/tibcohost/StartTibcoHost.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>host</key>
    <value>{{LISA_HOST}}</value>
    <name>Host on which the TIBCOHost should be started</name>
    </Parameter>
    <Parameter>
    <key>tibcoHostinstance</key>
    <value>{{TIBCO_HOST_CONFIG}}/{{host.instance}}/host</value>
    <name>TIBCOHost instance directory. If host is remote, specify the TIBCOHost instance location on remote host.</name>
    </Parameter>
    <Parameter>
    <key>logFile</key>
    <value>{{tibco.test.suite.log.dir}}/setup/tibcohost.log</value>
    <name>TIBCOHost log file to monitor to insure proper start-up</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>300</value>
    <name>Max number of seconds to wait to allow the TIBCOHost to start</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="checkAdminUp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getTimeLimit" > 

<graphx>350</graphx>
<graphy>755</graphy>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/amx/admin/IsAdminUp.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>host</key>
    <value>{{LISA_HOST}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{tibco.amx.admin.configuration1.tibcohostconfig1.connector1.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>user</key>
    <value>{{username}}</value>
    <name>User name to connect to Admin server</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{password}}</value>
    <name>User password to connect to Admin server</name>
    </Parameter>
    <Parameter>
    <key>secure</key>
    <value>false</value>
    <name>Use SSL to connect to Admin server</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>{{timeout}}</value>
    <name>Wait for a number of seconds before giving up on Admin server</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert145">
<log>Admin failed to start on time</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="getTimeLimit" log="get the timelimit"
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="repeatGetWsdl" > 

<graphx>142</graphx>
<graphy>142</graphy>
<onerror>fail</onerror>
<script>Calendar future = Calendar.getInstance();&#10;future.add(Calendar.SECOND, timeout.intValue());&#10;testExec.setStateValue(&quot;future&quot;, future);</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Any Exception Then Fail">
<log>getTimeLimit step has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="repeatGetWsdl" log=""
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="wait-for-Admin-Plugin-Init" > 

<graphx>250</graphx>
<graphy>250</graphy>
<url>
<proto>http</proto>
<host>{{host1}}</host>
<port>{{port2}}</port>
<path>/TC5-18/</path>
<query>wsdl</query>
</url>
<images>false</images>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.AssertByScript" name="Assert307">
<log>Wsdl App still not available from runtime Node after re-starting TIBCOHost - Waited for {{timeout}} seconds</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <script>future.before(Calendar.getInstance());</script>
</CheckResult>

<CheckResult assertTrue="false" type="com.itko.lisa.test.CheckResultHTTPResponseCode" name="Assert146">
<log>Expected response code was 200. Got {{lisa.repeatGetWsdl.http.responseCode}}</log>
<then>repeatSleep</then>
<valueToAssertKey></valueToAssertKey>
        <param>200</param>
</CheckResult>

    </Node>


    <Node name="repeatSleep" log="repeat sleep"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="repeatGetWsdl" > 

<graphx>301</graphx>
<graphy>37</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>30</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>30</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="wait-for-Admin-Plugin-Init" log="repeat sleep"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeService2" > 

<graphx>301</graphx>
<graphy>37</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>300</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>300</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="invokeService2" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="undeployApp" > 

<graphx>370</graphx>
<graphy>370</graphy>
<url>http://{{host1}}:{{port2}}/TC5-18/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxT
Y2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFu
Y2UiPg0KICA8c29hcGVudjpCb2R5Pg0KICAgIDxIZWxsb1JlcXVlc3QgeG1sbnM9Imh0dHA6Ly9u
cy50aWJjby5jb20vSGVsbG8vIj57e2lucHV0fX08L0hlbGxvUmVxdWVzdD4NCiAgPC9zb2FwZW52
OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" type="com.itko.lisa.test.CheckResultContains" name="Assert279">
<log>Did not found {{output}} in SOAP response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{output}}</param>
</CheckResult>

    </Node>


    <Node name="undeployApp" log="Undeploy, delete app"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>550</graphx>
<graphy>0</graphy>
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
    <value>timeout=360,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    <value>400</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>903</graphx>
<graphy>128</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>1026</graphx>
<graphy>275</graphy>
    </Node>


</TestCase>
