<?xml version="1.0" encoding="UTF-8"?>
<TestCase name="Install_copy1" version="5">

<meta>
   <create author="admin" buildNumber="10.7.2.176" date="11/17/2022" host="na2devasgaks01" version="10.7.2"/>
   <lastEdited author="admin" buildNumber="10.7.2.176" date="12/01/2022" host="na2devasgaks01" version="10.7.2"/>
</meta>

<id>A0C04B72715C11ED90AF506B8D8BDEB5</id>
<Documentation>Runs TIBCO Universal Installer in silent mode to install TIBCO products.&#xd;
If the product is already installed in the same TIBCO_HOME this sub-process does not uninstall&#xd;
but re-install on top of the existing one.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPS01MDA4MzI5NzQ=</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>installerHome</key>
    <value/>
    <name>Absolute path to the TIBCO Universal Installer along with the assemblies</name>
    </Parameter>
    <Parameter>
    <key>acceptLicense</key>
    <value>true</value>
    <name>License agreement</name>
    </Parameter>
    <Parameter>
    <key>silentFile</key>
    <value/>
    <name>Optional. Silent file.</name>
    </Parameter>
    <Parameter>
    <key>logFile</key>
    <value/>
    <name>Optional. Installation log file.</name>
    </Parameter>
    <Parameter>
    <key>tempDir</key>
    <value/>
    <name>Temporary directory to extract data</name>
    </Parameter>
    <Parameter>
    <key>javaHome</key>
    <value/>
    <name>Override all of the searching and extracting of the JVM</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>600</value>
    <name>Number of seconds to allow for installation completion</name>
    </Parameter>
    <Parameter>
    <key>installerBinaryPath</key>
    <value/>
    <name>Universal Installer Binary for HF installations - Optional</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>JBOSSServerForEJBBT</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>ValuesToReplace_RowNum</key>
    <value/>
    <name>ValuesToReplace_RowNum</name>
    </Parameter>
    <Parameter>
    <key>adapterZip</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keyalias</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keypassword</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorelocation</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorepassword</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystoretype</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.admpwd</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.admusr</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.host</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.password</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.port</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.sid</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.url</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.username</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.env.name</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.instance.name</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amx.sv.queuePrefix</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amxHF2Zip</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amxHFZip</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amxZip</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>bwhost1</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>bwport1</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>bwportssl1</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>clrZip</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>compiler</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>cppZip</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>db.feature.version</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>db.shell.name</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>db.shell.version</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>db.source.jar.location</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>dbDriver</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>dbPwd</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>dbUrl</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>dbUser</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>ejbZip</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emshost</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emshost2</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emsport2</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emsport_tcp</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emspwd</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emssecure</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emsuser</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>enableMCR</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>env.node1.name</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>env.node2.name</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>hibernateDialect</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host.instance</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host.jmx.port</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host.name</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host.prefix</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host1</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>httpConnectionTimeout</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>installJavaHome</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>installSilentfile</key>
    <value/>
    <name>installSilentfile</name>
    </Parameter>
    <Parameter>
    <key>installTempDir</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>installerExe</key>
    <value/>
    <name>installerExe</name>
    </Parameter>
    <Parameter>
    <key>jmshost</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jmsport</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jmspwd</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jmsuser</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndiconnectionfactory</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndicontexturl</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndicontexturlSSL</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndihost</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndiport</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndipwd</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndiuser</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>keystore.location</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>lisa.Output Log Message.rsp</key>
    <value/>
    <name>Set 1st in Output Log Message</name>
    </Parameter>
    <Parameter>
    <key>lisa.Output Log Message.rsp.time</key>
    <value/>
    <name>Set 1st in Output Log Message</name>
    </Parameter>
    <Parameter>
    <key>lisa.checkIfUnix.rsp</key>
    <value/>
    <name>lisa.checkIfUnix.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.checkIfUnix.rsp.time</key>
    <value/>
    <name>lisa.checkIfUnix.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.chmodOnUnix.rsp</key>
    <value/>
    <name>lisa.chmodOnUnix.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.chmodOnUnix.rsp.time</key>
    <value/>
    <name>lisa.chmodOnUnix.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.command.exit.code</key>
    <value/>
    <name>lisa.command.exit.code</name>
    </Parameter>
    <Parameter>
    <key>lisa.command.pid_handle</key>
    <value/>
    <name>lisa.command.pid_handle</name>
    </Parameter>
    <Parameter>
    <key>lisa.copyUniversalInstallerForHFs.rsp</key>
    <value/>
    <name>lisa.copyUniversalInstallerForHFs.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.copyUniversalInstallerForHFs.rsp.time</key>
    <value/>
    <name>lisa.copyUniversalInstallerForHFs.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.determineInstallerFileName.rsp</key>
    <value/>
    <name>lisa.determineInstallerFileName.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.determineInstallerFileName.rsp.time</key>
    <value/>
    <name>lisa.determineInstallerFileName.rsp.time</name>
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
    <key>lisa.logCompletion.rsp</key>
    <value/>
    <name>lisa.logCompletion.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.logCompletion.rsp.time</key>
    <value/>
    <name>lisa.logCompletion.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.logInstallInfo.rsp</key>
    <value/>
    <name>lisa.logInstallInfo.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.logInstallInfo.rsp.time</key>
    <value/>
    <name>lisa.logInstallInfo.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.logProductName.rsp</key>
    <value/>
    <name>lisa.logProductName.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.logProductName.rsp.time</key>
    <value/>
    <name>lisa.logProductName.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.logTimeout.rsp</key>
    <value/>
    <name>lisa.logTimeout.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.logTimeout.rsp.time</key>
    <value/>
    <name>lisa.logTimeout.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.runInstaller.rsp</key>
    <value/>
    <name>lisa.runInstaller.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.runInstaller.rsp.time</key>
    <value/>
    <name>lisa.runInstaller.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.runInstaller~1.rsp</key>
    <value/>
    <name>Set 1st in runInstaller~1</name>
    </Parameter>
    <Parameter>
    <key>lisa.runInstaller~1.rsp.time</key>
    <value/>
    <name>Set 1st in runInstaller~1</name>
    </Parameter>
    <Parameter>
    <key>lisa.script.rsp</key>
    <value/>
    <name>Set 1st in script</name>
    </Parameter>
    <Parameter>
    <key>lisa.script.rsp.time</key>
    <value/>
    <name>Set 1st in script</name>
    </Parameter>
    <Parameter>
    <key>lisa.validateInstallationInputs.rsp</key>
    <value/>
    <name>lisa.validateInstallationInputs.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.validateInstallationInputs.rsp.time</key>
    <value/>
    <name>lisa.validateInstallationInputs.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>logappender.file.location</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>port1</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>port2</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>port3</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>port4</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>portssl1</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>prefix1</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>projectloc</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>queueConnectionfactory</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>regenerateDAA</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.datafile.template</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.connectionFactory</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.providerURL</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.host</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.port</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tmpDir</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value/>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>valueData</key>
    <value/>
    <name>valueData</name>
    </Parameter>
    <Parameter>
    <key>workingDir</key>
    <value/>
    <name>workingDir</name>
    </Parameter>
    <Parameter>
    <key>xpathData</key>
    <value/>
    <name>xpathData</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node log="" name="log" next="validateInstallationInputs" quiet="false" think="0" type="com.itko.lisa.test.TestNodeLogger" uid="A0C04B73715C11ED90AF506B8D8BDEB5" useFilters="true" version="1"> 


      <!-- Data Sets -->
