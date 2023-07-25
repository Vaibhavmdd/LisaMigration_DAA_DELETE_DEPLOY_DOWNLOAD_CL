<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Mon May 16 02:48:41 PDT 2022 -->


<TestCase name="setup" version="2">
<id>30e183e0</id>
<Documentation>Create build.properties file from build.properties.template for TCT silentMode.&#13;&#10;Invoking TCT in silentMode to Provision DB driver if Oracle/SQLServer/DB2.&#13;&#10;Invoking TCT in silentMode to bootstrap TibcoHost, SystemNode and DevNode.&#13;&#10;Set Loggers for tibcohost.log as well as SystemNode.log.&#13;&#10;Setup Nodes (osgi console port 1129 and 1139).&#13;&#10;Set Node Loggers.&#13;&#10;Install Resources Instances.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0xMjc1NzA2MTc2</sig>
<rootNode>stopTIBCOHost</rootNode>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
    <Parameter>
    <key>TIBCO_EMS_CONFIG_PATH</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step1.rsp</key>
    <value>Set in Step Step1</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step1.rsp.time</key>
    <value>Set in Step Step1</value>
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
    <key>ldapPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
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
    <key>tibco.test.suite.config.path</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.instance.name</key>
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
    <key>portssl1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.jmx.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.prefix</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>enableMCR</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp.time</key>
    <value>Set in Step continue</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteTIBCOHostConfigFolder.rsp.time</key>
    <value>Set in Step deleteTIBCOHostConfigFolder</value>
    </Parameter>
    <Parameter>
    <key>lisa.re-createTIBCOHostConfigFolder.rsp.time</key>
    <value>Set in Step re-createTIBCOHostConfigFolder</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteAMXQueues.rsp.time</key>
    <value>Set in Step deleteAMXQueues</value>
    </Parameter>
    <Parameter>
    <key>lisa.bootstrapTIBCOHost.rsp.time</key>
    <value>Set in Step bootstrapTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.bootstrapTIBCOHost.rsp</key>
    <value>Set in Step bootstrapTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>thPropFile</key>
    <value>Set in Step bootstrapTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>db.shell.version</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>db.feature.version</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>db.shell.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>db.source.jar.location</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiconnectionfactory</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>compiler</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>installTempDir</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndicontexturlSSL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>logappender.file.location</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>keystore.location</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiport</key>
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
    <key>JBOSSServerForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hibernateDialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.instance</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>clrZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.connectionFactory</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>ejbZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.sv.queuePrefix</key>
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
    <key>cppZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmsuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>httpConnectionTimeout</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amxZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.env.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tmpDir</key>
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
    <key>jmsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>adapterZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.db.url</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>installJavaHome</key>
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
    <key>amxHFZip</key>
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
    <key>admin.cli.ssl.keyalias</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keypassword</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorepassword</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystoretype</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorelocation</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.bootstrapAdmin.rsp</key>
    <value>Set in Step bootstrapAdmin</value>
    </Parameter>
    <Parameter>
    <key>lisa.bootstrapAdmin.rsp.time</key>
    <value>Set in Step bootstrapAdmin</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.replaceInAdminPropFile.rsp</key>
    <value>Set in Step replaceInAdminPropFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.replaceInAdminPropFile.rsp.time</key>
    <value>Set in Step replaceInAdminPropFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>admin.db.usedefault</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.db.dialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.db.driver</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.db.password</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.db.username</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.replaceTemplate.rsp.time</key>
    <value>Set in Step replaceTemplate</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteOracleDBUsername.rsp.time</key>
    <value>Set in Step deleteOracleDBUsername</value>
    </Parameter>
    <Parameter>
    <key>lisa.tctSilent-provisionDriver.rsp.time</key>
    <value>Set in Step tctSilent-provisionDriver</value>
    </Parameter>
    <Parameter>
    <key>lisa.createSqlServerDB.rsp.time</key>
    <value>Set in Step createSqlServerDB</value>
    </Parameter>
    <Parameter>
    <key>lisa.findCorrectTCTFolder.rsp.time</key>
    <value>Set in Step findCorrectTCTFolder</value>
    </Parameter>
    <Parameter>
    <key>lisa.setupNodes.rsp</key>
    <value>Set in Step setupNodes</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyAdminPropFile.rsp</key>
    <value>Set in Step copyAdminPropFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifySystemNodeLogExist.rsp.time</key>
    <value>Set in Step verifySystemNodeLogExist</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyRuntimeNode2LogExist.rsp.time</key>
    <value>Set in Step verifyRuntimeNode2LogExist</value>
    </Parameter>
    <Parameter>
    <key>lisa.osSwitch.rsp</key>
    <value>Set in Step osSwitch</value>
    </Parameter>
    <Parameter>
    <key>lisa.osSwitch.rsp.time</key>
    <value>Set in Step osSwitch</value>
    </Parameter>
    <Parameter>
    <key>tctPostFix</key>
    <value>Set in Step osSwitch</value>
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
    <key>value</key>
    <value>Set in Step stopTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>property</key>
    <value>Set in Step stopTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>AdminPropertyValues_RowNum</key>
    <value>Set in Step stopTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp</key>
    <value>Set in Step continue</value>
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
    <key>lisa.deleteTIBCOHostConfigFolder.rsp</key>
    <value>Set in Step deleteTIBCOHostConfigFolder</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteTIBCOAdminConfigFolder.rsp</key>
    <value>Set in Step deleteTIBCOAdminConfigFolder</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteTIBCOAdminConfigFolder.rsp.time</key>
    <value>Set in Step deleteTIBCOAdminConfigFolder</value>
    </Parameter>
    <Parameter>
    <key>lisa.re-createTIBCOHostConfigFolder.rsp</key>
    <value>Set in Step re-createTIBCOHostConfigFolder</value>
    </Parameter>
    <Parameter>
    <key>lisa.re-createTIBCOAdminConfigFolder.rsp</key>
    <value>Set in Step re-createTIBCOAdminConfigFolder</value>
    </Parameter>
    <Parameter>
    <key>lisa.re-createTIBCOAdminConfigFolder.rsp.time</key>
    <value>Set in Step re-createTIBCOAdminConfigFolder</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteAMXQueues.rsp</key>
    <value>Set in Step deleteAMXQueues</value>
    </Parameter>
    <Parameter>
    <key>lisa.replaceTemplate.rsp</key>
    <value>Set in Step replaceTemplate</value>
    </Parameter>
    <Parameter>
    <key>lisa.findCorrectTCTFolder.rsp</key>
    <value>Set in Step findCorrectTCTFolder</value>
    </Parameter>
    <Parameter>
    <key>tctStartInDir</key>
    <value>Set in Step findCorrectTCTFolder</value>
    </Parameter>
    <Parameter>
    <key>lisa.dbSwitch.rsp</key>
    <value>Set in Step dbSwitch</value>
    </Parameter>
    <Parameter>
    <key>lisa.dbSwitch.rsp.time</key>
    <value>Set in Step dbSwitch</value>
    </Parameter>
    <Parameter>
    <key>lisa.tctSilent-bootStrap.rsp</key>
    <value>Set in Step tctSilent-bootStrap</value>
    </Parameter>
    <Parameter>
    <key>lisa.tctSilent-bootStrap.rsp.time</key>
    <value>Set in Step tctSilent-bootStrap</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkAdminUp.rsp</key>
    <value>Set in Step checkAdminUp</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkAdminUp.rsp.time</key>
    <value>Set in Step checkAdminUp</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyAdminPropFile.rsp.time</key>
    <value>Set in Step copyAdminPropFile</value>
    </Parameter>
    <Parameter>
    <key>adminPropFile</key>
    <value>Set in Step copyAdminPropFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyTibcoHostLog.rsp</key>
    <value>Set in Step copyTibcoHostLog</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyTibcoHostLog.rsp.time</key>
    <value>Set in Step copyTibcoHostLog</value>
    </Parameter>
    <Parameter>
    <key>lisa.setupNodes.rsp.time</key>
    <value>Set in Step setupNodes</value>
    </Parameter>
    <Parameter>
    <key>lisa.setupRI.rsp</key>
    <value>Set in Step setupRI</value>
    </Parameter>
    <Parameter>
    <key>lisa.setupRI.rsp.time</key>
    <value>Set in Step setupRI</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifySystemNodeLogExist.rsp</key>
    <value>Set in Step verifySystemNodeLogExist</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyRuntimeNodeLogExist.rsp</key>
    <value>Set in Step verifyRuntimeNodeLogExist</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyRuntimeNodeLogExist.rsp.time</key>
    <value>Set in Step verifyRuntimeNodeLogExist</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyRuntimeNode2LogExist.rsp</key>
    <value>Set in Step verifyRuntimeNode2LogExist</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteOracleDBUsername.rsp</key>
    <value>Set in Step deleteOracleDBUsername</value>
    </Parameter>
    <Parameter>
    <key>lisa.createOracleDBUsername.rsp</key>
    <value>Set in Step createOracleDBUsername</value>
    </Parameter>
    <Parameter>
    <key>lisa.createOracleDBUsername.rsp.time</key>
    <value>Set in Step createOracleDBUsername</value>
    </Parameter>
    <Parameter>
    <key>lisa.tctSilent-provisionDriver.rsp</key>
    <value>Set in Step tctSilent-provisionDriver</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteSqlServerDB.rsp</key>
    <value>Set in Step deleteSqlServerDB</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteSqlServerDB.rsp.time</key>
    <value>Set in Step deleteSqlServerDB</value>
    </Parameter>
    <Parameter>
    <key>lisa.createSqlServerDB.rsp</key>
    <value>Set in Step createSqlServerDB</value>
    </Parameter>
    <Parameter>
    <key>lisa.cleanUpDB2Database.rsp</key>
    <value>Set in Step cleanUpDB2Database</value>
    </Parameter>
    <Parameter>
    <key>lisa.cleanUpDB2Database.rsp.time</key>
    <value>Set in Step cleanUpDB2Database</value>
    </Parameter>
    <Parameter>
    <key>tctProvisionDriver</key>
    <value>Set in Step tctSilent-provisionDriver</value>
    </Parameter>
    <Parameter>
    <key>tctSilent</key>
    <value>Set in Step tctSilent-bootStrap</value>
    </Parameter>
    <Parameter>
    <key>lisa.addSNTHLogAppenders.rsp</key>
    <value>Set in Step addSNTHLogAppenders</value>
    </Parameter>
    <Parameter>
    <key>lisa.addSNTHLogAppenders.rsp.time</key>
    <value>Set in Step addSNTHLogAppenders</value>
    </Parameter>
