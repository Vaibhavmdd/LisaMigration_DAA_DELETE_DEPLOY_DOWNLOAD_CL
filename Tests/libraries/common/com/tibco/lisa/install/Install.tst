<?xml version="1.0" ?>

<TestCase name="Install" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/17/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/02/2022" host="na2devasgaks01" />
</meta>

<id>55627170</id>
<Documentation>Runs TIBCO Universal Installer in silent mode to install TIBCO products.&#13;&#10;If the product is already installed in the same TIBCO_HOME this sub-process does not uninstall&#13;&#10;but re-install on top of the existing one.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPTExNDIzNjU1Mg==</sig>
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
    <key>lisa.runInstaller~1.rsp</key>
    <value></value>
    <name>Set 1st in runInstaller~1</name>
    </Parameter>
    <Parameter>
    <key>lisa.runInstaller~1.rsp.time</key>
    <value></value>
    <name>Set 1st in runInstaller~1</name>
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

    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="55627170-log" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="validateInstallationInputs" > 


      <!-- Data Sets -->
<readrec>ValuesToReplace</readrec>
<log>Installing from {{installerHome}} ...</log>
    </Node>


    <Node name="validateInstallationInputs" log="Validating inputs for the installation process..."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="55627170-validateInstallationInputs" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="determineInstallerFileName" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert87" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Installation inputs validation error</param>
</CheckResult>

<onerror>abort</onerror>
<script>String baseErrorMsg = &quot;Installation inputs validation error&quot;;&#13;&#10;String baseSuccessMsg = &quot;Installation inputs verified&quot;;&#13;&#10;&#13;&#10;if (!acceptLicense) {&#13;&#10;  return baseErrorMsg + &quot;: You need to accept license agreement to proceed with installation.&quot;;&#13;&#10;}&#13;&#10;&#13;&#10;//Verify that installer folder exists&#13;&#10;String installHome = testExec.parseInState(installerHome).replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;f = new File(installHome);&#13;&#10;if (!f.exists())&#13;&#10;{&#13;&#10;return baseErrorMsg + &quot;: Installer Home (&quot; + installHome + &quot;) does not exist.&quot;;&#13;&#10;}&#13;&#10;&#13;&#10;if (!f.isDirectory())&#13;&#10;{&#13;&#10; return baseErrorMsg + &quot;: Installer Home (&quot; + installHome + &quot;) must be a directory.&quot;;&#13;&#10;}&#13;&#10;&#13;&#10;// validate binaryPath if supplied&#13;&#10;if ((installerBinaryPath != null) &amp;&amp; (!installerBinaryPath.equals(&quot;&quot;))) {&#13;&#10;&#13;&#10;    File installerFile = null;&#13;&#10;    installerFile = new File(testExec.parseInState(installerBinaryPath).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;    &#13;&#10;    if (!installerFile.canRead()) {&#13;&#10;        return baseErrorMsg + &quot;: Installer executable file (&quot; + installerBinaryPath + &quot;) not found/cannot be read.&quot;;&#13;&#10;    }&#13;&#10;&#13;&#10;    if (!installerFile.isFile()) {&#13;&#10;        return baseErrorMsg + &quot;: Installer executable file (&quot; + installerBinaryPath + &quot;) is not a normal file.&quot;;&#13;&#10;    }&#13;&#10;}&#13;&#10;&#13;&#10;return baseSuccessMsg;&#13;&#10;</script>
    </Node>


    <Node name="determineInstallerFileName" log="Determining name of the installer executable..."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="55627170-determineInstallerFileName" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="logInstallInfo" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.determineInstallerFileName.rsp</valueToFilterKey>
      <prop>installerExe</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Determining the installable file" type="com.itko.lisa.test.CheckResultContains">
