<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Thu Dec 02 14:22:01 GMT+08:00 2010 -->


<TestCase name="6.8" version="2">
<id>2d8d8cc6</id>
<Documentation>Test EJB BT for EJB 3.0 with JBOSS 5.0.1&#13;&#10;Scenario: SOAP BT(HTTP) &lt;-&gt; Mediation &lt;-&gt; EJB BT &lt;-&gt; JBOSS Server &#13;&#10;MEP: In-Out &#13;&#10;- Deploy EJB BT&#13;&#10;- Deploy vendor Jar&#13;&#10;- Deploy User App&#13;&#10;- Invoke service&#13;&#10;- Undeploy User App&#13;&#10;</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTE5MDA3NTY4MTA=</sig>
<rootNode>deployEJBBTApp</rootNode>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>httpConnector_helloWorld_RI</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>httpConnector_helloWorld_RT</key>
    <value>Property From Config</value>
    </Parameter>
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
    <key>g11n</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.command.exit.code</key>
    <value>Set in Step StartHSQLDB_ForQueryDBTask</value>
    </Parameter>
    <Parameter>
    <key>lisa.command.pid_handle</key>
    <value>Set in Step StartHSQLDB_ForQueryDBTask</value>
    </Parameter>
    <Parameter>
    <key>case68.http.connector.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>case65.http.connector.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.DeployEJBClientJAR.rsp</key>
    <value>Set in Step DeployEJBClientJAR</value>
    </Parameter>
    <Parameter>
    <key>lisa.DeployEJBClientJAR.rsp.time</key>
    <value>Set in Step DeployEJBClientJAR</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployEJBBTApp.rsp</key>
    <value>Set in Step deployEJBBTApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployEJBBTApp.rsp.time</key>
    <value>Set in Step deployEJBBTApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployVendorJAR.rsp</key>
    <value>Set in Step deployVendorJAR</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployVendorJAR.rsp.time</key>
    <value>Set in Step deployVendorJAR</value>
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
    <key>JBOSSServerForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>WSPORT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>WSSERVER</key>
    <value>Property From Config</value>
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
    <key>lisa.invokeService_check.rsp</key>
    <value>Set in Step invokeService_check</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeService_check.rsp.time</key>
    <value>Set in Step invokeService_check</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeService_authorization.rsp</key>
    <value>Set in Step invokeService_authorization</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeService_authorization.rsp.time</key>
    <value>Set in Step invokeService_authorization</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeService_sayHello.rsp</key>
    <value>Set in Step invokeService_sayHello</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeService_sayHello.rsp.time</key>
    <value>Set in Step invokeService_sayHello</value>
    </Parameter>