</resultState>

<Configurations>
<Configuration>
<name>2node</name>
<external>true</external>
<doc>F:\trunk331\tests\func\runtime\bat\2node_orcl.config</doc>
</Configuration>
<Configuration>
<name>CDC</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_hsql_cdc.config</doc>
</Configuration>
<Configuration>
<name>1node</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../1node_hsql{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>2node_oracle</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_orcl{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>2node_sqlserver</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_sqlsvr{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>2node_db2</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_db2{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>2node_ssl_orcl_ldap_form</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_ssl_orcl_ldap_form.config</doc>
</Configuration>
<Configuration>
<name>2node_ldap</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_ldap{{g11n}}.config</doc>
</Configuration>
</Configurations>
    <Node name="stopTIBCOHost" log="Stop TIBCO Host with Mode=abort and Wait=true"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="wait" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Documentation>Stop TIBCO Host in abort mode with wait set to true (synchronized call):&#13;&#10;TIBCO Host is supposed to wait for all the nodes to shutdown before it terminates.</Documentation>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/tibcohost/StopTibcoHost.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>continue</onFail>
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
    <value>abort</value>
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

      <!-- Data Sets -->
<readrec>AdminPropertyValues</readrec>
    </Node>


    <Node name="wait" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deleteTIBCOHostConfigFolder" > 

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
    <value>5</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>5</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deleteTIBCOHostConfigFolder" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deleteTIBCOAdminConfigFolder" > 

<graphx>755</graphx>
<graphy>3315</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/DeleteFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{TIBCO_HOST_CONFIG}}</value>
    <name>File or directory to be deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deleteTIBCOAdminConfigFolder" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="re-createTIBCOHostConfigFolder" > 

<graphx>245</graphx>
<graphy>2749</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/DeleteFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{TIBCO_AMXADMIN_CONFIG}}</value>
    <name>File or directory to be deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="re-createTIBCOHostConfigFolder" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="re-createTIBCOAdminConfigFolder" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CreateDirectory.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>directory</key>
    <value>{{TIBCO_HOST_CONFIG}}</value>
    <name>Directory to be created</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="re-createTIBCOAdminConfigFolder" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deleteAMXQueues" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CreateDirectory.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>directory</key>
    <value>{{TIBCO_AMXADMIN_CONFIG}}</value>
    <name>Directory to be created</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deleteAMXQueues" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="replaceTemplate" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/DeleteQueues.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>continue</onFail>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>{{=(testExec.getStateObject(&quot;emssecure&quot;) == null || testExec.getStateObject(&quot;emssecure&quot;).equals(&quot;&quot;) || testExec.getStateObject(&quot;emssecure&quot;).equals(&quot;false&quot;))?&quot;tcp://&quot;:&quot;ssl://&quot;;}}{{emshost}}:{{emsport}}</value>
    <name>Url to connect to.</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{emsuser}}</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{emspwd}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>trustedCertificate</key>
    <value>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/server_root.cert.pem</value>
    <name>Trusted Certificate for ssl connection</name>
    </Parameter>
    <Parameter>
    <key>pattern</key>
    <value>{{amx.sv.queuePrefix}}.&gt;</value>
    <name>Pattern indicating which queues to delete</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="replaceTemplate" log="Replacing the key in build.properties.template file with the value"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="findCorrectTCTFolder" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/tct/replaceInTemplate.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>templateFile</key>
    <value>{{TIBCO_AMX_TEST_FUNC_RT}}/bat/setup/build.properties.331.template</value>
    <name>full path of Template file to be replaced</name>
    </Parameter>
    <Parameter>
    <key>propertiesFile</key>
    <value>{{tibco.test.case.log.dir}}/build.properties</value>
    <name>full path of build.properties file</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert182" type="com.itko.lisa.test.CheckResultContains">
<log>Look for string Error in the return response to declare it as failed...</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>ERROR</param>
</CheckResult>

    </Node>


    <Node name="findCorrectTCTFolder" log="Finding the correct folder from which TCT is to be run"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="osSwitch" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/tct/findHighestFolder.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>searchDir</key>
    <value>{{TIBCO_HOME}}/tct/</value>
    <name>The name of the directory in which the highest has to be searched</name>
    </Parameter>
    <Parameter>
    <key>searchFilter</key>
    <value>TIBCOConfigurationTool</value>
    <name>the filter to be searched in the folders</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.findCorrectTCTFolder.rsp</valueToFilterKey>
      <prop>tctStartInDir</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert182" type="com.itko.lisa.test.CheckResultContains">
<log>Look for string Error in the return response to declare it as failed...</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>ERROR</param>
</CheckResult>

    </Node>


    <Node name="osSwitch" log="Getting the OS for TCT silent call"
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="dbSwitch" > 

<graphx>10</graphx>
<graphy>10</graphy>
<onerror>fail</onerror>
<script>if (System.getProperty(&quot;os.name&quot;).toLowerCase().indexOf(&quot;windows&quot;) &gt; -1)&#13;&#10;  return &quot;c.exe&quot;;&#13;&#10;else&#13;&#10;  return &quot;&quot;;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.osSwitch.rsp</valueToFilterKey>
      <prop>tctPostFix</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="dbSwitch" log="Switch case for DB"
          type="com.itko.lisa.vse.StepSelectorStep" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="tctSilent-bootStrap" > 

<graphx>250</graphx>
<graphy>250</graphy>
<control>{{admin.db.url}}</control>
<start></start>
<end></end>
<noMatchStep>tctSilent-bootStrap</noMatchStep>
<onExceptionStep>fail</onExceptionStep>
<table>
<Case>
<enabled>true</enabled>
<name>HSQL</name>
<delay>1000-10000</delay>
<criteria>hsql</criteria>
<compareType>FIND</compareType>
<nextStep>tctSilent-bootStrap</nextStep>
</Case>
<Case>
<enabled>true</enabled>
<name>Oracle</name>
<delay>1000-10000</delay>
<criteria>oracle</criteria>
<compareType>FIND</compareType>
<nextStep>deleteOracleDBUsername</nextStep>
</Case>
<Case>
<enabled>true</enabled>
<name>SQLServer</name>
<delay>1000-10000</delay>
<criteria>sqlserver</criteria>
<compareType>FIND</compareType>
<nextStep>deleteSqlServerDB</nextStep>
</Case>
<Case>
<enabled>true</enabled>
<name>DB2</name>
<delay>1000-10000</delay>
<criteria>db2</criteria>
<compareType>FIND</compareType>
<nextStep>cleanUpDB2Database</nextStep>
</Case>
<Case>
<enabled>true</enabled>
<name>PostgreSQL</name>
<delay>1000-10000</delay>
<criteria>postgresql</criteria>
<compareType>FIND</compareType>
<nextStep>deletePostgreSQLDB</nextStep>
</Case>
</table>
    </Node>


    <Node name="deleteOracleDBUsername" log="Deleting existing oracle user"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="createOracleDBUsername" > 

<graphx>370</graphx>
<graphy>370</graphy>
<Documentation>Delete Oracle User</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/db/DeleteUserOracle.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>continue</onFail>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{admin.db.host}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{admin.db.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>sid</key>
    <value>{{admin.db.sid}}</value>
    <name>Oracle sid</name>
    </Parameter>
    <Parameter>
    <key>adminusername</key>
    <value>{{admin.db.admusr}}</value>
    <name>Oracle admin user</name>
    </Parameter>
    <Parameter>
    <key>adminpassword</key>
    <value>{{admin.db.admpwd}}</value>
    <name>Oracle admin password</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{admin.db.username}}</value>
    <name>Oracle user that is deleted</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{admin.db.password}}</value>
    <name>password for the user that is deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="createOracleDBUsername" log="Creating Oracle User"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="tctSilent-provisionDriver" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Documentation>Create Oracle User</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/db/CreateUserOracle.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{admin.db.host}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{admin.db.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>sid</key>
    <value>{{admin.db.sid}}</value>
    <name>Oracle sid</name>
    </Parameter>
    <Parameter>
    <key>adminusername</key>
    <value>{{admin.db.admusr}}</value>
    <name>Oracle admin user</name>
    </Parameter>
    <Parameter>
    <key>adminpassword</key>
    <value>{{admin.db.admpwd}}</value>
    <name>Oracle admin password</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{admin.db.username}}</value>
    <name>Oracle user that is created</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{admin.db.password}}</value>
    <name>password for the user that is created</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deleteSqlServerDB" log="Deleting existing sqlserver DB"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="createSqlServerDB" > 

