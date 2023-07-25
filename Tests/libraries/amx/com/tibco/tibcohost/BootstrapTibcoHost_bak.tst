<?xml version="1.0" encoding="UTF-8"?>
<TestCase name="BootstrapTibcoHost_bak" version="5">

<meta>
   <create author="admin" buildNumber="10.7.2.176" date="11/24/2022" host="na2devasgaks01" version="10.7.2"/>
   <lastEdited author="admin" buildNumber="10.7.2.176" date="05/28/2023" host="na2devasgora03" version="10.7.2"/>
</meta>

<id>10e34bf4</id>
<Documentation>Builds and starts TIBCOHost.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPTEzMTM5NDIzNjM=</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>tibcoHostHome</key>
    <value>{{TIBCO_HOST_HOME}}</value>
    <name>TIBCOHost home</name>
    </Parameter>
    <Parameter>
    <key>tibcoConfigHome</key>
    <value>{{TIBCO_CONFIG_HOME}}</value>
    <name>TIBCO config home</name>
    </Parameter>
    <Parameter>
    <key>workingDir</key>
    <value>{{tibco.test.case.log.dir}}</value>
    <name>Working directory. Prop file will be placed there if it is generated</name>
    </Parameter>
    <Parameter>
    <key>antLogFile</key>
    <value>{{tibco.test.case.log.dir}}/tibcohostAnt.log</value>
    <name>Ant log file</name>
    </Parameter>
    <Parameter>
    <key>thLogFile</key>
    <value>{{tibco.test.case.log.dir}}/tibcohost.log</value>
    <name>TIBCOHost log file</name>
    </Parameter>
    <Parameter>
    <key>nodeStdoutLogFile</key>
    <value>{{tibco.test.case.log.dir}}/node_stdout.log</value>
    <name>Node stdout log file</name>
    </Parameter>
    <Parameter>
    <key>propFile</key>
    <value/>
    <name>Absolute path to TIBCOHost property file. Optional. If set, all paramaters below are ignored.</name>
    </Parameter>
    <Parameter>
    <key>name</key>
    <value>TibcoHostInstance</value>
    <name>TIBCOHost instance name</name>
    </Parameter>
    <Parameter>
    <key>processPrefix</key>
    <value>tibamx_</value>
    <name>Process prefix</name>
    </Parameter>
    <Parameter>
    <key>securityKeystoreFile</key>
    <value>{{TIBCO_HOST_HOME}}/templates/admin.default.ssl.trust.store.ts</value>
    <name>Keystore file</name>
    </Parameter>
    <Parameter>
    <key>securityKeystoreType</key>
    <value>JCEKS</value>
    <name>Keystore type</name>
    </Parameter>
    <Parameter>
    <key>securityKeystorePassword</key>
    <value>secret</value>
    <name>Keystore password</name>
    </Parameter>
    <Parameter>
    <key>qinServerUrl</key>
    <value>tcp://localhost:7222</value>
    <name>Qin notification server url</name>
    </Parameter>
    <Parameter>
    <key>qinGroupName</key>
    <value>amxadmin</value>
    <name>Qin notification group name</name>
    </Parameter>
    <Parameter>
    <key>qinUserName</key>
    <value>admin</value>
    <name>Qin notification user name</name>
    </Parameter>
    <Parameter>
    <key>qinPassword</key>
    <value>#!oh6xQHiU57sueCtN73kO4w==</value>
    <name>Qin notification encoded user password</name>
    </Parameter>
    <Parameter>
    <key>qinStartupInterval</key>
    <value>3000</value>
    <name>Qin notification startup interval</name>
    </Parameter>
    <Parameter>
    <key>qinBackoffInterval</key>
    <value>0</value>
    <name>Qin notification backoff interval</name>
    </Parameter>
    <Parameter>
    <key>qinRecoveryTimerTimeout</key>
    <value>3000</value>
    <name>Qin notification recovery timer timeout</name>
    </Parameter>
    <Parameter>
    <key>qinRecoveryAttemptDelay</key>
    <value>2000</value>
    <name>Qin notification recovery attempt delay</name>
    </Parameter>
    <Parameter>
    <key>qinSecure</key>
    <value>false</value>
    <name>Qin notification secure</name>
    </Parameter>
    <Parameter>
    <key>qinTransportImplementation</key>
    <value>com.tibco.amf.hpa.core.runtime.management.impl.NotificationTransportImpl</value>
    <name>Qin notification transport implementation</name>
    </Parameter>
    <Parameter>
    <key>emsIdentityStorePassword</key>
    <value/>
    <name>EMS identity store password</name>
    </Parameter>
    <Parameter>
    <key>trinityKeystoreFile</key>
    <value/>
    <name>Keystore file</name>
    </Parameter>
    <Parameter>
    <key>trinityKeystorePassword</key>
    <value/>
    <name>Keystore password</name>
    </Parameter>
    <Parameter>
    <key>trinityKeystoreType</key>
    <value>JKS</value>
    <name>Keystore Type</name>
    </Parameter>
    <Parameter>
    <key>trinityTcsUrl</key>
    <value>service:jmx:jmxmp://localhost:6041</value>
    <name>Credential server url</name>
    </Parameter>
    <Parameter>
    <key>trinityTcsUser</key>
    <value>user1</value>
    <name>Credential server username</name>
    </Parameter>
    <Parameter>
    <key>trinityTcsPassword</key>
    <value>\#!W3z0e8nURMyp29K/k84jWyRJa4jag4kvJcQdb7ozF4w=</value>
    <name>Credential server encoded password</name>
    </Parameter>
    <Parameter>
    <key>jmxInterface</key>
    <value>localhost</value>
    <name>JMX host</name>
    </Parameter>
    <Parameter>
    <key>jmxPort</key>
    <value>6001</value>
    <name>JMX port</name>
    </Parameter>
    <Parameter>
    <key>nodeType</key>
    <value>com.tibco.amf.hpa.tibcohost.node.hibernate.feature</value>
    <name>Node type</name>
    </Parameter>
    <Parameter>
    <key>nodeTypeVersion</key>
    <value>1.0.1</value>
    <name>Node type version</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>60</value>
    <name>Wait for a number of seconds before giving up on TIBCOHost</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>JBOSSServerForEJBBT</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>adapterZip</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keyalias</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keypassword</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorelocation</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorepassword</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystoretype</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.url</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.env.name</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.instance.name</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amx.sv.queuePrefix</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amxHF2Zip</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amxHFInstaller</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amxHFZip</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amxHFZipLoc</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amxZip</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>antLogContent</key>
    <value/>
    <name>antLogContent</name>
    </Parameter>
    <Parameter>
    <key>bwhost1</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>bwport1</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>bwportssl1</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>clrZip</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>compiler</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>cppZip</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>dbDriver</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>dbPwd</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>dbUrl</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>dbUser</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>ejbZip</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emshost</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emspwd</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emsuser</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>enableMCR</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>env.node1.name</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>env.node2.name</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>hibernateDialect</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host.instance</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host.jmx.port</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host.name</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host.prefix</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host1</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>httpConnectionTimeout</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>installJavaHome</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>installTempDir</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>installerTempDir</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jmshost</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jmsport</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jmspwd</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jmsuser</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndiconnectionfactory</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndicontexturl</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndicontexturlSSL</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndihost</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndiport</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndipwd</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndiuser</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>keystore.location</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>lisa.bootstrapTIBCOHost.rsp</key>
    <value/>
    <name>lisa.bootstrapTIBCOHost.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.bootstrapTIBCOHost.rsp.time</key>
    <value/>
    <name>lisa.bootstrapTIBCOHost.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.buildPropFileContent.rsp</key>
    <value/>
    <name>lisa.buildPropFileContent.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.buildPropFileContent.rsp.time</key>
    <value/>
    <name>lisa.buildPropFileContent.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.checkPropFileEmpty.rsp</key>
    <value/>
    <name>lisa.checkPropFileEmpty.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.checkPropFileEmpty.rsp.time</key>
    <value/>
    <name>lisa.checkPropFileEmpty.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.copyNodeStdoutLogConfigFile.rsp</key>
    <value/>
    <name>lisa.copyNodeStdoutLogConfigFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.copyNodeStdoutLogConfigFile.rsp.time</key>
    <value/>
    <name>lisa.copyNodeStdoutLogConfigFile.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.copyTHLogConfigFile.rsp</key>
    <value/>
    <name>lisa.copyTHLogConfigFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.copyTHLogConfigFile.rsp.time</key>
    <value/>
    <name>lisa.copyTHLogConfigFile.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value/>
    <name>lisa.end.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value/>
    <name>lisa.end.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value/>
    <name>lisa.fail.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value/>
    <name>lisa.fail.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.failure.rsp</key>
    <value/>
    <name>lisa.failure.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.failure.rsp.time</key>
    <value/>
    <name>lisa.failure.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.getTHInstanceName.rsp</key>
    <value/>
    <name>lisa.getTHInstanceName.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getTHInstanceName.rsp.time</key>
    <value/>
    <name>lisa.getTHInstanceName.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.getTimeLimit.rsp</key>
    <value/>
    <name>lisa.getTimeLimit.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getTimeLimit.rsp.time</key>
    <value/>
    <name>lisa.getTimeLimit.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp</key>
    <value/>
    <name>lisa.log.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value/>
    <name>lisa.log.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingCheckLogFileExists.rsp</key>
    <value/>
    <name>lisa.repeatingCheckLogFileExists.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingCheckLogFileExists.rsp.time</key>
    <value/>
    <name>lisa.repeatingCheckLogFileExists.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingReadLog.rsp</key>
    <value/>
    <name>lisa.repeatingReadLog.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingReadLog.rsp.time</key>
    <value/>
    <name>lisa.repeatingReadLog.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingSleep.rsp</key>
    <value/>
    <name>lisa.repeatingSleep.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingSleep.rsp.time</key>
    <value/>
    <name>lisa.repeatingSleep.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.replaceInTHLogConfigFile.rsp</key>
    <value/>
    <name>lisa.replaceInTHLogConfigFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.replaceInTHLogConfigFile.rsp.time</key>
    <value/>
    <name>lisa.replaceInTHLogConfigFile.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.success.rsp</key>
    <value/>
    <name>lisa.success.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.success.rsp.time</key>
    <value/>
    <name>lisa.success.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.timeout.rsp</key>
    <value/>
    <name>lisa.timeout.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.timeout.rsp.time</key>
    <value/>
    <name>lisa.timeout.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp</key>
    <value/>
    <name>lisa.validate.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp.time</key>
    <value/>
    <name>lisa.validate.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.writePropFile.rsp</key>
    <value/>
    <name>lisa.writePropFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.writePropFile.rsp.time</key>
    <value/>
    <name>lisa.writePropFile.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>logappender.file.location</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>mediation.sample.project.dir</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>nodeStdoutLogConfig</key>
    <value/>
    <name>nodeStdoutLogConfig</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>port1</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>port2</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>port3</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>port4</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>portssl1</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>projectloc</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>regenerateDAA</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>targetUpgradeVersion</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>targetVersion</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>thLogConfig</key>
    <value/>
    <name>thLogConfig</name>
    </Parameter>
    <Parameter>
    <key>thName</key>
    <value/>
    <name>thName</name>
    </Parameter>
    <Parameter>
    <key>thPropFile</key>
    <value/>
    <name>thPropFile</name>
    </Parameter>
    <Parameter>
    <key>thPropFileContent</key>
    <value/>
    <name>thPropFileContent</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.datafile.template</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.connectionFactory</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.providerURL</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.host</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.port</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tmpDir</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value/>
    <name>Set in 2node_cdc.config configuration</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node log="" name="log" next="validate" quiet="false" think="0" type="com.itko.lisa.test.TestNodeLogger" uid="10e34bf4-log" useFilters="true" version="1"> 

