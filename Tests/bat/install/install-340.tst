<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Thu Jun 20 11:44:12 PDT 2019 -->


<TestCase name="install-340" version="2">
<id>98d71d84</id>
<Documentation>Suite installation in silent mode of:&#13;&#10;- AMX SG&#13;&#10;- CPP IT&#13;&#10;- Adapter BT&#13;&#10;- EJB BT&#13;&#10;- CLR IT (if Windows)&#13;&#10;Then install AMX HF on top of it in silent mode.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0yMTIxOTQxMDU4</sig>
<rootNode>killTIBCOHost</rootNode>
<subprocess>false</subprocess>

<initState>
    <Parameter>
    <key>RAND1</key>
    <value>1</value>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.copyHibernateZip.rsp</key>
    <value>Set in Step copyHibernateZip</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyHibernateZip.rsp.time</key>
    <value>Set in Step copyHibernateZip</value>
    </Parameter>
    <Parameter>
    <key>hibernateZip2</key>
    <value>Set in Step copyHibernateZip</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipHibernate.rsp</key>
    <value>Set in Step unzipHibernate</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipHibernate.rsp.time</key>
    <value>Set in Step unzipHibernate</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyHibernateSilentFile.rsp</key>
    <value>Set in Step copyHibernateSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyHibernateSilentFile.rsp.time</key>
    <value>Set in Step copyHibernateSilentFile</value>
    </Parameter>
    <Parameter>
    <key>hibernateSilentFile</key>
    <value>Set in Step copyHibernateSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.setTibcoHomeInHibernateSilentFile.rsp</key>
    <value>Set in Step setTibcoHomeInHibernateSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.setTibcoHomeInHibernateSilentFile.rsp.time</key>
    <value>Set in Step setTibcoHomeInHibernateSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.installHibernate.rsp</key>
    <value>Set in Step installHibernate</value>
    </Parameter>
    <Parameter>
    <key>lisa.installHibernate.rsp.time</key>
    <value>Set in Step installHibernate</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoMgntDaemonHomeExists.rsp</key>
    <value>Set in Step verifyTibcoMgntDaemonHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoMgntDaemonHomeExists.rsp.time</key>
    <value>Set in Step verifyTibcoMgntDaemonHomeExists</value>
    </Parameter>
    <Parameter>
    <key>installshieldRegistryOnWindows</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>installshieldRegistryOnUnix</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp.time</key>
    <value>Set in Step continue</value>
    </Parameter>
    <Parameter>
    <key>lisa.setTibcoHomeInAmxSilentFile.rsp</key>
    <value>Set in Step setTibcoHomeInAmxSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.killNode2.rsp.time</key>
    <value>Set in Step killNode2</value>
    </Parameter>
    <Parameter>
    <key>lisa.killSystemNode.rsp.time</key>
    <value>Set in Step killSystemNode</value>
    </Parameter>
    <Parameter>
    <key>lisa.killNode1.rsp.time</key>
    <value>Set in Step killNode1</value>
    </Parameter>
    <Parameter>
    <key>lisa.getInstallShieldRegistry.rsp.time</key>
    <value>Set in Step getInstallShieldRegistry</value>
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
    <key>lisa.deleteInstallShieldRegistry.rsp.time</key>
    <value>Set in Step deleteInstallShieldRegistry</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteTibcoConfigHome.rsp.time</key>
    <value>Set in Step deleteTibcoConfigHome</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteAmxInstaller.rsp</key>
    <value>Set in Step deleteAmxInstaller</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyAmxZip.rsp</key>
    <value>Set in Step copyAmxZip</value>
    </Parameter>
    <Parameter>
    <key>amxZip2</key>
    <value>Set in Step copyAmxZip</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyAmxSilentFile.rsp.time</key>
    <value>Set in Step copyAmxSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.setTibcoHomeInAmxSilentFile.rsp.time</key>
    <value>Set in Step setTibcoHomeInAmxSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.setTibcoConfigHomeInAmxSilentFile.rsp</key>
    <value>Set in Step setTibcoConfigHomeInAmxSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.setTibcoConfigHomeInAmxSilentFile.rsp.time</key>
    <value>Set in Step setTibcoConfigHomeInAmxSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoHomeExists.rsp.time</key>
    <value>Set in Step verifyTibcoHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipAmx.rsp</key>
    <value>Set in Step unzipAmx</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoHostHomeExists.rsp.time</key>
    <value>Set in Step verifyTibcoHostHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyAmxHFZip.rsp</key>
    <value>Set in Step copyAmxHFZip</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyAmxHFZip.rsp.time</key>
    <value>Set in Step copyAmxHFZip</value>
    </Parameter>
    <Parameter>
    <key>amxHFZip2</key>
    <value>Set in Step copyAmxHFZip</value>
    </Parameter>
    <Parameter>
    <key>lisa.getInstallerExe.rsp</key>
    <value>Set in Step getInstallerExe</value>
    </Parameter>
    <Parameter>
    <key>lisa.setEnvInAmxSilentFile.rsp</key>
    <value>Set in Step setEnvInAmxSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.setEnvInAmxSilentFile.rsp.time</key>
    <value>Set in Step setEnvInAmxSilentFile</value>
    </Parameter>
    <Parameter>
    <key>installerExe</key>
    <value>Set in Step installAmx</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoAmxHomeExists.rsp</key>
    <value>Set in Step verifyTibcoAmxHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoBSHomeExists.rsp</key>
    <value>Set in Step verifyTibcoBSHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoHostHomeExists.rsp</key>
    <value>Set in Step verifyTibcoHostHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyMediationHomeExists.rsp.time</key>
    <value>Set in Step verifyMediationHomeExists</value>
    </Parameter>
    <Parameter>
    <key>installExe2</key>
    <value>Set in Step getInstallerExe</value>
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
    <key>lisa.configureSilentFile.rsp.time</key>
    <value>Set in Step configureSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyAdapterZip.rsp</key>
    <value>Set in Step copyAdapterZip</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyAdapterZip.rsp.time</key>
    <value>Set in Step copyAdapterZip</value>
    </Parameter>
    <Parameter>
    <key>adapterZip2</key>
    <value>Set in Step copyAdapterZip</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipCpp.rsp.time</key>
    <value>Set in Step unzipCpp</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipAdapter.rsp.time</key>
    <value>Set in Step unzipAdapter</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipEJB.rsp.time</key>
    <value>Set in Step unzipEJB</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyCPPHomeExists.rsp.time</key>
    <value>Set in Step verifyCPPHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyAdapterHomeExists.rsp.time</key>
    <value>Set in Step verifyAdapterHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyEJBHomeExists.rsp.time</key>
    <value>Set in Step verifyEJBHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteUnwantedFilesOnWindows.rsp</key>
    <value>Set in Step deleteUnwantedFilesOnWindows</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteUnwantedFilesOnWindows.rsp.time</key>
    <value>Set in Step deleteUnwantedFilesOnWindows</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteUnwantedFilesOnUnix.rsp</key>
    <value>Set in Step deleteUnwantedFilesOnUnix</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteUnwantedFilesOnUnix.rsp.time</key>
    <value>Set in Step deleteUnwantedFilesOnUnix</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkPostInstallTasks.rsp.time</key>
    <value>Set in Step checkPostInstallTasks</value>
    </Parameter>
    <Parameter>
    <key>lisa.killTIBCOHost.rsp</key>
    <value>Set in Step killTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.killTIBCOHost.rsp.time</key>
    <value>Set in Step killTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.killSystemNode.rsp</key>
    <value>Set in Step killSystemNode</value>
    </Parameter>
    <Parameter>
    <key>lisa.killNode1.rsp</key>
    <value>Set in Step killNode1</value>
    </Parameter>
    <Parameter>
    <key>lisa.killNode2.rsp</key>
    <value>Set in Step killNode2</value>
    </Parameter>
    <Parameter>
    <key>lisa.getInstallShieldRegistry.rsp</key>
    <value>Set in Step getInstallShieldRegistry</value>
    </Parameter>
    <Parameter>
    <key>installShieldRegistry</key>
    <value>Set in Step getInstallShieldRegistry</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteInstallShieldRegistry.rsp</key>
    <value>Set in Step deleteInstallShieldRegistry</value>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp</key>
    <value>Set in Step continue</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteTibcoConfigHome.rsp</key>
    <value>Set in Step deleteTibcoConfigHome</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteTibcoHome.rsp</key>
    <value>Set in Step deleteTibcoHome</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteTibcoHome.rsp.time</key>
    <value>Set in Step deleteTibcoHome</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteAmxInstaller.rsp.time</key>
    <value>Set in Step deleteAmxInstaller</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyAmxZip.rsp.time</key>
    <value>Set in Step copyAmxZip</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipAmx.rsp.time</key>
    <value>Set in Step unzipAmx</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyAmxSilentFile.rsp</key>
    <value>Set in Step copyAmxSilentFile</value>
    </Parameter>
    <Parameter>
    <key>amxSilentFile</key>
    <value>Set in Step copyAmxSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.configureSilentFile.rsp</key>
    <value>Set in Step configureSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.installAmx.rsp</key>
    <value>Set in Step installAmx</value>
    </Parameter>
    <Parameter>
    <key>lisa.installAmx.rsp.time</key>
    <value>Set in Step installAmx</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoHomeExists.rsp</key>
    <value>Set in Step verifyTibcoHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoAmxHomeExists.rsp.time</key>
    <value>Set in Step verifyTibcoAmxHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoAmxAdminHomeExists.rsp</key>
    <value>Set in Step verifyTibcoAmxAdminHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoAmxAdminHomeExists.rsp.time</key>
    <value>Set in Step verifyTibcoAmxAdminHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoBSHomeExists.rsp.time</key>
    <value>Set in Step verifyTibcoBSHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyMediationHomeExists.rsp</key>
    <value>Set in Step verifyMediationHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkPostInstallTasks.rsp</key>
    <value>Set in Step checkPostInstallTasks</value>
    </Parameter>
    <Parameter>
    <key>lisa.readHFInstallLog.rsp.time</key>
    <value>Set in Step readHFInstallLog</value>
    </Parameter>
    <Parameter>
    <key>lisa.setEnvInAmxSilentFile2.rsp.time</key>
    <value>Set in Step setEnvInAmxSilentFile2</value>
    </Parameter>
    <Parameter>
    <key>lisa.setTibcoHomeInAmxSilentFile2.rsp.time</key>
    <value>Set in Step setTibcoHomeInAmxSilentFile2</value>
    </Parameter>
    <Parameter>
    <key>lisa.setTibcoConfigHomeInAmxSilentFile2.rsp.time</key>
    <value>Set in Step setTibcoConfigHomeInAmxSilentFile2</value>
    </Parameter>