<graphx>490</graphx>
<graphy>490</graphy>
<Documentation>Delete SQL Server DB</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/db/DeleteDatabaseSqlServer.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>continue</onFail>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{admin.db.host}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{admin.db.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{admin.db.username}}</value>
    <name>SQL Server user</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{admin.db.password}}</value>
    <name>SQL Server Password</name>
    </Parameter>
    <Parameter>
    <key>database</key>
    <value>{{admin.db.dbname}}</value>
    <name>Database to be deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="createSqlServerDB" log="Creating sqlserver DB"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="alterSqlServerDB" > 

<graphx>610</graphx>
<graphy>610</graphy>
<Documentation>Create SQL Server DB</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/db/CreateDatabaseSqlServer.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{admin.db.host}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{admin.db.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{admin.db.username}}</value>
    <name>SQL Server user</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{admin.db.password}}</value>
    <name>SQL Server Password</name>
    </Parameter>
    <Parameter>
    <key>database</key>
    <value>{{admin.db.dbname}}</value>
    <name>Database to be created</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="alterSqlServerDB" log="Altering sqlserver DB"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="tctSilent-provisionDriver" > 

<graphx>730</graphx>
<graphy>730</graphy>
<Documentation>Alter DB for AMX</Documentation>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/amx/admin/PrepareForSQLServer.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{admin.db.host}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{admin.db.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{admin.db.username}}</value>
    <name>SQL Server user</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{admin.db.password}}</value>
    <name>SQL Server Password</name>
    </Parameter>
    <Parameter>
    <key>database</key>
    <value>{{admin.db.dbname}}</value>
    <name>Database to be altered</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="cleanUpDB2Database" log="Cleaning up the DB2 database"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="tctSilent-provisionDriver" > 