<log>Bootstraping TIBCOHost...</log>
    </Node>


    <Node log="" name="validate" next="copyTHLogConfigFile" quiet="true" think="0" type="com.itko.lisa.test.ScriptNode" uid="6174F1DEFDE711EDB308506B8DD34562" useFilters="true" version="1"> 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey/>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert218" type="com.itko.lisa.test.CheckResultContains">
<log>{LASTRESPONSE}</log>
<then>fail</then>
<valueToAssertKey/>
        <param>TH Bootstrap Validation Error</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.io.File;&#xd;
&#xd;
//String errorMsg = "TH Bootstrap Validation Error";&#xd;
&#xd;
//File file = new File(testExec.parseInState(workingDir));&#xd;
//if (!file.exists())&#xd;
//    return errorMsg + ": Directory '" + workingDir + "' does not exist.";&#xd;
//if (!file.isDirectory())&#xd;
 //   return erroMsg + ": '" + workingDir + "' must be a directory.";&#xd;
&#xd;
//if (antLogFile.equals(""))&#xd;
//    return errorMsg + ": Log file is required.";&#xd;
&#xd;
return "Validation success";</script>
    </Node>


    <Node log="" name="copyTHLogConfigFile" next="end" quiet="false" think="0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="10e34bf4-copyTHLogConfigFile" useFilters="true" version="1"> 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.copyTHLogConfigFile.rsp</valueToFilterKey>
      <prop>thLogConfig</prop>
      </Filter>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CopyFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>fileIn</key>
    <value>{{TIBCO_AMX_LIBRARY}}/com/tibco/tibcohost/hpa-log4j.xml.template</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{tibco.test.case.log.dir}}/hpa-log4j.xml</value>
    <name>Destination file or directory</name>
    </Parameter>
    <Parameter>
    <key>createDirectory</key>
    <value>true</value>
    <name>If true, create the necessary directories to copy the destination file</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node log="" name="getTHInstanceName" next="getTimeLimit" quiet="false" think="0-0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="10e34bf4-getTHInstanceName" useFilters="true" version="1"> 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getTHInstanceName.rsp</valueToFilterKey>
      <prop>thName</prop>
      </Filter>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/GetNameValuePairFromFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{thPropFile}}</value>
    <name>File where to get value from</name>
    </Parameter>
    <Parameter>
    <key>name</key>
    <value>amx.th.instance.name</value>
    <name>Name</name>
    </Parameter>
    <Parameter>
    <key>assignChar</key>
    <value>=</value>
    <name>Character utilized for assignment: equal ('='), white space (' '), ...</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node log="get the timelimit" name="getTimeLimit" next="repeatingSleep" quiet="true" think="0-0" type="com.itko.lisa.test.ScriptNode" uid="10e34bf4-getTimeLimit" useFilters="true" version="1"> 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>getTimeLimit step has thrown Exception</log>