</resultState>

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{LISA_TC_PATH}}/data{{g11n}}.txt</file>
      </Companion>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/1EJBBTApp/install_ejb_data.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.ejbbt.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/1EJBBTApp/install_ejb_build.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.ejbbt.tc</clibuildfileppty>
      </Companion>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/2JBoss5.xVenderJAR/install_venderjar_data.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.venderjar.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/2JBoss5.xVenderJAR/install_venderjar_build.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.venderjar.tc</clibuildfileppty>
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
<doc>{{LISA_TC_PATH}}/../2node_hsql{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>CDC</name>
<external>false</external>
<props>
    <Parameter>
    <key>bwport1</key>
    <value>8898</value>
    </Parameter>
    <Parameter>
    <key>jndiconnectionfactory</key>
    <value>GenericConnectionFactory</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.jdbc1.direct.dbUrl</key>
    <value>jdbc:hsqldb:hsql://AMX-BACKEND.na.tibco.com:1234/amx</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.hibernate1.dialect</key>
    <value>org.hibernate.dialect.HSQLDialect</value>
    </Parameter>
    <Parameter>
    <key>bwhost1</key>
    <value>localhost</value>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value>http://localhost:8120</value>
    </Parameter>
    <Parameter>
    <key>env.node2.name</key>
    <value>QANode2</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.jdbc1.direct.jdbcDriver</key>
    <value>org.hsqldb.jdbcDriver</value>
    </Parameter>
    <Parameter>
    <key>jndiport</key>
    <value>7622</value>
    </Parameter>
    <Parameter>
    <key>emshost</key>
    <value>AMX-BACKEND-2.na.tibco.com</value>
    </Parameter>
    <Parameter>
    <key>jmshost</key>
    <value>AMX-BACKEND-2.na.tibco.com</value>
    </Parameter>
    <Parameter>
    <key>host.jmx.port</key>
    <value>6051</value>
    </Parameter>
    <Parameter>
    <key>jmspwd</key>
    <value>amxemspwd</value>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
    <value>AMXAdmin_{{LISA_USER}}</value>
    </Parameter>
    <Parameter>
    <key>JBOSSServerForEJBBT</key>
    <value>192.168.67.94</value>
    </Parameter>
    <Parameter>
    <key>portssl1</key>
    <value>6765</value>
    </Parameter>
    <Parameter>
    <key>port4</key>
    <value>8778</value>
    </Parameter>
    <Parameter>
    <key>bwportssl1</key>
    <value>6767</value>
    </Parameter>
    <Parameter>
    <key>port3</key>
    <value>8891</value>
    </Parameter>
    <Parameter>
    <key>port2</key>
    <value>8890</value>
    </Parameter>
    <Parameter>
    <key>port1</key>
    <value>8120</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.jdbc1.direct.dbpwd</key>
    <value></value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.datafile.template</key>
    <value>{{tibco.test.suite.source.dir}}/amxdata_2node.template.xml</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.teneo1.Dialect</key>
    <value>org.hibernate.dialect.HSQLDialect</value>
    </Parameter>
    <Parameter>
    <key>host1</key>
    <value>localhost</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.hibernate1.dataSor</key>
    <value>jdbc</value>
    </Parameter>
    <Parameter>
    <key>host.instance</key>
    <value>QA-BAT-Host</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.connectionFactory</key>
    <value>com.sun.jndi.ldap.LdapCtxFactory</value>
    </Parameter>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
    <value>1099</value>
    </Parameter>
    <Parameter>
    <key>jndihost</key>
    <value>AMX-BACKEND.na.tibco.com</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.port</key>
    <value>125</value>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value>{{tibco.test.suite.source.dir}}/1machine_2node_cdc.config</value>
    </Parameter>
    <Parameter>
    <key>admin.instance.name</key>
    <value>admin1</value>
    </Parameter>
    <Parameter>
    <key>emsuser</key>
    <value>admin</value>
    </Parameter>
    <Parameter>
    <key>jmsuser</key>
    <value>amxemspwd</value>
    </Parameter>
    <Parameter>
    <key>env.node1.name</key>
    <value>QANode1</value>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>t</value>
    </Parameter>
    <Parameter>
    <key>emspwd</key>
    <value></value>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>root</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.jdbc1.direct.dbuser</key>
    <value>sa</value>
    </Parameter>
    <Parameter>
    <key>identityProvider</key>
    <value>keystore</value>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value>7522</value>
    </Parameter>
    <Parameter>
    <key>jmsport</key>
    <value>7522</value>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value>QAEnvironment_{{LISA_USER}}</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.teneo1.dataSor</key>
    <value>jdbc</value>
    </Parameter>
    <Parameter>
    <key>host.name</key>
    <value>SystemHost_{{LISA_USER}}</value>
    </Parameter>
    <Parameter>
    <key>jndipwd</key>
    <value></value>
    </Parameter>
    <Parameter>
    <key>jndicontexturl</key>
    <value>tibjmsnaming://AMX-BACKEND.na.tibco.com:7622</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.host</key>
    <value>10.97.106.132</value>
    </Parameter>
    <Parameter>
    <key>jndiuser</key>
    <value>admin</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.providerURL</key>
    <value>ldap://puppy.na.tibco.com:389</value>
    </Parameter>
</props>
</Configuration>
</Configurations>
    <Node name="deployEJBBTApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deployVendorJAR" > 

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
    <value>{{tibco.amx.buildfile.ejbbt.tc}}</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antDeployEJBBT.log</value>
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
    <value>deployTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.ejbbt.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
<log>Configuration and Deployment of Application on host finished.....</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="deployVendorJAR" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deployApp" > 

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
    <value>{{tibco.amx.buildfile.venderjar.tc}}</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antDeployVendorJar.log</value>
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
    <value>deployTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.venderjar.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
<log>Configuration and Deployment of Application on host finished.....</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeService_authorization" > 

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
    <value>{{tibco.test.case.log.dir}}/antDeployApp.log</value>
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
<log>Configuration and Deployment of Application on host finished.....</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="invokeService_authorization" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeService_check" > 

<graphx>130</graphx>
<graphy>130</graphy>
<url>http://{{tibco.amx.rt.httpconnector1.host}}:{{tibco.amx.rt.httpconnector1.port}}/creditCardRemotePortType/</url>
<action>authorization</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmVqYjM9Imh0dHA6Ly9lamIzLmNyZWRpdGNhcmQudGli
Y28uY29tIj4NCiAgIDxzb2FwZW52OkhlYWRlci8+DQogICA8c29hcGVudjpCb2R5Pg0KICAgICAg
PGVqYjM6YXV0aG9yaXphdGlvbmFyZ3MwPg0KICAgICAgICAgPGNhcmRObz57e0lucHV0X2NhcmRO
b319PC9jYXJkTm8+DQogICAgICAgICA8ZGVhbERhdGV0aW1lPjwvZGVhbERhdGV0aW1lPg0KICAg
ICAgICAgPG1lcmNoYW50Tm8+e3tJbnB1dF9tZXJjaGFudE5vfX08L21lcmNoYW50Tm8+DQogICAg
ICAgICA8bW9uZXk+e3tJbnB1dF9tb25leX19PC9tb25leT4NCiAgICAgIDwvZWpiMzphdXRob3Jp
emF0aW9uYXJnczA+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for authDesc_cardNo" type="com.itko.lisa.test.CheckResultContains">
<log>Found {{Input_cardNo}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Output_cardNo}} [{{Input_cardNo}}],Money [</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for authDesc_Money" type="com.itko.lisa.test.CheckResultContains">
<log>Found {{Input_money}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Input_money}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for authDesc_Bank" type="com.itko.lisa.test.CheckResultContains">
<log>Found {{Output_authDesc3}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>] by [{{Output_bank}}]</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for authDesc_MerchantNo" type="com.itko.lisa.test.CheckResultContains">
<log>Found {{Input_merchantNo}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Input_merchantNo}}</param>
</CheckResult>

    </Node>


    <Node name="invokeService_check" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeService_sayHello" > 