<graphx>850</graphx>
<graphy>850</graphy>
<Documentation>Delete DB2 tables, triggers, indexes, views in the given database</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/db/CleanUpDB2.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{admin.db.host}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{admin.db.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>sysuser</key>
    <value>{{admin.db.admusr}}</value>
    <name>DB2 system user allowed to drop schema</name>
    </Parameter>
    <Parameter>
    <key>syspassword</key>
    <value>{{admin.db.admpwd}}</value>
    <name>DB2 system password</name>
    </Parameter>
    <Parameter>
    <key>database</key>
    <value>{{admin.db.dbname}}</value>
    <name>DB2 database to connect to</name>
    </Parameter>
    <Parameter>
    <key>schema</key>
    <value>{{admin.db.username}}</value>
    <name>DB2 user (schema) getting the clean up</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deletePostgreSQLDB" log="Deleting existing sqlserver DB"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="createPostgreSQLDB" > 

<graphx>490</graphx>
<graphy>490</graphy>
<Documentation>Delete SQL Server DB</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/db/DeleteDatabasePostgreSQL.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>continue</onFail>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{admin.db.host}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{admin.db.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{admin.db.username}}</value>
    <name>PostgreSQL user</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{admin.db.password}}</value>
    <name>PostgreSQL Password</name>
    </Parameter>
    <Parameter>
    <key>database</key>
    <value>{{admin.db.dbname}}</value>
    <name>Database to be deleted</name>
    </Parameter>
    <Parameter>
    <key>admusername</key>
    <value>{{admin.db.admusr}}</value>
    <name>Admin Username</name>
    </Parameter>
    <Parameter>
    <key>admpassword</key>
    <value>{{admin.db.admpwd}}</value>
    <name>Admin Password</name>
    </Parameter>
    <Parameter>
    <key>admdb</key>
    <value>{{admin.db.admdb}}</value>
    <name>Admin DB</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="createPostgreSQLDB" log="Creating sqlserver DB"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="tctSilent-provisionDriver" > 