<then>fail</then>
<valueToAssertKey/>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>Calendar future = Calendar.getInstance();&#xd;
future.add(Calendar.SECOND, timeout.intValue());&#xd;
testExec.setStateValue("future", future);</script>
    </Node>


    <Node log="repeat sleep" name="repeatingSleep" next="repeatingCheckLogFileExists" quiet="false" think="0-0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="10e34bf4-repeatingSleep" useFilters="true" version="1"> 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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


    <Node log="check if log file got created" name="repeatingCheckLogFileExists" next="repeatingReadLog" quiet="false" think="0-0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="10e34bf4-repeatingCheckLogFileExists" useFilters="true" version="1"> 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert67" type="com.itko.lisa.test.AssertByScript">
<log>TIBCOHost did not start on time</log>
<then>timeout</then>
<valueToAssertKey/>
        <script>future.before(Calendar.getInstance());</script>
        <language>beanshell</language>
        <copyprops>TestExecPropsAndSystemProps</copyprops>
</CheckResult>

<CheckResult assertTrue="true" name="Assert95" type="com.itko.lisa.test.CheckResultContains">
<log>TIBCOHost log file not found yet...</log>
<then>repeatingSleep</then>
<valueToAssertKey/>
        <param>false</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CheckFileExists.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{antLogFile}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node log="read log and look for tibcohost started message" name="repeatingReadLog" next="repeatingSleep" quiet="false" think="0-0" type="com.itko.lisa.test.FileNode" uid="10e34bf4-repeatingReadLog" useFilters="true" version="1"> 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.repeatingReadLog.rsp</valueToFilterKey>
      <prop>antLogContent</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert148" type="com.itko.lisa.test.CheckResultContains">