<graphx>130</graphx>
<graphy>130</graphy>
<url>http://{{tibco.amx.rt.httpconnector1.host}}:{{tibco.amx.rt.httpconnector1.port}}/creditCardRemotePortType/</url>
<action>check</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmVqYjM9Imh0dHA6Ly9lamIzLmNyZWRpdGNhcmQudGli
Y28uY29tIj4NCiAgIDxzb2FwZW52OkhlYWRlci8+DQogICA8c29hcGVudjpCb2R5Pg0KICAgICAg
PGVqYjM6Y2hlY2thcmdzMD57e0lucHV0X0ZpcnN0TmFtZX19PC9lamIzOmNoZWNrYXJnczA+DQog
ICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for output" type="com.itko.lisa.test.CheckResultContains">
<log>Found {{Input_money}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Check is ok, you input is :</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for Input_FirstName" type="com.itko.lisa.test.CheckResultContains">
<log>Found {{Input_FirstName}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Input_FirstName}}</param>
</CheckResult>

    </Node>


    <Node name="invokeService_sayHello" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="undeployApp" > 

<graphx>130</graphx>
<graphy>130</graphy>
<url>http://{{tibco.amx.rt.httpconnector1.host}}:{{tibco.amx.rt.httpconnector1.port}}/creditCardRemotePortType/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmVqYjM9Imh0dHA6Ly9lamIzLmNyZWRpdGNhcmQudGli
Y28uY29tIj4NCiAgIDxzb2FwZW52OkhlYWRlci8+DQogICA8c29hcGVudjpCb2R5Pg0KICAgICAg
PGVqYjM6c2F5SGVsbG9hcmdzMD57e0lucHV0X0ZpcnN0TmFtZX19PC9lamIzOnNheUhlbGxvYXJn
czA+DQogICAgICA8ZWpiMzpzYXlIZWxsb2FyZ3MxPnt7SW5wdXRfTGFzdE5hbWV9fTwvZWpiMzpz
YXlIZWxsb2FyZ3MxPg0KICAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for {{Input_FirstName}}&amp;{{Input_LastName}}" type="com.itko.lisa.test.CheckResultContains">
<log>Found {{Input_FirstName}}  {{Input_LastName}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Input_FirstName}} {{Input_LastName}}</param>
</CheckResult>

    </Node>


    <Node name="undeployApp" log=""
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
    <value>{{tibco.test.case.log.dir}}/antUndeployApp.log</value>
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
    <value>300</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application on host finished.....</log>
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

<graphx>370</graphx>
<graphy>370</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>250</graphx>
<graphy>250</graphy>
    </Node>


</TestCase>