<graphx>610</graphx>
<graphy>610</graphy>
<Documentation>Create SQL Server DB</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/db/CreateDatabasePostgreSQL.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>hostname</key>
    <value>{{admin.db.host}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{admin.db.port}}</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{admin.db.username}}</value>
    <name>PostgreSQL user</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{admin.db.password}}</value>
    <name>PostgreSQL Password</name>
    </Parameter>
    <Parameter>
    <key>database</key>
    <value>{{admin.db.dbname}}</value>
    <name>Database to be deleted</name>
    </Parameter>
    <Parameter>
    <key>admusername</key>
    <value>{{admin.db.admusr}}</value>
    <name>Admin Username</name>
    </Parameter>
    <Parameter>
    <key>admpassword</key>
    <value>{{admin.db.admpwd}}</value>
    <name>Admin Password</name>
    </Parameter>
    <Parameter>
    <key>admdb</key>
    <value>{{admin.db.admdb}}</value>
    <name>Admin DB</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="tctSilent-provisionDriver" log="Provisioning DB Driver using TCT in silentMode."
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="tctSilent-bootStrap" > 

<graphx>10</graphx>
<graphy>10</graphy>
<cmd>{{TIBCO_HOME}}/tct/{{tctStartInDir}}/TIBCOConfigurationTool{{tctPostFix}} -silentMode -wizard.id com.tibco.tct.tpclshells -wizard.props {{tibco.test.case.log.dir}}/build.properties</cmd>
<basedir>{{TIBCO_HOME}}/tct/{{tctStartInDir}}/</basedir>
<toNode>fail</toNode>
<exceptionNode>fail</exceptionNode>
<timeOut>2000</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<env>
</env>
<exitCodes>
</exitCodes>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.tctSilent-provisionDriver.rsp</valueToFilterKey>
      <prop>tctProvisionDriver</prop>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterSavePropToFile">
        <valueToFilterKey>lisa.tctSilent-provisionDriver.rsp</valueToFilterKey>
      <file>{{logappender.file.location}}/tctProvisionDriver.log</file>
      <append>true</append>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Provisioning DB Driver Failed" type="com.itko.lisa.test.CheckResultContains">