<log>TIBCOHost has been started Successfully.</log>
<then>success</then>
<valueToAssertKey/>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert149" type="com.itko.lisa.test.CheckResultContains">
<log>TIBCOHost failed to start</log>
<then>failure</then>
<valueToAssertKey/>
        <param>BUILD FAILED</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert150" type="com.itko.lisa.test.AssertByScript">
<log>TIBCOHost did not start on time</log>
<then>timeout</then>
<valueToAssertKey/>
        <script>future.before(Calendar.getInstance());</script>
        <language>beanshell</language>
        <copyprops>TestExecPropsAndSystemProps</copyprops>
</CheckResult>

<Loc>{{antLogFile}}</Loc>
<charset>DEFAULT</charset>
<PropKey/>
<onFail>abort</onFail>
    </Node>


    <Node log="" name="timeout" next="fail" quiet="false" think="0-0" type="com.itko.lisa.test.ScriptNode" uid="10e34bf4-timeout" useFilters="true" version="1"> 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey/>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>return "TIBCOHost did not start on time.\n\n\n" + antLogContent;</script>
    </Node>


    <Node log="" name="failure" next="fail" quiet="false" think="0-0" type="com.itko.lisa.test.ScriptNode" uid="10e34bf4-failure" useFilters="true" version="1"> 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey/>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>return antLogContent;</script>
    </Node>


    <Node log="" name="success" next="end" quiet="false" think="0-0" type="com.itko.lisa.test.ScriptNode" uid="10e34bf4-success" useFilters="true" version="1"> 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey/>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>return antLogContent;</script>
    </Node>


    <Node log="" name="replaceInTHLogConfigFile" next="copyNodeStdoutLogConfigFile" quiet="false" think="0-0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="10e34bf4-replaceInTHLogConfigFile" useFilters="true" version="1"> 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReplaceInFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{thLogConfig}}</value>
    <name>File where to perform the search-replace</name>
    </Parameter>
    <Parameter>
    <key>oldString</key>
    <value/>
    <name>String to be replaced</name>
    </Parameter>
    <Parameter>
    <key>newString</key>
    <value/>
    <name>New string value</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>amx.th.instance.log={{tibco.test.case.log.dir}}/tibcohost.log,amx.th.instance.nodestdout.log={{tibco.test.case.log.dir}}/node-stdout.log</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value/>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>prefix</key>
    <value>[[</value>
    <name>prefix to be used for the keys to substitute</name>
    </Parameter>
    <Parameter>
    <key>suffix</key>
    <value>]]</value>
    <name>suffix to be used for the keys to substitute</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>UTF-8</value>
    <name>Encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node log="" name="copyNodeStdoutLogConfigFile" next="buildPropFileContent" quiet="false" think="0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="10e34bf4-copyNodeStdoutLogConfigFile" useFilters="true" version="1"> 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.copyNodeStdoutLogConfigFile.rsp</valueToFilterKey>
      <prop>nodeStdoutLogConfig</prop>
      </Filter>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CopyFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>fileIn</key>
    <value>{{TIBCO_AMX_LIBRARY}}/com/tibco/tibcohost/node-log4j.xml.template</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{tibco.test.case.log.dir}}/node-log4j.xml</value>
    <name>Destination file or directory</name>
    </Parameter>
    <Parameter>
    <key>createDirectory</key>
    <value>true</value>
    <name>If true, create the necessary directories to copy the destination file</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node log="" name="buildPropFileContent" next="writePropFile" quiet="true" think="0-0" type="com.itko.lisa.test.ScriptNode" uid="10e34bf4-buildPropFileContent" useFilters="true" version="1"> 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.buildPropFileContent.rsp</valueToFilterKey>
      <prop>thPropFileContent</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey/>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>str = "";&#xd;