</resultState>

<Configurations>
<Configuration>
<name>default</name>
<external>false</external>
<props>
    <Parameter>
    <key>installShieldRegistryOnWindows</key>
    <value>C:/Program Files/Common Files/InstallShield/Universal</value>
    <name>Name</name>
    </Parameter>
    <Parameter>
    <key>installShieldRegistryOnWindows64</key>
    <value>C:/Program Files (x86)/Common Files/InstallShield/Universal</value>
    <name>Name</name>
    </Parameter>
    <Parameter>
    <key>installShieldRegistryOnUnix</key>
    <value>{{user.home}}/InstallShield/Universal</value>
    <name>Name</name>
    </Parameter>
    <Parameter>
    <key>antTaskBaseError</key>
    <value>anttask_error</value>
    <name>Name</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>root</value>
    </Parameter>
    <Parameter>
    <key>jndiport</key>
    <value>7622</value>
    </Parameter>
    <Parameter>
    <key>adapterZip</key>
    <value>{{adapterZipLoc}}</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.providerURL</key>
    <value>ldap://AMX-BACKEND-1.na.tibco.com:1389</value>
    </Parameter>
    <Parameter>
    <key>installJavaHome</key>
    <value>{{installerJavaHome}}</value>
    </Parameter>
    <Parameter>
    <key>host.name</key>
    <value>SystemHost</value>
    </Parameter>
    <Parameter>
    <key>port4</key>
    <value>8778</value>
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
    <key>admin.instance.name</key>
    <value>admin1</value>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value>http://localhost:8120</value>
    </Parameter>
    <Parameter>
    <key>jndiuser</key>
    <value>amxjndipwd</value>
    </Parameter>
    <Parameter>
    <key>bwport1</key>
    <value>8898</value>
    </Parameter>
    <Parameter>
    <key>db.shell.version</key>
    <value>11.1.0.112100</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keyalias</key>
    <value>AMXAdminCli</value>
    </Parameter>
    <Parameter>
    <key>db.shell.name</key>
    <value>com.tibco.tpcl.gen.oracle.jdbc</value>
    </Parameter>
    <Parameter>
    <key>emshost2</key>
    <value>10.107.174.53</value>
    </Parameter>
    <Parameter>
    <key>emshost</key>
    <value>10.107.174.53</value>
    </Parameter>
    <Parameter>
    <key>enableMCR</key>
    <value>true</value>
    </Parameter>
    <Parameter>
    <key>hibernateDialect</key>
    <value>org.hibernate.dialect.HSQLDialect</value>
    </Parameter>
    <Parameter>
    <key>logappender.file.location</key>
    <value>{{tibco.test.suite.log.dir}}/setup</value>
    </Parameter>
    <Parameter>
    <key>admin.db.url</key>
    <value>jdbc:oracle:thin:@10.107.174.53:1522:ORCL</value>
    </Parameter>
    <Parameter>
    <key>db.source.jar.location</key>
    <value>{{TIBCO_AMX_TEST_FUNC_RT}}/bat/jdbcDrivers/oracle</value>
    </Parameter>
    <Parameter>
    <key>amxZip</key>
    <value>{{amxZipLoc}}</value>
    </Parameter>
    <Parameter>
    <key>host.jmx.port</key>
    <value>6051</value>
    </Parameter>
    <Parameter>
    <key>admin.env.name</key>
    <value>SystemEnvironment</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.port</key>
    <value>25</value>
    </Parameter>
    <Parameter>
    <key>JBOSSServerForEJBBT</key>
    <value>batman.na.tibco.com</value>
    </Parameter>
    <Parameter>
    <key>queueConnectionfactory</key>
    <value>GenericConnectionFactory</value>
    </Parameter>
    <Parameter>
    <key>amxHFZip</key>
    <value>{{amxHFZipLoc}}</value>
    </Parameter>
    <Parameter>
    <key>keystore.location</key>
    <value>{{TIBCO_AMX_TEST_FUNC_RT}}/bat/keystore</value>
    </Parameter>
    <Parameter>
    <key>jmshost</key>
    <value>spiderman.na.tibco.com</value>
    </Parameter>
    <Parameter>
    <key>admin.db.host</key>
    <value>10.107.174.53</value>
    </Parameter>
    <Parameter>
    <key>dbPwd</key>
    <value></value>
    </Parameter>
    <Parameter>
    <key>host.prefix</key>
    <value>tibamx_</value>
    </Parameter>
    <Parameter>
    <key>admin.db.admusr</key>
    <value>system</value>
    </Parameter>
    <Parameter>
    <key>dbDriver</key>
    <value>org.hsqldb.jdbcDriver</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.datafile.template</key>
    <value>{{TIBCO_AMX_TEST_FUNC_RT}}/bat/amxdata_2node_orcl.template.xml</value>
    </Parameter>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
    <value>1099</value>
    </Parameter>
    <Parameter>
    <key>admin.db.password</key>
    <value>amxqa_win</value>
    </Parameter>
    <Parameter>
    <key>prefix1</key>
    <value>tcp</value>
    </Parameter>
    <Parameter>
    <key>emssecure</key>
    <value>false</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keypassword</key>
    <value>#!e0Br49sVAB0c1+H2cxVMtZj1VxM0J+1J2OivXSpZ3hods7yIoKEaxQ==</value>
    </Parameter>
    <Parameter>
    <key>env.node1.name</key>
    <value>QANode1</value>
    </Parameter>
    <Parameter>
    <key>jndicontexturl</key>
    <value>tibjmsnaming://spiderman.na.tibco.com:7622</value>
    </Parameter>
    <Parameter>
    <key>bwportssl1</key>
    <value>6767</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorepassword</key>
    <value>#!F2vplsUatM3B6+lsDcSbWpgO5i5cfznNQAD3anjhExnDL6tQPzKdmw==</value>
    </Parameter>
    <Parameter>
    <key>admin.db.username</key>
    <value>amxqa_win</value>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value>7222</value>
    </Parameter>
    <Parameter>
    <key>clrZip</key>
    <value>{{clrZipLoc}}</value>
    </Parameter>
    <Parameter>
    <key>host1</key>
    <value>{{LISA_HOST}}</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystoretype</key>
    <value>jceks</value>
    </Parameter>
    <Parameter>
    <key>jndiconnectionfactory</key>
    <value>GenericConnectionFactory</value>
    </Parameter>
    <Parameter>
    <key>bwhost1</key>
    <value>batman.na.tibco.com</value>
    </Parameter>
    <Parameter>
    <key>jmspwd</key>
    <value>amxemspwd</value>
    </Parameter>
    <Parameter>
    <key>jndicontexturlSSL</key>
    <value>tibjmsnaming://spiderman.na.tibco.com:7632</value>
    </Parameter>
    <Parameter>
    <key>jndihost</key>
    <value>spiderman.na.tibco.com</value>
    </Parameter>
    <Parameter>
    <key>env.node2.name</key>
    <value>QANode2</value>
    </Parameter>
    <Parameter>
    <key>regenerateDAA</key>
    <value>false</value>
    </Parameter>
    <Parameter>
    <key>compiler</key>
    <value>{{cppCompiler}}</value>
    </Parameter>
    <Parameter>
    <key>projectloc</key>
    <value></value>
    </Parameter>
    <Parameter>
    <key>tmpDir</key>
    <value>{{installPackageTempDir}}</value>
    </Parameter>
    <Parameter>
    <key>jmsport</key>
    <value>7522</value>
    </Parameter>
    <Parameter>
    <key>admin.db.port</key>
    <value>1522</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorelocation</key>
    <value>{{TIBCO_AMXADMIN_CONFIG}}/samples/adminCliKeystore.jceks</value>
    </Parameter>
    <Parameter>
    <key>emsuser</key>
    <value>admin</value>
    </Parameter>
    <Parameter>
    <key>dbUser</key>
    <value>sa</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.connectionFactory</key>
    <value>com.sun.jndi.ldap.LdapCtxFactory</value>
    </Parameter>
    <Parameter>
    <key>emsport2</key>
    <value>7222</value>
    </Parameter>
    <Parameter>
    <key>httpConnectionTimeout</key>
    <value>360000</value>
    </Parameter>
    <Parameter>
    <key>jndipwd</key>
    <value>amxjndipwd</value>
    </Parameter>
    <Parameter>
    <key>host.instance</key>
    <value>Admin-AMXAdmin-admin1</value>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value>QAEnvironment_{{LISA_HOST}}</value>
    </Parameter>
    <Parameter>
    <key>cppZip</key>
    <value>{{cppZipLoc}}</value>
    </Parameter>
    <Parameter>
    <key>amxHF2Zip</key>
    <value>{{amxHF2ZipLoc}}</value>
    </Parameter>
    <Parameter>
    <key>admin.db.sid</key>
    <value>ORCL</value>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
    <value>AMXAdmin</value>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>t</value>
    </Parameter>
    <Parameter>
    <key>jmsuser</key>
    <value>amxemspwd</value>
    </Parameter>
    <Parameter>
    <key>emspwd</key>
    <value>admin</value>
    </Parameter>
    <Parameter>
    <key>installTempDir</key>
    <value>{{installerTempDir}}</value>
    </Parameter>
    <Parameter>
    <key>ejbZip</key>
    <value>{{ejbZipLoc}}</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.host</key>
    <value>AMX-BACKEND-1.na.tibco.com</value>
    </Parameter>
    <Parameter>
    <key>emsport_tcp</key>
    <value>7222</value>
    </Parameter>
    <Parameter>
    <key>amx.sv.queuePrefix</key>
    <value>AMX_SV_{{LISA_HOST}}</value>
    </Parameter>
    <Parameter>
    <key>admin.db.admpwd</key>
    <value>Tibco123.</value>
    </Parameter>
    <Parameter>
    <key>db.feature.version</key>
    <value>11.2.100.001</value>
    </Parameter>
    <Parameter>
    <key>portssl1</key>
    <value>6765</value>
    </Parameter>
    <Parameter>
    <key>dbUrl</key>
    <value>jdbc:hsqldb:hsql://batman.na.tibco.com:1234/amx</value>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value>{{tibco.test.suite.source.dir}}/2node_orcl.config</value>
    </Parameter>
