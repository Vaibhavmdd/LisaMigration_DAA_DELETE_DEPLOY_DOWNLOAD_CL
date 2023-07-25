<?xml version="1.0" ?>

<TestCase name="CopyOfInstall" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/17/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/30/2022" host="na2devasgaks01" />
</meta>

<id>3A4426B1713A11ED90AF506B8D8BDEB5</id>
<Documentation>Runs TIBCO Universal Installer in silent mode to install TIBCO products.&#13;&#10;If the product is already installed in the same TIBCO_HOME this sub-process does not uninstall&#13;&#10;but re-install on top of the existing one.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPS0xNDc3NzE1Mjgy</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>installerHome</key>
    <value></value>
    <name>Absolute path to the TIBCO Universal Installer along with the assemblies</name>
    </Parameter>
    <Parameter>
    <key>acceptLicense</key>
    <value>true</value>
    <name>License agreement</name>
    </Parameter>
    <Parameter>
    <key>silentFile</key>
    <value></value>
    <name>Optional. Silent file.</name>
    </Parameter>
    <Parameter>
    <key>logFile</key>
    <value></value>
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
    <value>600</value>
    <name>Number of seconds to allow for installation completion</name>
    </Parameter>
    <Parameter>
    <key>installerBinaryPath</key>
    <value></value>
    <name>Universal Installer Binary for HF installations - Optional</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>JBOSSServerForEJBBT</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>ValuesToReplace_RowNum</key>
    <value></value>
    <name>ValuesToReplace_RowNum</name>
    </Parameter>
    <Parameter>
    <key>adapterZip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keyalias</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keypassword</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorelocation</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorepassword</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystoretype</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.admpwd</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.admusr</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.host</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.password</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.port</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.sid</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.url</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.username</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.env.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.instance.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amx.sv.queuePrefix</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amxHF2Zip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amxHFZip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amxZip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>bwhost1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>bwport1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>bwportssl1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>clrZip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>compiler</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>cppZip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>db.feature.version</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>db.shell.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>db.shell.version</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>db.source.jar.location</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>dbDriver</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>dbPwd</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>dbUrl</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>dbUser</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>ejbZip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emshost</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emshost2</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emsport2</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emsport_tcp</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emspwd</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emssecure</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emsuser</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>enableMCR</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>env.node1.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>env.node2.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>hibernateDialect</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host.instance</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host.jmx.port</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host.prefix</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>httpConnectionTimeout</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>installJavaHome</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>installSilentfile</key>
    <value></value>
    <name>installSilentfile</name>
    </Parameter>
    <Parameter>
    <key>installTempDir</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>installerExe</key>
    <value></value>
    <name>installerExe</name>
    </Parameter>
    <Parameter>
    <key>jmshost</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jmsport</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jmspwd</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jmsuser</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndiconnectionfactory</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndicontexturl</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndicontexturlSSL</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndihost</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndiport</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndipwd</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndiuser</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>keystore.location</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>lisa.Output Log Message.rsp</key>
    <value></value>
    <name>Set 1st in Output Log Message</name>
    </Parameter>
    <Parameter>
    <key>lisa.Output Log Message.rsp.time</key>
    <value></value>
    <name>Set 1st in Output Log Message</name>
    </Parameter>
    <Parameter>
    <key>lisa.checkIfUnix.rsp</key>
    <value></value>
    <name>lisa.checkIfUnix.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.checkIfUnix.rsp.time</key>
    <value></value>
    <name>lisa.checkIfUnix.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.chmodOnUnix.rsp</key>
    <value></value>
    <name>lisa.chmodOnUnix.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.chmodOnUnix.rsp.time</key>
    <value></value>
    <name>lisa.chmodOnUnix.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.command.exit.code</key>
    <value></value>
    <name>lisa.command.exit.code</name>
    </Parameter>
    <Parameter>
    <key>lisa.command.pid_handle</key>
    <value></value>
    <name>lisa.command.pid_handle</name>
    </Parameter>
    <Parameter>
    <key>lisa.copyUniversalInstallerForHFs.rsp</key>
    <value></value>
    <name>lisa.copyUniversalInstallerForHFs.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.copyUniversalInstallerForHFs.rsp.time</key>
    <value></value>
    <name>lisa.copyUniversalInstallerForHFs.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.determineInstallerFileName.rsp</key>
    <value></value>
    <name>lisa.determineInstallerFileName.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.determineInstallerFileName.rsp.time</key>
    <value></value>
    <name>lisa.determineInstallerFileName.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value></value>
    <name>lisa.end.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value></value>
    <name>lisa.end.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value></value>
    <name>lisa.fail.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value></value>
    <name>lisa.fail.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp</key>
    <value></value>
    <name>lisa.log.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value></value>
    <name>lisa.log.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.logCompletion.rsp</key>
    <value></value>
    <name>lisa.logCompletion.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.logCompletion.rsp.time</key>
    <value></value>
    <name>lisa.logCompletion.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.logInstallInfo.rsp</key>
    <value></value>
    <name>lisa.logInstallInfo.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.logInstallInfo.rsp.time</key>
    <value></value>
    <name>lisa.logInstallInfo.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.logProductName.rsp</key>
    <value></value>
    <name>lisa.logProductName.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.logProductName.rsp.time</key>
    <value></value>
    <name>lisa.logProductName.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.logTimeout.rsp</key>
    <value></value>
    <name>lisa.logTimeout.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.logTimeout.rsp.time</key>
    <value></value>
    <name>lisa.logTimeout.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.runInstaller.rsp</key>
    <value></value>
    <name>lisa.runInstaller.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.runInstaller.rsp.time</key>
    <value></value>
    <name>lisa.runInstaller.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.script.rsp</key>
    <value></value>
    <name>Set 1st in script</name>
    </Parameter>
    <Parameter>
    <key>lisa.script.rsp.time</key>
    <value></value>
    <name>Set 1st in script</name>
    </Parameter>
    <Parameter>
    <key>lisa.validateInstallationInputs.rsp</key>
    <value></value>
    <name>lisa.validateInstallationInputs.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.validateInstallationInputs.rsp.time</key>
    <value></value>
    <name>lisa.validateInstallationInputs.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>logappender.file.location</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>port1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>port2</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>port3</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>port4</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>portssl1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>prefix1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>projectloc</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>queueConnectionfactory</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>regenerateDAA</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.datafile.template</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.connectionFactory</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.providerURL</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.host</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.port</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tmpDir</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>valueData</key>
    <value></value>
    <name>valueData</name>
    </Parameter>
    <Parameter>
    <key>workingDir</key>
    <value></value>
    <name>workingDir</name>
    </Parameter>
    <Parameter>
    <key>xpathData</key>
    <value></value>
    <name>xpathData</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="runInstaller" log="Running the installer..."
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="3A444DC9713A11ED90AF506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<cmd>TIBCOUniversalInstaller-x86-64.exe   -silent -V responseFile=&quot;C:/Lisa1072/reports/TIBCOUniversalInstallerAmx.silent&quot; -V logFile=&quot;C:\Lisa1072\reports/amxinstall.log&quot;</cmd>
<basedir>C:\Installers/amxinstaller/unzip</basedir>
<toNode>logTimeout</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>{{timeout}}</timeOut>
<killAtEnd>false</killAtEnd>
<wait>false</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>true</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node name="logTimeout" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="3A444DCC713A11ED90AF506B8D8BDEB5" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="fail" > 

<log>Installation did not complete within {{timeout}} seconds.&#13;&#10;Exit code: {{lisa.command.exit.code}}&#13;&#10;</log>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="3A4474E0713A11ED90AF506B8D8BDEB5" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log="Installation complete."
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="3A4474DF713A11ED90AF506B8D8BDEB5" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="3A4474DE713A11ED90AF506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


</TestCase>