<readrec>ValuesToReplace</readrec>
<log>Installing from {{installerHome}} ...</log>
    </Node>


    <Node log="Validating inputs for the installation process..." name="validateInstallationInputs" next="determineInstallerFileName" quiet="false" think="0" type="com.itko.lisa.test.ScriptNode" uid="A0C04B74715C11ED90AF506B8D8BDEB5" useFilters="true" version="1"> 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey/>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert87" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey/>
        <param>Installation inputs validation error</param>
</CheckResult>

<onerror>abort</onerror>
<script>String baseErrorMsg = "Installation inputs validation error";&#xd;
String baseSuccessMsg = "Installation inputs verified";&#xd;
&#xd;
if (!acceptLicense) {&#xd;
  return baseErrorMsg + ": You need to accept license agreement to proceed with installation.";&#xd;
}&#xd;
&#xd;
//Verify that installer folder exists&#xd;
String installHome = testExec.parseInState(installerHome).replace('\\','/');&#xd;
f = new File(installHome);&#xd;
if (!f.exists())&#xd;
{&#xd;
return baseErrorMsg + ": Installer Home (" + installHome + ") does not exist.";&#xd;
}&#xd;
&#xd;
if (!f.isDirectory())&#xd;
{&#xd;
 return baseErrorMsg + ": Installer Home (" + installHome + ") must be a directory.";&#xd;
}&#xd;
&#xd;
// validate binaryPath if supplied&#xd;
if ((installerBinaryPath != null) &amp;&amp; (!installerBinaryPath.equals(""))) {&#xd;
&#xd;
    File installerFile = null;&#xd;
    installerFile = new File(testExec.parseInState(installerBinaryPath).replace('\\', '/'));&#xd;
    &#xd;
    if (!installerFile.canRead()) {&#xd;
        return baseErrorMsg + ": Installer executable file (" + installerBinaryPath + ") not found/cannot be read.";&#xd;
    }&#xd;
&#xd;
    if (!installerFile.isFile()) {&#xd;
        return baseErrorMsg + ": Installer executable file (" + installerBinaryPath + ") is not a normal file.";&#xd;
    }&#xd;
}&#xd;
&#xd;
return baseSuccessMsg;&#xd;
</script>
    </Node>


    <Node log="Determining name of the installer executable..." name="determineInstallerFileName" next="logInstallInfo" quiet="false" think="0" type="com.itko.lisa.test.ScriptNode" uid="A0C07285715C11ED90AF506B8D8BDEB5" useFilters="true" version="1"> 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.determineInstallerFileName.rsp</valueToFilterKey>
      <prop>installerExe</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey/>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Determining the installable file" type="com.itko.lisa.test.CheckResultContains">