</props>
</Configuration>
</Configurations>
    <Node name="killTIBCOHost" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="killSystemNode" > 

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
    </Node>


    <Node name="killSystemNode" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="killNode1" > 

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
    <value>{{host.prefix}}SystemNode</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="killNode1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="killNode2" > 

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
    <value>{{host.prefix}}{{env.node1.name}}</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="killNode2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getInstallShieldRegistry" > 

<graphx>370</graphx>
<graphy>370</graphy>
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
    <value>{{host.prefix}}{{env.node2.name}}</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="getInstallShieldRegistry" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deleteInstallShieldRegistry" > 

<graphx>490</graphx>
<graphy>490</graphy>
<onerror>fail</onerror>
<script>import java.io.File;&#13;&#10;&#13;&#10;if (com.itko.util.Utilities.isWindows()) {&#13;&#10;    File pf = new File(installShieldRegistryOnWindows64);&#13;&#10;    if (pf.exists())&#13;&#10;        return installShieldRegistryOnWindows64;&#13;&#10;    else&#13;&#10;        return installShieldRegistryOnWindows;&#13;&#10;}&#13;&#10;else &#13;&#10;    return installShieldRegistryOnUnix;&#13;&#10;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getInstallShieldRegistry.rsp</valueToFilterKey>
      <prop>installShieldRegistry</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="deleteInstallShieldRegistry" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="cleanUpTIBCOEnvRegistry" > 