<log>Provisioning DB Driver using TCT in silentMode Failed.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD FAILED</param>
</CheckResult>

    </Node>


    <Node name="tctSilent-bootStrap" log="Bootstrapping Admin as well as TibcoHost using TCT in silentMode."
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="checkAdminUp" > 

<graphx>10</graphx>
<graphy>10</graphy>
<cmd>{{TIBCO_HOME}}/tct/{{tctStartInDir}}/TIBCOConfigurationTool{{tctPostFix}} -silentMode -wizard.id com.tibco.tct.admin -wizard.props {{tibco.test.case.log.dir}}/build.properties -wizard.target admin-full-setup</cmd>
<basedir>{{TIBCO_HOME}}/tct/{{tctStartInDir}}/</basedir>
<toNode>timeoutFail</toNode>
<exceptionNode>fail</exceptionNode>
<timeOut>3600</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<env>
</env>
<exitCodes>
</exitCodes>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.tctSilent-bootStrap.rsp</valueToFilterKey>
      <prop>tctSilent</prop>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterSavePropToFile">
        <valueToFilterKey>lisa.tctSilent-bootStrap.rsp</valueToFilterKey>
      <file>{{logappender.file.location}}/tctSilent.log</file>
      <append>true</append>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Bootstrapping Tibcohost or Admin Failed" type="com.itko.lisa.test.CheckResultContains">
<log>Bootstrap Tibcohost and Admin using TCT in silentMode Failed.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD FAILED</param>
</CheckResult>

<CheckResult assertTrue="true" name="Bootstrapping Tibcohost or Admin Successful" type="com.itko.lisa.test.CheckResultContains">
<log>Bootstrapping Tibcohost and Admin using TCT in silentMode successfully done.</log>
<then>checkAdminUp</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="timeoutFail" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>723</graphx>
<graphy>622</graphy>
<onerror>fail</onerror>
<script>if(tctSilent != null)&#13;&#10;{&#13;&#10;    tctSilent = testExec.convertStateString(tctSilent, &quot;tctSilent is not a string&quot;);&#13;&#10;    if(tctSilent.contains(&quot;BUILD SUCCESSFUL&quot;))&#13;&#10;    {&#13;&#10;        return &quot;PASS&quot;;&#13;&#10;    }&#13;&#10;}&#13;&#10;return &quot;FAIL&quot;;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Bootstrapping Tibcohost or Admin Failed" type="com.itko.lisa.test.CheckResultContains">
<log>Bootstrap Tibcohost and Admin using TCT in silentMode Failed.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>FAIL</param>
</CheckResult>

<CheckResult assertTrue="true" name="Bootstrapping Tibcohost or Admin Successful" type="com.itko.lisa.test.CheckResultContains">
<log>Bootstrapping Tibcohost and Admin using TCT in silentMode successfully done.</log>
<then>checkAdminUp</then>
<valueToAssertKey></valueToAssertKey>
        <param>PASS</param>
</CheckResult>

    </Node>


    <Node name="checkAdminUp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="copyAdminPropFile" > 

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
    <key>url</key>
    <value>{{adminURL}}</value>
    <name>Admin url. If provided 3 parameters below (host, port, secure) are ignored.</name>
    </Parameter>
    <Parameter>
    <key>host</key>
    <value></value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value></value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>secure</key>
    <value></value>
    <name>Use SSL to connect to Admin server</name>
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
    <key>timeout</key>
    <value>10</value>
    <name>Wait for a number of seconds before giving up on Admin server</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Admin failed to start on time</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="copyAdminPropFile" log="Copying remote properties file to reports dir"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="copyTibcoHostLog" > 

<graphx>970</graphx>
<graphy>970</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
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
    <value>{{TIBCO_CONFIG_HOME}}/admin/{{admin.group.name}}/samples/remote_props.properties</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{tibco.test.suite.log.dir}}/admin.properties</value>
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

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.copyAdminPropFile.rsp</valueToFilterKey>
      <prop>adminPropFile</prop>
      </Filter>

    </Node>


    <Node name="copyTibcoHostLog" log="Copying TibcoHost&apos;s log to the reports dir"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="addSNTHLogAppenders" > 