<log>Installable was not found: {{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Error finding the installer executable:</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.io.File;&#13;&#10;&#13;&#10;String baseErrorMessage=&quot;Error finding the installer executable: &quot;; // Do not modify. Assertion on this string exists.&#13;&#10;&#13;&#10;//We are only searching the current folder. No subfolder searches are performed&#13;&#10;//There is NO match performed to check if for ex.: if the host OS is Windows and an .exe is present.&#13;&#10;//A blind match is done for .exe or .bin. On the first match, the file name is returned.&#13;&#10;&#13;&#10;//Get the list of files in the directory&#13;&#10;File f = new File(testExec.parseInState(installerHome).replace(&apos;\\&apos;,&apos;/&apos;));&#13;&#10;String[] listOfFiles = f.list();&#13;&#10;&#9;&#9;&#13;&#10;//Run over the list of files in the directory&#13;&#10;for (String installerFileName : listOfFiles) {&#13;&#10;&#9;//Match 64-bit install .exe or .bin first&#13;&#10;&#9;&#13;&#10;    if ( installerFileName.endsWith(&quot;64.exe&quot;) || installerFileName.endsWith(&quot;64.bin&quot;) ) {&#13;&#10;&#13;&#10;&#9;    if (installerFileName.endsWith(&quot;64.exe&quot;)) {&#13;&#10;            return installerFileName;&#13;&#10;        } &#13;&#10;        else {&#13;&#10;            //If a match is found, return the file name&#13;&#10;            return testExec.parseInState(installerHome).replace(&apos;\\&apos;,&apos;/&apos;) +&#13;&#10;&#9;&#9;&#9;&quot;/&quot; + installerFileName;&#13;&#10;        }&#13;&#10;&#9;}&#13;&#10;    // Then match 32-bit install .exe or .bin&#13;&#10;    else if (installerFileName.endsWith(&quot;.exe&quot;) || installerFileName.endsWith(&quot;.bin&quot;)) {&#13;&#10;        if (installerFileName.endsWith(&quot;.exe&quot;)) {&#13;&#10;            return installerFileName;&#13;&#10;        } &#13;&#10;        else {&#13;&#10;            //If a match is found, return the file name&#13;&#10;            return testExec.parseInState(installerHome).replace(&apos;\\&apos;,&apos;/&apos;) +&#13;&#10;&#9;&#9;&#9;&quot;/&quot; + installerFileName;&#13;&#10;        }&#13;&#10;    }&#13;&#10;}&#13;&#10;&#9;&#13;&#10;//No match is found&#13;&#10;baseErrorMessage+=&quot;No Installer executable found&quot;;&#13;&#10;return baseErrorMessage;</script>
    </Node>


    <Node name="logInstallInfo" log="{{installerHome}}"
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="55627170-logInstallInfo" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="checkIfUnix" > 

<log>logFile&#13;&#10;{{installerHome}}&#13;&#10;&#13;&#10;Installing:&#13;&#10;{{installerExe}} {{=(tempDir.equals(&quot;&quot;))?&quot;&quot;:&quot;-is:tempdir &quot; + tempDir.replace(&quot;\\&quot;,&quot;/&quot;)}} {{=(javaHome.equals(&quot;&quot;))?&quot;&quot;:&quot;-is:javahome &quot; + javaHome.replace(&quot;\\&quot;,&quot;/&quot;)}} -silent {{=(!silentFile.equals(&quot;&quot;) &amp;&amp; !silentFile.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))?&quot;-V responseFile=\&quot;&quot;+silentFile+&quot;\&quot;&quot;:&quot;&quot;}} {{=(!logFile.equals(&quot;&quot;) &amp;&amp; !logFile.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))?&quot;-V logFile=\&quot;&quot;+logFile+&quot;\&quot;&quot;:&quot;&quot;}}&#13;&#10;</log>
    </Node>


    <Node name="checkIfUnix" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="55627170-checkIfUnix" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="chmodOnUnix" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert113" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert113] fired true of type Result as String Contains Given String</log>
<then>script</then>
<valueToAssertKey></valueToAssertKey>
        <param>windows</param>
</CheckResult>

<onerror>abort</onerror>
<script>if (com.itko.util.Utilities.isWindows())&#13;&#10; return &quot;windows&quot;;&#13;&#10;else&#13;&#10; return &quot;unix&quot;;&#13;&#10;</script>
    </Node>


    <Node name="chmodOnUnix" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="55627170-chmodOnUnix" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="logCompletion" > 

<cmd>/bin/chmod u+x {{installerExe}}</cmd>
<basedir>{{installerHome}}</basedir>
<toNode>abort</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node name="logCompletion" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="55627170-logCompletion" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<log>Installation completed.&#13;&#10;Exit code: {{lisa.command.exit.code}}&#13;&#10;</log>
    </Node>


    <Node name="script" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="E4440931713611ED90AF506B8D8BDEB5" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="runInstaller" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSavePropToFile">
        <valueToFilterKey>lisa.script.rsp</valueToFilterKey>
      <file>C:/Installers/amxinstaller/unzip/tibcoinstall.bat</file>
      <append>false</append>
      </Filter>

<log>{{installerHome}}&#13;&#10;{{installerExe}} {{=(tempDir.equals(&quot;&quot;))?&quot;&quot;:&quot;-is:tempdir &quot; + tempDir.replace(&quot;\\&quot;,&quot;/&quot;)}} {{=(javaHome.equals(&quot;&quot;))?&quot;&quot;:&quot;-is:javahome &quot; + javaHome.replace(&quot;\\&quot;,&quot;/&quot;)}} -silent {{=(!silentFile.equals(&quot;&quot;) &amp;&amp; !silentFile.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))?&quot;-V responseFile=\&quot;&quot;+silentFile+&quot;\&quot;&quot;:&quot;&quot;}} {{=(!logFile.equals(&quot;&quot;) &amp;&amp; !logFile.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))?&quot;-V logFile=\&quot;&quot;+logFile+&quot;\&quot;&quot;:&quot;&quot;}}</log>
    </Node>


    <Node name="runInstaller" log="Running the installer..."
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="55627170-runInstaller" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="logCompletion" > 

<cmd>tibcoinstall.bat</cmd>
<basedir>{{installerHome}}</basedir>
<toNode>logTimeout</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>{{timeout}}</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
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
          uid="55627170-logTimeout" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="fail" > 

<log>Installation did not complete within {{timeout}} seconds.&#13;&#10;Exit code: {{lisa.command.exit.code}}&#13;&#10;</log>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="8A54FFF3670F11ED940E506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="end" log="Installation complete."
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="55627170-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="55627170-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <DataSet type="com.itko.lisa.test.DataSheet" name="ValuesToReplace" atend="logInstallInfo" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAAWVmFsdWVzVG9SZXBsYWNlX1Jvd051bXQAATF0AAl4cGF0aERhdGF0ACkvcHJvcGVydGllcy9lbnRyeVtAa2V5PSJlbnZpcm9ubWVudERlc2MiXXQACXZhbHVlRGF0YXQAE3t7ZW52aXJvbm1lbnREZXNjfX14</sample>
<table>
<col>xpathData</col>
<col>valueData</col>
<tr>
<td>/properties/entry[@key=&quot;environmentDesc&quot;]</td>
<td>{{environmentDesc}}</td>
</tr>
<tr>
<td>/properties/entry[@key=&quot;environmentName&quot;]</td>
<td>{{environmentName}}</td>
</tr>
<tr>
<td>/properties/entry[@key=&quot;installationRoot&quot;]</td>
<td>{{tibcoHome}}</td>
</tr>
<tr>
<td>/properties/entry[@key=&quot;createNewEnvironment&quot;]</td>
<td>{{createNewEnvironment}}</td>
</tr>
</table>
    </DataSet>

</TestCase>