<graphx>610</graphx>
<graphy>610</graphy>
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
    <value>{{installShieldRegistry}}/TIBCO</value>
    <name>File or directory to be deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="cleanUpTIBCOEnvRegistry" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deleteTibcoConfigHome" > 

<graphx>730</graphx>
<graphy>730</graphy>
<Documentation>This is to satisfy Universal Installer 2.9 which put data in {{user.home}}/.TIBCOEnvInfo/_envInfo.xml&#13;&#10;We go into that file and remove the entry with the current TIBCO_HOME</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/RemoveNodeInXmlFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>continue</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{user.home}}/.TIBCOEnvInfo/_envInfo.xml</value>
    <name>Absolute path of the xml file to be modified</name>
    </Parameter>
    <Parameter>
    <key>xpath</key>
    <value>/TIBCOEnvironment//environment[@location=&apos;{{TIBCO_HOME}}&apos; or @name=&apos;AMX3-QA-BAT&apos;]</value>
    <name>XPath formula to reach the node to be removed</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deleteTibcoConfigHome" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deleteTibcoHome" > 

<graphx>850</graphx>
<graphy>850</graphy>
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
    <value>{{TIBCO_CONFIG_HOME}}</value>
    <name>File or directory to be deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deleteTibcoHome" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deleteAmxInstaller" > 