<graphx>970</graphx>
<graphy>970</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
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
    <value>{{TIBCO_CONFIG_HOME}}/tibcohost/{{host.instance}}/data_3.2.x/host/logs/tibcohost.log</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{logappender.file.location}}/tibcohost.log</value>
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


    <Node name="addSNTHLogAppenders" log="Adding SystemNode and TibcoHost Log Appenders and setting up the loggers"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="setupNodes" > 

<graphx>2399</graphx>
<graphy>89</graphy>
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
    <value>{{TIBCO_AMXADMIN_HOME}}/scripts</value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.test.suite.log.dir}}/amxbuild.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antLogService.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>add-logappenders</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=600,TIBCO_AMX_LIBRARY={{=TIBCO_AMX_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOME={{=TIBCO_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_CONFIG={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_HOME={{=TIBCO_AMXADMIN_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOST_HOME={{=TIBCO_HOST_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},tibco.config.mgmt.home={{=TIBCO_CONFIG_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},admin.enterprise.name={{tibco.amx.admin.configuration1.name}},admin.instance.name={{admin.instance.name}},admin.enterprise.dir={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},envt.data.file={{tibco.amx.datafile}},tibcohost.properties.file={{thPropFile}},instance.properties.file={{adminPropFile}},{{=((enableMCR)?&quot;enableMCR=true&quot;:&quot;&quot;)}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{=TIBCO_JAVA_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}}/jre/lib</value>
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
    <value>610</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert178" type="com.itko.lisa.test.CheckResultContains">
<log>Deploy LogService failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="setupNodes" log="create, start Nodes"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="setupRI" > 

<graphx>916</graphx>
<graphy>245</graphy>
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
    <value>{{TIBCO_AMXADMIN_HOME}}/scripts</value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.test.suite.log.dir}}/amxbuild.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antSetupNodes.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>setup-node</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>startTimeout=900,amx.sv.queuePrefix={{amx.sv.queuePrefix}},node1.tra={{TIBCO_HOST_CONFIG}}/{{host.instance}}{{=(testExec.getStateObject(&quot;nodeFolder&quot;) == null)?&quot;&quot;:nodeFolder;}}/nodes/{{env.node1.name}}/bin/{{host.prefix}}{{env.node1.name}}.tra,node2.tra={{TIBCO_HOST_CONFIG}}/{{host.instance}}{{=(testExec.getStateObject(&quot;nodeFolder&quot;) == null)?&quot;&quot;:nodeFolder;}}/nodes/{{env.node2.name}}/bin/{{host.prefix}}{{env.node2.name}}.tra,TIBCO_AMX_LIBRARY={{=TIBCO_AMX_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOME={{=TIBCO_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_CONFIG={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_HOME={{=TIBCO_AMXADMIN_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOST_HOME={{=TIBCO_HOST_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},tibco.config.mgmt.home={{=TIBCO_CONFIG_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},admin.enterprise.name={{tibco.amx.admin.configuration1.name}},admin.instance.name={{admin.instance.name}},admin.enterprise.dir={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},envt.data.file={{tibco.amx.datafile}},tibcohost.properties.file={{thPropFile}},instance.properties.file={{adminPropFile}},tibco_rv_home={{=TIBCO_RV_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{=TIBCO_JAVA_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}}/jre/lib</value>
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
    <value>910</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert142" type="com.itko.lisa.test.CheckResultContains">
<log>Setup Nodes failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="setupRI" log="setup Resources Instances"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifySystemNodeLogExist" > 

<graphx>1641</graphx>
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
    <value>{{TIBCO_AMXADMIN_HOME}}/scripts</value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.test.suite.log.dir}}/amxbuild.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antSetupRI.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>setupRI</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>riTimeout=600,TIBCO_AMX_LIBRARY={{=TIBCO_AMX_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOME={{=TIBCO_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_CONFIG={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_HOME={{=TIBCO_AMXADMIN_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOST_HOME={{=TIBCO_HOST_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},tibco.config.mgmt.home={{=TIBCO_CONFIG_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},admin.enterprise.name={{tibco.amx.admin.configuration1.name}},admin.instance.name={{admin.instance.name}},admin.enterprise.dir={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},envt.data.file={{tibco.amx.datafile}},tibcohost.properties.file={{thPropFile}},instance.properties.file={{adminPropFile}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{=TIBCO_JAVA_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}}/jre/lib</value>
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
    <value>610</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert142" type="com.itko.lisa.test.CheckResultContains">
<log>Setup Nodes failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="verifySystemNodeLogExist" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifyRuntimeNodeLogExist" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CheckFileExists.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{tibco.test.case.log.dir}}/SystemNode.log</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert121" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find SystemNode.log in {{logappender.file.location}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="verifyRuntimeNodeLogExist" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifyRuntimeNode2LogExist" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CheckFileExists.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{tibco.test.case.log.dir}}/{{env.node1.name}}.log</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert121" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find {{env.node1.name}}.log in {{logappender.file.location}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="verifyRuntimeNode2LogExist" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>250</graphx>
<graphy>250</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CheckFileExists.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{tibco.test.case.log.dir}}/{{env.node2.name}}.log</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert121" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find {{env.node2.name}}.log in {{logappender.file.location}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>3655</graphx>
<graphy>1641</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>3625</graphx>
<graphy>1451</graphy>
    </Node>


    <DataSet type="com.itko.lisa.test.DataSheet" name="AdminPropertyValues" atend="stopTIBCOHost" local="false" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVz
aG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAAFdmFsdWV0ABVodHRwOi8vbG9jYWxob3N0OjgxMjB0
AAhwcm9wZXJ0eXQACGFkbWluVVJMdAAaQWRtaW5Qcm9wZXJ0eVZhbHVlc19Sb3dOdW10AAExeA==</sample>
<table>
<col>property</col>
<col>value</col>
<tr>
<td>adminURL</td>
<td>{{adminURL}}</td>
</tr>
<tr>
<td>username</td>
<td>{{username}}</td>
</tr>
<tr>
<td>password</td>
<td>{{password}}</td>
</tr>
<tr>
<td>httpAuthType</td>
<td>{{=(testExec.getStateObject(&quot;httpAuthType&quot;) == null || testExec.getStateObject(&quot;httpAuthType&quot;).equals(&quot;&quot;))?&quot;basic&quot;:httpAuthType;}}</td>
</tr>
<tr>
<td>javax.net.ssl.trustStore</td>
<td>{{=(testExec.getStateObject(&quot;javax.net.ssl.trustStore&quot;) == null)?&quot;&quot;:testExec.parseInState(javax_net_ssl_trustStore).replace(&quot;\\&quot;,&quot;/&quot;);}}</td>
</tr>
<tr>
<td>javax.net.ssl.trustStoreType</td>
<td>{{=(testExec.getStateObject(&quot;javax.net.ssl.trustStoreType&quot;) == null)?&quot;&quot;:javax_net_ssl_trustStoreType;}}</td>
</tr>
<tr>
<td>javax.net.ssl.trustStorePassword</td>
<td>{{=(testExec.getStateObject(&quot;javax.net.ssl.trustStorePassword&quot;) == null)?&quot;&quot;:javax_net_ssl_trustStorePassword;}}</td>
</tr>
<tr>
<td>admin.cli.ssl.keystorelocation</td>
<td>{{=testExec.parseInState(admin_cli_ssl_keystorelocation).replace(&quot;\\&quot;,&quot;/&quot;);}}</td>
</tr>
<tr>
<td>admin.cli.ssl.keystorepassword</td>
<td>{{admin.cli.ssl.keystorepassword}}</td>
</tr>
<tr>
<td>admin.cli.ssl.keystoretype</td>
<td>{{admin.cli.ssl.keystoretype}}</td>
</tr>
<tr>
<td>admin.cli.ssl.keyalias</td>
<td>{{admin.cli.ssl.keyalias}}</td>
</tr>
<tr>
<td>admin.cli.ssl.keypassword</td>
<td>{{admin.cli.ssl.keypassword}}</td>
</tr>
<tr>
<td>serverconnsetting.enablessl</td>
<td>{{=(testExec.getStateObject(&quot;serverconnsetting.enablessl&quot;) == null)?&quot;&quot;:serverconnsetting_enablessl;}}</td>
</tr>
<tr>
<td>serverconnsetting.keystorelocation</td>
<td>{{=(testExec.getStateObject(&quot;serverconnsetting.keystorelocation&quot;) == null)?&quot;&quot;:testExec.parseInState(serverconnsetting_keystorelocation).replace(&quot;\\&quot;,&quot;/&quot;);}}</td>
</tr>
<tr>
<td>serverconnsetting.keystoretype</td>
<td>{{=(testExec.getStateObject(&quot;serverconnsetting.keystoretype&quot;) == null)?&quot;&quot;:serverconnsetting_keystoretype;}}</td>
</tr>
<tr>
<td>serverconnsetting.keystorepassword</td>
<td>{{=(testExec.getStateObject(&quot;serverconnsetting.keystorepassword&quot;) == null)?&quot;&quot;:serverconnsetting_keystorepassword;}}</td>
</tr>
<tr>
<td>serverconnsetting.keyalias</td>
<td>{{=(testExec.getStateObject(&quot;serverconnsetting.keyalias&quot;) == null)?&quot;&quot;:serverconnsetting_keyalias;}}</td>
</tr>
</table>
    </DataSet>

</TestCase>