str = str + "amx.th.instance.name=" + testExec.parseInState(name.toString()) + line_separator;&#xd;
str = str + "amx.th.hpa.log.config.file=" + testExec.parseInState(thLogConfig).replace("\\","/") + line_separator;&#xd;
str = str + "amx.th.hpa.node.log.config.file=" + testExec.parseInState(nodeStdoutLogConfig).replace("\\","/") + line_separator;&#xd;
str = str + "amx.th.security.keystore.file=" + testExec.parseInState(securityKeystoreFile.toString()).replace("\\","/") + line_separator;&#xd;
str = str + "amx.th.security.keystore.type=" + testExec.parseInState(securityKeystoreType.toString()) + line_separator;&#xd;
str = str + "amx.th.security.keystore.password=" + testExec.parseInState(securityKeystorePassword.toString()) + line_separator;&#xd;
str = str + "amx.th.jmx.secure=false" + line_separator;&#xd;
str = str + "amx.th.qin.server.url=" + testExec.parseInState(qinServerUrl.toString()) + line_separator;&#xd;
str = str + "amx.th.qin.groupName=" + testExec.parseInState(qinGroupName.toString()) + line_separator;&#xd;
str = str + "amx.th.qin.userName=" + testExec.parseInState(qinUserName.toString()) + line_separator;&#xd;
str = str + "amx.th.qin.pass=" + testExec.parseInState(qinPassword.toString()) + line_separator;&#xd;
str = str + "amx.th.qin.startupInterval=" + testExec.parseInState(qinStartupInterval.toString()) + line_separator;&#xd;
str = str + "amx.th.qin.backoffInterval=" + testExec.parseInState(qinBackoffInterval.toString()) + line_separator;&#xd;
str = str + "amx.th.qin.recovery_timer_timeout=" + testExec.parseInState(qinRecoveryTimerTimeout.toString()) + line_separator;&#xd;
str = str + "amx.th.qin.recovery_attempt_delay=" + testExec.parseInState(qinRecoveryAttemptDelay.toString()) + line_separator;&#xd;
str = str + "amx.th.qin.secure=" + testExec.parseInState(qinSecure.toString()) + line_separator;&#xd;
str = str + "amx.th.qin.notificationTransport.impl=" + testExec.parseInState(qinTransportImplementation.toString()) + line_separator;&#xd;
str = str + "amx.th.ems.identity.store.password=" + testExec.parseInState(emsIdentityStorePassword.toString()) + line_separator;&#xd;
str = str + "amx.th.trinity.keyStoreLocation=" + testExec.parseInState(trinityKeystoreFile.toString()).replace("\\","/") + line_separator;&#xd;
str = str + "amx.th.trinity.keyStorePassword=" + testExec.parseInState(trinityKeystorePassword.toString()) + line_separator;&#xd;
str = str + "amx.th.trinity.keyStoreType=" + testExec.parseInState(trinityKeystoreType.toString()) + line_separator;&#xd;
str = str + "amx.th.trinity.tcs.url=" + testExec.parseInState(trinityTcsUrl.toString()) + line_separator;&#xd;
str = str + "amx.th.trinity.tcs.user=" + testExec.parseInState(trinityTcsUser.toString()) + line_separator;&#xd;
str = str + "amx.th.trinity.tcs.password=" + testExec.parseInState(trinityTcsPassword.toString()) + line_separator;&#xd;
str = str + "amx.th.hpa.jmx.port=" + testExec.parseInState(jmxPort.toString()) + line_separator;&#xd;
str = str + "amx.th.hpa.jmx.interface=" + testExec.parseInState(jmxInterface.toString()) + line_separator;&#xd;
str = str + "amx.th.process.prefix=" + testExec.parseInState(processPrefix.toString()) + line_separator;&#xd;
str = str + "amf.node.type=" + testExec.parseInState(nodeType.toString()) + line_separator;&#xd;
str = str + "amf.node.type.version=" + testExec.parseInState(nodeTypeVersion.toString()) + line_separator;&#xd;
&#xd;
return str;&#xd;
</script>
    </Node>


    <Node log="" name="writePropFile" next="getTHInstanceName" quiet="false" think="0-0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="10e34bf4-writePropFile" useFilters="true" version="1"> 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.writePropFile.rsp</valueToFilterKey>
      <prop>thPropFile</prop>
      </Filter>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/WriteFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{workingDir}}/tibcohost.properties</value>
    <name>File to write into</name>
    </Parameter>
    <Parameter>
    <key>content</key>
    <value>{{thPropFileContent}}</value>
    <name>Text content to write in the file</name>
    </Parameter>
    <Parameter>
    <key>createIfNotExist</key>
    <value>true</value>
    <name>If set to true, file is created if it does not exist.</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value/>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
    <Parameter>
    <key>native2ascii</key>
    <value>false</value>
    <name>If set to true, converts the content from native encoding to ASCII with escaped Unicode</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node log="" name="bootstrapTIBCOHost" next="end" quiet="false" think="0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="10e34bf4-bootstrapTIBCOHost" useFilters="true" version="1"> 