<graphx>970</graphx>
<graphy>970</graphy>
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
    <value>{{TIBCO_HOME}}</value>
    <name>File or directory to be deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deleteAmxInstaller" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="copyAmxZip" > 

<graphx>1090</graphx>
<graphy>1090</graphy>
<Documentation>Delete previous Amx installer if any.</Documentation>
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
    <value>{{tmpDir}}/amxinstaller</value>
    <name>File or directory to be deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="copyAmxZip" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="copyAmxHFZip" > 

<graphx>1210</graphx>
<graphy>1210</graphy>
<Documentation>Copy zip locally</Documentation>
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
    <value>{{=amxZip.replace(&apos;\\&apos;,&apos;/&apos;)}}</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{tmpDir}}/amxinstaller/amx.zip</value>
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

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.copyAmxZip.rsp</valueToFilterKey>
      <prop>amxZip2</prop>
      </Filter>

    </Node>


    <Node name="copyAmxHFZip" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="unzipAmx" > 

<graphx>1450</graphx>
<graphy>1450</graphy>
<Documentation>Copy zip locally</Documentation>
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
    <value>{{=amxHFZip.replace(&apos;\\&apos;,&apos;/&apos;)}}</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{tmpDir}}/amxinstaller/amxHF.zip</value>
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

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.copyAmxHFZip.rsp</valueToFilterKey>
      <prop>amxHFZip2</prop>
      </Filter>

    </Node>


    <Node name="unzipAmx" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="copyAmxSilentFile" > 

