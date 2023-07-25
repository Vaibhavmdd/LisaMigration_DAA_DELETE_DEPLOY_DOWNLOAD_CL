<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Tue Oct 18 18:30:15 PDT 2011 -->


<TestCase name="setupServices" version="2">
<id>30e183e0</id>
<Documentation>Deploy Mediation App.&#13;&#10;Deploy Log Service (optional)&#13;&#10;Deploy Payload Service (optional)&#13;&#10;Deploy MCR (optional) &#13;&#10;</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS01NDQ3NjA3NzQ=</sig>
<rootNode>deployMediationApp</rootNode>
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
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
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
    <key>lisa.end.rsp.time</key>
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
    <key>lisa.continue.rsp</key>
    <value>Set in Step continue</value>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp.time</key>
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
    <key>lisa.deleteTIBCOHostConfigFolder.rsp.time</key>
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
    <key>lisa.re-createTIBCOHostConfigFolder.rsp.time</key>
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
    <key>lisa.deleteAMXQueues.rsp.time</key>
    <value>Set in Step deleteAMXQueues</value>
    </Parameter>
    <Parameter>
    <key>lisa.bootstrapTIBCOHost.rsp.time</key>
    <value>Set in Step bootstrapTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.bootstrapAdmin.rsp</key>
    <value>Set in Step bootstrapAdmin</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkAdminUp.rsp</key>
    <value>Set in Step checkAdminUp</value>
    </Parameter>
    <Parameter>
    <key>lisa.setupNodes.rsp</key>
    <value>Set in Step setupNodes</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployPayloadService.rsp</key>
    <value>Set in Step deployPayloadService</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployMediationApp.rsp</key>
    <value>Set in Step deployMediationApp</value>
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
    <key>lisa.verifyRuntimeNode2LogExist.rsp</key>
    <value>Set in Step verifyRuntimeNode2LogExist</value>
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
    <key>lisa.bootstrapAdmin.rsp.time</key>
    <value>Set in Step bootstrapAdmin</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkAdminUp.rsp.time</key>
    <value>Set in Step checkAdminUp</value>
    </Parameter>
    <Parameter>
    <key>lisa.setupNodes.rsp.time</key>
    <value>Set in Step setupNodes</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployPayloadService.rsp.time</key>
    <value>Set in Step deployPayloadService</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployMediationApp.rsp.time</key>
    <value>Set in Step deployMediationApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifySystemNodeLogExist.rsp.time</key>
    <value>Set in Step verifySystemNodeLogExist</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyRuntimeNodeLogExist.rsp.time</key>
    <value>Set in Step verifyRuntimeNodeLogExist</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyRuntimeNode2LogExist.rsp.time</key>
    <value>Set in Step verifyRuntimeNode2LogExist</value>
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
    <key>lisa.provisionDBDriverFeature.rsp</key>
    <value>Set in Step provisionDBDriverFeature</value>
    </Parameter>
    <Parameter>
    <key>lisa.provisionDBDriverFeature.rsp.time</key>
    <value>Set in Step provisionDBDriverFeature</value>
    </Parameter>
    <Parameter>
    <key>lisa.LogPayloadDbSwitch.rsp</key>
    <value>Set in Step LogPayloadDbSwitch</value>
    </Parameter>
    <Parameter>
    <key>lisa.LogPayloadDbSwitch.rsp.time</key>
    <value>Set in Step LogPayloadDbSwitch</value>
    </Parameter>
    <Parameter>
    <key>lisa.MCRdbSwitch.rsp</key>
    <value>Set in Step MCRdbSwitch</value>
    </Parameter>
    <Parameter>
    <key>lisa.MCRdbSwitch.rsp.time</key>
    <value>Set in Step MCRdbSwitch</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteCLOracleDBUsername.rsp</key>
    <value>Set in Step deleteCLOracleDBUsername</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteCLOracleDBUsername.rsp.time</key>
    <value>Set in Step deleteCLOracleDBUsername</value>
    </Parameter>
    <Parameter>
    <key>lisa.createCLOracleDBUsername.rsp</key>
    <value>Set in Step createCLOracleDBUsername</value>
    </Parameter>
    <Parameter>
    <key>lisa.createCLOracleDBUsername.rsp.time</key>
    <value>Set in Step createCLOracleDBUsername</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteCLSqlServerDB.rsp</key>
    <value>Set in Step deleteCLSqlServerDB</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteCLSqlServerDB.rsp.time</key>
    <value>Set in Step deleteCLSqlServerDB</value>
    </Parameter>
    <Parameter>
    <key>lisa.createCLSqlServerDB.rsp</key>
    <value>Set in Step createCLSqlServerDB</value>
    </Parameter>
    <Parameter>
    <key>lisa.createCLSqlServerDB.rsp.time</key>
    <value>Set in Step createCLSqlServerDB</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteMCROracleDBUsername.rsp</key>
    <value>Set in Step deleteMCROracleDBUsername</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteMCROracleDBUsername.rsp.time</key>
    <value>Set in Step deleteMCROracleDBUsername</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteMCRSqlServerDB.rsp</key>
    <value>Set in Step deleteMCRSqlServerDB</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteMCRSqlServerDB.rsp.time</key>
    <value>Set in Step deleteMCRSqlServerDB</value>
    </Parameter>
    <Parameter>
    <key>lisa.createMCROracleDBUsername.rsp</key>
    <value>Set in Step createMCROracleDBUsername</value>
    </Parameter>
    <Parameter>
    <key>lisa.createMCROracleDBUsername.rsp.time</key>
    <value>Set in Step createMCROracleDBUsername</value>
    </Parameter>
    <Parameter>
    <key>lisa.createMCRSqlServerDB.rsp</key>
    <value>Set in Step createMCRSqlServerDB</value>
    </Parameter>
    <Parameter>
    <key>lisa.createMCRSqlServerDB.rsp.time</key>
    <value>Set in Step createMCRSqlServerDB</value>
    </Parameter>
    <Parameter>
    <key>lisa.cleanUpCLDB2Database.rsp</key>
    <value>Set in Step cleanUpCLDB2Database</value>
    </Parameter>
    <Parameter>
    <key>lisa.cleanUpCLDB2Database.rsp.time</key>
    <value>Set in Step cleanUpCLDB2Database</value>
    </Parameter>
    <Parameter>
    <key>lisa.cleanUpMCRDB2Database.rsp</key>
    <value>Set in Step cleanUpMCRDB2Database</value>
    </Parameter>
    <Parameter>
    <key>lisa.cleanUpMCRDB2Database.rsp.time</key>
    <value>Set in Step cleanUpMCRDB2Database</value>
    </Parameter>
    <Parameter>
    <key>mcr.db.password</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>mcr.db.host</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>cl.db.host</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>mcr.db.username</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>cl.db.admusr</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>mcr.db.dbname</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>cl.db.url</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>mcr.db.admpwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.db.host</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.db.admusr</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.db.password</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>mcr.db.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>cl.db.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.db.username</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>mcr.db.url</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>mcr.db.admusr</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.db.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>cl.db.dbname</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>cl.db.admpwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>cl.db.password</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.db.dbname</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>cl.db.username</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.db.admpwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.LogServiceOnOtherDB2.rsp</key>
    <value>Set in Step LogServiceOnOtherDB2</value>
    </Parameter>
    <Parameter>
    <key>lisa.LogServiceOnOtherDB2.rsp.time</key>
    <value>Set in Step LogServiceOnOtherDB2</value>
    </Parameter>
    <Parameter>
    <key>lisa.PayloadServiceOnOtherDB2.rsp</key>
    <value>Set in Step PayloadServiceOnOtherDB2</value>
    </Parameter>
    <Parameter>
    <key>lisa.PayloadServiceOnOtherDB2.rsp.time</key>
    <value>Set in Step PayloadServiceOnOtherDB2</value>
    </Parameter>