<Documentation>waitForCompletion is false because this step hangs if it is true.</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value>{{tibcoHostHome}}/scripts</value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{TIBCO_AMX_LIBRARY}}/com/tibco/tibcohost/BootstrapTibcoHost.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{antLogFile}}</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>start-th</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value/>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>amx.th.instance.name={{thName}},tibcohost.properties.file={{=thPropFile.replace("\\","/")}},tibco.config.mgmt.home={{=tibcoConfigHome.replace("\\","/")}},TIBCO_HOST_HOME={{=tibcoHostHome.replace("\\","/")}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{=TIBCO_JAVA_HOME.replace("\\","/")}}/jre/lib</value>
    <name>ANT_OPTS environment variable. Optional. Ex: -Xms128m -Xmx512m -XX:PermSize=256m</name>
    </Parameter>
    <Parameter>
    <key>additionalAntCmdLineArgs</key>
    <value/>
    <name>Additional ant commandline options. Optional. See ant --help for these options.</name>
    </Parameter>
    <Parameter>
    <key>additionalClasspath</key>
    <value/>
    <name>Additional classpath to add to Ant. Optional.</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>false</value>
    <name>waitForCompletion</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>{{timeout}}</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node log="" name="end" next="fail" quiet="true" think="0-0" type="com.itko.lisa.test.NormalEnd" uid="10e34bf4-end" useFilters="true" version="1"> 

    </Node>


    <Node log="" name="fail" next="" quiet="true" think="0-0" type="com.itko.lisa.test.Abend" uid="10e34bf4-fail" useFilters="true" version="1"> 

    </Node>


    <Node log="" name="abort" next="end" quiet="true" think="0h" type="com.itko.lisa.test.AbortStep" uid="B1D5E1126BE511ED963E506B8D8BDEB5" useFilters="true" version="1"> 

    </Node>


</TestCase>