<graphx>1330</graphx>
<graphy>1330</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/ExtractZipArchive.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>zipArchivePath</key>
    <value>{{amxZip2}}</value>
    <name>Path of the zip archive to be extracted</name>
    </Parameter>
    <Parameter>
    <key>destinationFolder</key>
    <value>{{tmpDir}}/amxinstaller/unzip</value>
    <name>Path of the folder where the zip archive is to be extracted</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>3600</value>
    <name>Period of time in seconds to complete extraction</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="copyAmxSilentFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="configureSilentFile" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CopyFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>createDirectory</key>
    <value>true</value>
    <name>If true, create the necessary directories to copy the destination file</name>
    </Parameter>
    <Parameter>
    <key>fileIn</key>
    <value>{{LISA_TC_PATH}}/TIBCOUniversalInstallerAmx.silent.340.template</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{tibco.test.case.log.dir}}/TIBCOUniversalInstallerAmx.silent</value>
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

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.copyAmxSilentFile.rsp</valueToFilterKey>
      <prop>amxSilentFile</prop>
      </Filter>

    </Node>


    <Node name="configureSilentFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="installAmx" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/install/ConfigureAMXSilentFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>silentFile</key>
    <value>{{amxSilentFile}}</value>
    <name>Silent file</name>
    </Parameter>
    <Parameter>
    <key>amxZip</key>
    <value>{{=amxZip.replace(&apos;\\&apos;,&apos;/&apos;)}}</value>
    <name>Installer path</name>
    </Parameter>
    <Parameter>
    <key>sourceassemblyFolder</key>
    <value>{{TIBCO_AMX_TEST_FUNC_RT}}/bat/install/downloads/</value>
    <name>Assembly Folder location for copying </name>
    </Parameter>
    <Parameter>
    <key>destinationassemblyFolder</key>
    <value>{{tmpDir}}/amxinstaller/unzip</value>
    <name>Destination Assembly Folder</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="installAmx" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifyTibcoHomeExists" > 