<log>Installable was not found: {{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey/>
        <param>Error finding the installer executable:</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.io.File;&#xd;
&#xd;
String baseErrorMessage="Error finding the installer executable: "; // Do not modify. Assertion on this string exists.&#xd;
&#xd;
//We are only searching the current folder. No subfolder searches are performed&#xd;
//There is NO match performed to check if for ex.: if the host OS is Windows and an .exe is present.&#xd;
//A blind match is done for .exe or .bin. On the first match, the file name is returned.&#xd;
&#xd;
//Get the list of files in the directory&#xd;
File f = new File(testExec.parseInState(installerHome).replace('\\','/'));&#xd;
String[] listOfFiles = f.list();&#xd;
		&#xd;
//Run over the list of files in the directory&#xd;
for (String installerFileName : listOfFiles) {&#xd;
	//Match 64-bit install .exe or .bin first&#xd;
	&#xd;
    if ( installerFileName.endsWith("64.exe") || installerFileName.endsWith("64.bin") ) {&#xd;
&#xd;
	    if (installerFileName.endsWith("64.exe")) {&#xd;
            return installerFileName;&#xd;
        } &#xd;
        else {&#xd;
            //If a match is found, return the file name&#xd;
            return testExec.parseInState(installerHome).replace('\\','/') +&#xd;
			"/" + installerFileName;&#xd;
        }&#xd;
	}&#xd;
    // Then match 32-bit install .exe or .bin&#xd;
    else if (installerFileName.endsWith(".exe") || installerFileName.endsWith(".bin")) {&#xd;
        if (installerFileName.endsWith(".exe")) {&#xd;
            return installerFileName;&#xd;
        } &#xd;
        else {&#xd;
            //If a match is found, return the file name&#xd;
            return testExec.parseInState(installerHome).replace('\\','/') +&#xd;
			"/" + installerFileName;&#xd;
        }&#xd;
    }&#xd;
}&#xd;
	&#xd;
//No match is found&#xd;
baseErrorMessage+="No Installer executable found";&#xd;
return baseErrorMessage;</script>
    </Node>


    <Node log="{{installerHome}}" name="logInstallInfo" next="checkIfUnix" quiet="false" think="0" type="com.itko.lisa.test.TestNodeLogger" uid="A0C07286715C11ED90AF506B8D8BDEB5" useFilters="true" version="1"> 

<log>logFile&#xd;
{{installerHome}}&#xd;
&#xd;
Installing:&#xd;
{{installerExe}} {{=(tempDir.equals(""))?"":"-is:tempdir " + tempDir.replace("\\","/")}} {{=(javaHome.equals(""))?"":"-is:javahome " + javaHome.replace("\\","/")}} -silent {{=(!silentFile.equals("") &amp;&amp; !silentFile.equals("&lt;&lt;null&gt;&gt;"))?"-V responseFile=\""+silentFile+"\"":""}} {{=(!logFile.equals("") &amp;&amp; !logFile.equals("&lt;&lt;null&gt;&gt;"))?"-V logFile=\""+logFile+"\"":""}}&#xd;
</log>
    </Node>


    <Node log="" name="checkIfUnix" next="chmodOnUnix" quiet="false" think="0" type="com.itko.lisa.test.ScriptNode" uid="A0C07287715C11ED90AF506B8D8BDEB5" useFilters="true" version="1"> 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey/>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert113" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert113] fired true of type Result as String Contains Given String</log>
<then>Output Log Message</then>
<valueToAssertKey/>
        <param>windows</param>
</CheckResult>

<onerror>abort</onerror>
<script>if (com.itko.util.Utilities.isWindows())&#xd;
 return "windows";&#xd;
else&#xd;
 return "unix";&#xd;
</script>
    </Node>


    <Node log="" name="chmodOnUnix" next="script" quiet="false" think="0" type="com.itko.lisa.utils.CommandLineExecNode" uid="A0C07288715C11ED90AF506B8D8BDEB5" useFilters="true" version="1"> 

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


    <Node log="" name="script" next="runInstaller" quiet="true" think="500-1S" type="com.itko.lisa.test.TestNodeLogger" uid="A0C07289715C11ED90AF506B8D8BDEB5" useFilters="true" version="1"> 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSavePropToFile">
        <valueToFilterKey>lisa.script.rsp</valueToFilterKey>
      <file>C:/Installers/amxinstaller/unzip/tibcoinstall.bat</file>
      <append>false</append>
      </Filter>

<log>{{installerExe}} {{=(tempDir.equals(""))?"":"-is:tempdir " + tempDir.replace("\\","/")}} {{=(javaHome.equals(""))?"":"-is:javahome " + javaHome.replace("\\","/")}} -silent {{=(!silentFile.equals("") &amp;&amp; !silentFile.equals("&lt;&lt;null&gt;&gt;"))?"-V responseFile=\""+silentFile+"\"":""}} {{=(!logFile.equals("") &amp;&amp; !logFile.equals("&lt;&lt;null&gt;&gt;"))?"-V logFile=\""+logFile+"\"":""}}</log>
    </Node>


    <Node log="Running the installer..." name="runInstaller" next="logCompletion" quiet="false" think="0" type="com.itko.lisa.utils.CommandLineExecNode" uid="A0C0728A715C11ED90AF506B8D8BDEB5" useFilters="true" version="1"> 

<cmd>tibcoinstall.bat</cmd>
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


    <Node log="" name="logCompletion" next="end" quiet="false" think="0" type="com.itko.lisa.test.TestNodeLogger" uid="A0C0728B715C11ED90AF506B8D8BDEB5" useFilters="true" version="1"> 

<log>Installation completed.&#xd;
Exit code: {{lisa.command.exit.code}}&#xd;
</log>
    </Node>


    <Node log="" name="Output Log Message" next="runInstaller" quiet="false" think="500-1S" type="com.itko.lisa.test.TestNodeLogger" uid="A0C0728C715C11ED90AF506B8D8BDEB5" useFilters="true" version="1"> 

<log>{{installerExe}} {{=(tempDir.equals(""))?"":"-is:tempdir " + tempDir.replace("\\","/")}} {{=(javaHome.equals(""))?"":"-is:javahome " + javaHome.replace("\\","/")}} -silent {{=(!silentFile.equals("") &amp;&amp; !silentFile.equals("&lt;&lt;null&gt;&gt;"))?"-V responseFile=\""+silentFile+"\"":""}} {{=(!logFile.equals("") &amp;&amp; !logFile.equals("&lt;&lt;null&gt;&gt;"))?"-V logFile=\""+logFile+"\"":""}}</log>
    </Node>


    <Node log="" name="logTimeout" next="fail" quiet="false" think="0-0" type="com.itko.lisa.test.TestNodeLogger" uid="A0C0728D715C11ED90AF506B8D8BDEB5" useFilters="true" version="1"> 

<log>Installation did not complete within {{timeout}} seconds.&#xd;
Exit code: {{lisa.command.exit.code}}&#xd;
</log>
    </Node>


    <Node log="This step copies the universal installer...Ignore failure of this step if user is installing non-HF version..." name="copyUniversalInstallerForHFs" next="determineInstallerFileName" quiet="false" think="0" type="com.itko.lisa.utils.ExecSubProcessNode" uid="A0C0728E715C11ED90AF506B8D8BDEB5" useFilters="true" version="1"> 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CopyFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>determineInstallerFileName</onAbort>
<Parameters>
    <Parameter>
    <key>fileIn</key>
    <value>{{installerBinaryPath}}</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{installerHome}}</value>
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


    <Node log="" name="abort" next="end" quiet="true" think="0h" type="com.itko.lisa.test.AbortStep" uid="A0C0728F715C11ED90AF506B8D8BDEB5" useFilters="true" version="1"> 

    </Node>


    <Node log="Installation complete." name="end" next="fail" quiet="true" think="0-0" type="com.itko.lisa.test.NormalEnd" uid="A0C07290715C11ED90AF506B8D8BDEB5" useFilters="true" version="1"> 

    </Node>


    <Node log="" name="fail" next="" quiet="true" think="0-0" type="com.itko.lisa.test.Abend" uid="A0C07291715C11ED90AF506B8D8BDEB5" useFilters="true" version="1"> 

    </Node>


    <DataSet atend="logInstallInfo" local="false" maxItemsToFetch="100" name="ValuesToReplace" random="false" type="com.itko.lisa.test.DataSheet">
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAAWVmFsdWVzVG9SZXBsYWNlX1Jvd051bXQAATF0AAl4cGF0aERhdGF0ACkvcHJvcGVydGllcy9lbnRyeVtAa2V5PSJlbnZpcm9ubWVudERlc2MiXXQACXZhbHVlRGF0YXQAE3t7ZW52aXJvbm1lbnREZXNjfX14</sample>
<table>
<col>xpathData</col>
<col>valueData</col>
<tr>
<td>/properties/entry[@key="environmentDesc"]</td>
<td>{{environmentDesc}}</td>
</tr>
<tr>
<td>/properties/entry[@key="environmentName"]</td>
<td>{{environmentName}}</td>
</tr>
<tr>
<td>/properties/entry[@key="installationRoot"]</td>
<td>{{tibcoHome}}</td>
</tr>
<tr>
<td>/properties/entry[@key="createNewEnvironment"]</td>
<td>{{createNewEnvironment}}</td>
</tr>
</table>
    </DataSet>

</TestCase>