</resultState>

<Configurations>
<Configuration>
<name>2node</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_hsql{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>CDC</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../1machine_2node_cdc.config</doc>
</Configuration>
<Configuration>
<name>1node</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../1machine_1node{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>2node_oracle</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../1machine_2node_orcl{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>2node_sqlserver</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../1machine_2node_sqlsvr{{g11n}}.config</doc>
</Configuration>
</Configurations>
    <Node name="deployMediationApp" log="deploy Mediation "
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deployLogService" > 

<graphx>2399</graphx>
<graphy>89</graphy>
<Documentation>Deploying Mediation Application</Documentation>
<remoteServer>local</remoteServer>
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
    <value>{{tibco.test.case.source.dir}}/../amxbuild.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antMediationApp.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>deploy-mediation</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=600,TIBCO_AMX_LIBRARY={{=TIBCO_AMX_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOME={{=TIBCO_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_CONFIG={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_HOME={{=TIBCO_AMXADMIN_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOST_HOME={{=TIBCO_HOST_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},tibco.config.mgmt.home={{=TIBCO_CONFIG_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},admin.enterprise.name={{tibco.amx.admin.configuration1.name}},admin.instance.name={{admin.instance.name}},admin.enterprise.dir={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},envt.data.file={{tibco.amx.datafile}},tibcohost.properties.file={{thPropFile}},instance.properties.file={{tibco.test.suite.config.path}}</value>
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
    <value>700</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert178" type="com.itko.lisa.test.CheckResultContains">
<log>Deploy Mediation failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="deployLogService" log="Deploy Log Service"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deployPayloadService" > 

<graphx>2399</graphx>
<graphy>89</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
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
    <value>{{tibco.test.case.source.dir}}/../amxbuild.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antLogService.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>deploy-logservice</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=600,TIBCO_AMX_LIBRARY={{=TIBCO_AMX_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOME={{=TIBCO_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_CONFIG={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_HOME={{=TIBCO_AMXADMIN_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOST_HOME={{=TIBCO_HOST_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},tibco.config.mgmt.home={{=TIBCO_CONFIG_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},admin.enterprise.name={{tibco.amx.admin.configuration1.name}},admin.instance.name={{admin.instance.name}},admin.enterprise.dir={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},envt.data.file={{tibco.amx.datafile}},tibcohost.properties.file={{thPropFile}},instance.properties.file={{tibco.test.suite.config.path}},{{=((enableMCR)?&quot;enableMCR=true&quot;:&quot;&quot;)}}</value>
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


    <Node name="deployPayloadService" log="Deploy Payload Service"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>2399</graphx>
<graphy>89</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
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
    <value>{{tibco.test.case.source.dir}}/../amxbuild.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antPayloadService.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>deploy-payloadservice</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=600,TIBCO_AMX_LIBRARY={{=TIBCO_AMX_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOME={{=TIBCO_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_CONFIG={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_HOME={{=TIBCO_AMXADMIN_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOST_HOME={{=TIBCO_HOST_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},tibco.config.mgmt.home={{=TIBCO_CONFIG_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},admin.enterprise.name={{tibco.amx.admin.configuration1.name}},admin.instance.name={{admin.instance.name}},admin.enterprise.dir={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},envt.data.file={{tibco.amx.datafile}},tibcohost.properties.file={{thPropFile}},instance.properties.file={{tibco.test.suite.config.path}},{{=((enableMCR)?&quot;enableMCR=true&quot;:&quot;&quot;)}}</value>
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
    <value>700</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert178" type="com.itko.lisa.test.CheckResultContains">
<log>Deploy PayloadService failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="deployMCRService" log="Deploy MCR Service"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>2399</graphx>
<graphy>89</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
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
    <value>{{tibco.test.case.source.dir}}/../amxbuild.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antMCRService.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>deploy-mcr</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=900,adminURL={{adminURL}},TIBCO_AMX_LIBRARY={{=TIBCO_AMX_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOME={{=TIBCO_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_CONFIG={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_HOME={{=TIBCO_AMXADMIN_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOST_HOME={{=TIBCO_HOST_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},tibco.config.mgmt.home={{=TIBCO_CONFIG_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},admin.enterprise.name={{tibco.amx.admin.configuration1.name}},admin.instance.name={{admin.instance.name}},admin.enterprise.dir={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},envt.data.file={{tibco.amx.datafile}},tibcohost.properties.file={{thPropFile}},instance.properties.file={{tibco.test.suite.config.path}},{{=((enableMCR)?&quot;enableMCR=true&quot;:&quot;&quot;)}}</value>
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
<CheckResult assertTrue="false" name="Assert878" type="com.itko.lisa.test.CheckResultContains">
<log>Deploy MCRService failed</log>
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


</TestCase>