<graphx>1450</graphx>
<graphy>1450</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/install/Install.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>installerHome</key>
    <value>{{tmpDir}}/amxinstaller/unzip</value>
    <name>Absolute path to the TIBCO Universal Installer along with the assemblies</name>
    </Parameter>
    <Parameter>
    <key>acceptLicense</key>
    <value>true</value>
    <name>License agreement</name>
    </Parameter>
    <Parameter>
    <key>silentFile</key>
    <value>{{amxSilentFile}}</value>
    <name>Optional. Silent file.</name>
    </Parameter>
    <Parameter>
    <key>logFile</key>
    <value>{{tibco.test.case.log.dir}}/amxinstall.log</value>
    <name>Optional. Installation log file.</name>
    </Parameter>
    <Parameter>
    <key>tempDir</key>
    <value></value>
    <name>Temporary directory to extract data</name>
    </Parameter>
    <Parameter>
    <key>javaHome</key>
    <value></value>
    <name>Override all of the searching and extracting of the JVM</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>4000</value>
    <name>Number of seconds to allow for installation completion</name>
    </Parameter>
    <Parameter>
    <key>installerBinaryPath</key>
    <value></value>
    <name>Universal Installer Binary for HF installations - Optional</name>
    </Parameter>
</Parameters>
<SaveProps>
<save>installerExe</save>
</SaveProps>
    </Node>


    <Node name="verifyTibcoHomeExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifyTibcoAmxHomeExists" > 

<graphx>1570</graphx>
<graphy>1570</graphy>
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
    <value>{{TIBCO_HOME}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert94" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find {{TIBCO_HOME}} after install</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="verifyTibcoAmxHomeExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifyTibcoAmxAdminHomeExists" > 

<graphx>1690</graphx>
<graphy>1690</graphy>
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
    <value>{{TIBCO_AMX_HOME}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert318" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find {{TIBCO_AMX_HOME}} after install</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="verifyTibcoAmxAdminHomeExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifyTibcoBSHomeExists" > 

<graphx>1810</graphx>
<graphy>1810</graphy>
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
    <value>{{TIBCO_AMXADMIN_HOME}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert218" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find {{TIBCO_AMXADMIN_HOME}} after install</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="verifyTibcoBSHomeExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifyTibcoHostHomeExists" > 

<graphx>1930</graphx>
<graphy>1930</graphy>
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
    <value>{{TIBCO_BS_HOME}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert280" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find {{TIBCO_BS_HOME}} after install</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="verifyTibcoHostHomeExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifyTibcoJREExists" > 

<graphx>2050</graphx>
<graphy>2050</graphy>
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
    <value>{{TIBCO_HOST_HOME}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert941" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find {{TIBCO_HOST_HOME}} after install</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="verifyTibcoJREExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifyMediationHomeExists" > 

<graphx>2170</graphx>
<graphy>2170</graphy>
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
    <value>{{TIBCO_JAVA_HOME}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert942" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find {{TIBCO_JAVA_HOME}} after install</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="verifyMediationHomeExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>2290</graphx>
<graphy>2290</graphy>
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
    <value>{{TIBCO_HOME}}/amx_it_mediation</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert280" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find Mediation folder after install</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="end" > 

<graphx>2530</graphx>
<graphy>2530</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="end" > 

<graphx>2650</graphx>
<graphy>2650</graphy>
    </Node>


</TestCase>
