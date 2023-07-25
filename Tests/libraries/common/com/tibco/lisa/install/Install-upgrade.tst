<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Wed Feb 12 21:57:43 PST 2014 -->


<TestCase name="Install-upgrade" version="2">
<id>98d71d84</id>
<Documentation>This subprocess installs ActiveMatrix in silent mode on top of an existing TIBCO_HOME.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTE4NDQ1NzMxMzg=</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>amxZip2</key>
    <value>{{amxZip2}}</value>
    <name>Amx installer zip - required</name>
    </Parameter>
    <Parameter>
    <key>installerBinaryPath</key>
    <value></value>
    <name>TIBCO Universal installer - optional for HF installation</name>
    </Parameter>
    <Parameter>
    <key>amxVersion</key>
    <value></value>
    <name>amx version - required </name>
    </Parameter>
    <Parameter>
    <key>installerSilentFile</key>
    <value>{{TIBCO_AMX_TEST_FUNC_RT}}/bat/install/TIBCOUniversalInstallerAmx.silent.Template</value>
    <name>installer silent file - optional</name>
    </Parameter>
    <Parameter>
    <key>installerLogPath</key>
    <value>{{tibco.test.case.log.dir}}</value>
    <name>installer log path - optional</name>
    </Parameter>
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
    <key>installshieldRegistryOnUnix</key>
    <value>Property From Config</value>
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
    <key>lisa.getInstallShieldRegistry.rsp</key>
    <value>Set in Step getInstallShieldRegistry</value>
    </Parameter>
    <Parameter>
    <key>lisa.getInstallShieldRegistry.rsp.time</key>
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
    <key>lisa.deleteInstallShieldRegistry.rsp.time</key>
    <value>Set in Step deleteInstallShieldRegistry</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteTibcoConfigHome.rsp</key>
    <value>Set in Step deleteTibcoConfigHome</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteTibcoConfigHome.rsp.time</key>
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
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>antTaskBaseError</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amxZip2Loc</key>
    <value>Property From Config</value>
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
    <key>compiler</key>
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
    <key>lisa.killSystemNode.rsp.time</key>
    <value>Set in Step killSystemNode</value>
    </Parameter>
    <Parameter>
    <key>lisa.killNode1.rsp</key>
    <value>Set in Step killNode1</value>
    </Parameter>
    <Parameter>
    <key>lisa.killNode1.rsp.time</key>
    <value>Set in Step killNode1</value>
    </Parameter>
    <Parameter>
    <key>lisa.killNode2.rsp</key>
    <value>Set in Step killNode2</value>
    </Parameter>
    <Parameter>
    <key>lisa.killNode2.rsp.time</key>
    <value>Set in Step killNode2</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteAmxInstallerZip.rsp</key>
    <value>Set in Step deleteAmxInstallerZip</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteAmxInstallerZip.rsp.time</key>
    <value>Set in Step deleteAmxInstallerZip</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteAmxInstaller.rsp</key>
    <value>Set in Step deleteAmxInstaller</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteAmxInstaller.rsp.time</key>
    <value>Set in Step deleteAmxInstaller</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyAmxZip.rsp</key>
    <value>Set in Step copyAmxZip</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyAmxZip.rsp.time</key>
    <value>Set in Step copyAmxZip</value>
    </Parameter>
    <Parameter>
    <key>amxZip2</key>
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
    <key>lisa.copyAmxSilentFile.rsp.time</key>
    <value>Set in Step copyAmxSilentFile</value>
    </Parameter>
    <Parameter>
    <key>amxSilentFile</key>
    <value>Set in Step copyAmxSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.getInstallerExe.rsp</key>
    <value>Set in Step getInstallerExe</value>
    </Parameter>
    <Parameter>
    <key>lisa.getInstallerExe.rsp.time</key>
    <value>Set in Step getInstallerExe</value>
    </Parameter>
    <Parameter>
    <key>installExe2</key>
    <value>Set in Step getInstallerExe</value>
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
    <key>lisa.verifyTibcoHomeExists.rsp.time</key>
    <value>Set in Step verifyTibcoHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoAmxHomeExists.rsp</key>
    <value>Set in Step verifyTibcoAmxHomeExists</value>
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
    <key>lisa.verifyTibcoBSHomeExists.rsp</key>
    <value>Set in Step verifyTibcoBSHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoBSHomeExists.rsp.time</key>
    <value>Set in Step verifyTibcoBSHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipLocation.rsp</key>
    <value>Set in Step unzipLocation</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipLocation.rsp.time</key>
    <value>Set in Step unzipLocation</value>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp</key>
    <value>Set in Step Log</value>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp.time</key>
    <value>Set in Step Log</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyInstallExe.rsp</key>
    <value>Set in Step copyInstallExe</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyInstallExe.rsp.time</key>
    <value>Set in Step copyInstallExe</value>
    </Parameter>
    <Parameter>
    <key>unziplocation</key>
    <value>Set in Step unzipLocation</value>
    </Parameter>
    <Parameter>
    <key>lisa.configureSilentFile.rsp</key>
    <value>Set in Step configureSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.configureSilentFile.rsp.time</key>
    <value>Set in Step configureSilentFile</value>
    </Parameter>
</resultState>

<Configurations>
<Configuration>
<name>DEFAULT</name>
<external>true</external>
<doc>{{TIBCO_AMX_TEST_FUNC_RT}}/bat/2node_hsql{{g11n}}.config</doc>
</Configuration>
</Configurations>
    <Node name="Log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="true" 
          next="killTIBCOHost" > 

<graphx>10</graphx>
<graphy>10</graphy>
      <log>Invoking installation with following inputs:&#13;&#10;&#13;&#10;AMX Installer zip = {{amxZip2}}&#13;&#10;Universal Installer = {{installerBinaryPath}}&#13;&#10;AMX Silent file = {{installerSilentFile}}&#13;&#10;AMX Version = {{amxVersion}}&#13;&#10;install log folder = {{installerLogPath}}&#13;&#10;&#13;&#10;</log>
    </Node>


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
<onFail>continue</onFail>
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
<onFail>continue</onFail>
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
<onFail>continue</onFail>
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
          next="unzipLocation" > 

<graphx>370</graphx>
<graphy>370</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>continue</onFail>
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


    <Node name="unzipLocation" log="This step checks whether universal installer is required to install amx"
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deleteAmxInstallerZip" > 

<graphx>778</graphx>
<graphy>10</graphy>
<onerror>fail</onerror>
<script>&#13;&#10;if (amxVersion.contains(&quot;HF&quot;))&#13;&#10;    return testExec.parseInState(tmpDir).replace(&quot;\\&quot;,&quot;/&quot;) + &quot;/amxinstaller/unzip/hf&quot;;&#13;&#10;else&#13;&#10;    return testExec.parseInState(tmpDir).replace(&quot;\\&quot;,&quot;/&quot;) + &quot;/amxinstaller/unzip&quot;;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.unzipLocation.rsp</valueToFilterKey>
      <prop>unziplocation</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert147" type="com.itko.lisa.test.CheckResultRegEx">
<log>Universal Installer is required for {{amxVersion}}</log>
<then>getInstallerExe</then>
<valueToAssertKey></valueToAssertKey>
        <param>Required:.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="deleteAmxInstallerZip" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deleteAmxInstaller" > 

<graphx>490</graphx>
<graphy>490</graphy>
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
    <value>{{unziplocation}}/amx-{{amxVersion}}.zip</value>
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

<graphx>490</graphx>
<graphy>490</graphy>
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
    <value>{{unziplocation}}/amx-{{amxVersion}}</value>
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
          next="unzipAmx" > 

<graphx>610</graphx>
<graphy>610</graphy>
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
    <value>{{=amxZip2.replace(&apos;\\&apos;,&apos;/&apos;)}}</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{unziplocation}}/amx-{{amxVersion}}.zip</value>
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


    <Node name="unzipAmx" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="copyAmxSilentFile" > 

<graphx>730</graphx>
<graphy>730</graphy>
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
    <value>{{unziplocation}}/amx-{{amxVersion}}</value>
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
    <key>fileIn</key>
    <value>{{installerSilentFile}}</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{unziplocation}}/amx-{{amxVersion}}/TIBCOUniversalInstallerAmx.silent</value>
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
<Documentation></Documentation>
<remoteServer>local</remoteServer>
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
    <value>{{=amxZip2.replace(&apos;\\&apos;,&apos;/&apos;)}}</value>
    <name>Installer path</name>
    </Parameter>
    <Parameter>
    <key>sourceassemblyFolder</key>
    <value>{{TIBCO_AMX_TEST_FUNC_RT}}/bat/install/downloads/</value>
    <name>Assembly Folder location for copying </name>
    </Parameter>
    <Parameter>
    <key>destinationassemblyFolder</key>
    <value>{{unziplocation}}</value>
    <name>Destination Assembly Folder</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="isUniversalInstallerRequired" log="This step checks whether universal installer is required to install amx"
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="installAmx" > 

<graphx>778</graphx>
<graphy>10</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<onerror>fail</onerror>
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.FileReader;&#13;&#10;import java.io.InputStream;&#13;&#10;import java.io.OutputStream;&#13;&#10;import java.io.PrintStream;&#13;&#10;import java.util.Enumeration;&#13;&#10;import java.util.Properties;&#13;&#10;import java.util.Set;&#13;&#10;&#13;&#10;// For major versions / service packs universal installers are packaged as part of the installer&#13;&#10;// For hf&apos;s we need to copy&#13;&#10;&#13;&#10;String isUniversalInstallerRequired() {&#13;&#10;&#9;&#9;&#13;&#10;        String response=&quot;&quot;;&#13;&#10;        &#13;&#10;        if (amxVersion.contains(&quot;HF&quot;))&#13;&#10;        {&#13;&#10;      &#9;&#9;response = &quot;Required: Universal Installer for &quot;  + amxVersion + &quot;is required&quot;;&#13;&#10;            return response;&#13;&#10;        }&#13;&#10;        return response;&#13;&#10;}&#13;&#10;return isUniversalInstallerRequired();</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert147" type="com.itko.lisa.test.CheckResultRegEx">
<log>Universal Installer is required for {{amxVersion}}</log>
<then>getInstallerExe</then>
<valueToAssertKey></valueToAssertKey>
        <param>Required:.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="getInstallerExe" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="copyInstallExe" > 

<graphx>130</graphx>
<graphy>130</graphy>
<onerror>fail</onerror>
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.FileReader;&#13;&#10;import java.io.InputStream;&#13;&#10;import java.io.OutputStream;&#13;&#10;import java.io.PrintStream;&#13;&#10;import java.util.Enumeration;&#13;&#10;import java.util.Properties;&#13;&#10;import java.util.Set;&#13;&#10;&#13;&#10;// For 3.1.5 HF&apos;s, we have to pick installer from &lt;tibco-home&gt;/tools/universal_installer&#13;&#10;// For other HF&apos;s, we can copy from unzip location or from universal installer&#13;&#10;&#13;&#10;String getInstallerExe() {&#13;&#10;&#13;&#10;        File fileExe = null;&#13;&#10;        String installerExe=&quot;&quot;;&#13;&#10;        String unzipLoc=&quot;&quot;;&#13;&#10;        String installExePath =  testExec.parseInState(TIBCO_HOME).replace(&quot;\\&quot;,&quot;/&quot;) + &quot;/tools/universal_installer&quot;;&#13;&#10;&#13;&#10;        File f = new File(installExePath);&#13;&#10;        String[] listOfFiles = f.list();&#13;&#10;        &#13;&#10;        if (f.exists()) {&#13;&#10;        &#13;&#10;          for (String installerFileName : listOfFiles) {&#13;&#10;            //Match 64-bit install .exe or .bin first&#13;&#10;            if (installerFileName.endsWith(&quot;64.exe&quot;) || installerFileName.endsWith(&quot;64.bin&quot;)) {&#13;&#10;            if (installerFileName.endsWith(&quot;64.exe&quot;)) {&#13;&#10;                return installExePath + &quot;/&quot; + installerFileName;&#13;&#10;            } &#13;&#10;            else {&#13;&#10;                //If a match is found, return the file name&#13;&#10;                return installExePath + &quot;/&quot; + installerFileName;&#13;&#10;                }&#13;&#10;            }&#13;&#10;            // Then match 32-bit install .exe or .bin&#13;&#10;            else if (installerFileName.endsWith(&quot;.exe&quot;) || installerFileName.endsWith(&quot;.bin&quot;)) {&#13;&#10;            if (installerFileName.endsWith(&quot;.exe&quot;)) {&#13;&#10;            return installExePath + &quot;/&quot; + installerFileName;&#13;&#10;        } &#13;&#10;        else {&#13;&#10;            //If a match is found, return the file name&#13;&#10;            return installExePath + &quot;/&quot; + installerFileName;&#13;&#10;        }&#13;&#10;        }&#13;&#10;    }&#13;&#10;&#13;&#10;    }&#13;&#10;    return &quot;Error: Could not get Installer Executable: &quot; + fileExe;&#13;&#10;}&#13;&#10;return getInstallerExe();&#13;&#10;&#13;&#10;        // find it under major or service pack unzip folder version - this step is executed only for HF&apos;s&#13;&#10;        // so safe to assume that &quot;HF&quot; string is present in amxVersion string&#13;&#10;&#13;&#10;        //int index = amxVersion.lastIndexOf(&quot;.&quot;);&#13;&#10;        //String version = amxVersion.substring(0,index);&#13;&#10;        &#13;&#10;        //fileExe = new File(testExec.parseInState(tmpDir).replace(&quot;\\&quot;,&quot;/&quot;) + &quot;/amxinstaller/unzip/&quot; + &quot;amx-&quot; + version + &quot;/&quot; + installerExe);&#13;&#10;        //if (fileExe.exists())&#13;&#10;        //{&#13;&#10;        //    return fileExe.getAbsolutePath();&#13;&#10;        //} &#13;&#10;        &#13;&#10;        &#13;&#10;        /*(fileExe = new File(testExec.parseInState(installerBinaryPath).replace(&quot;\\&quot;,&quot;/&quot;)); &#13;&#10;        if (fileExe.exists())&#13;&#10;        {&#13;&#10;          return fileExe.getAbsolutePath();&#13;&#10;        } &#13;&#10;        }*/&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getInstallerExe.rsp</valueToFilterKey>
      <prop>installExe2</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert171" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Error</param>
</CheckResult>

    </Node>


    <Node name="copyInstallExe" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="installAmx" > 

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
    <key>fileIn</key>
    <value>{{installExe2}}</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{unziplocation}}/amx-{{amxVersion}}</value>
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


    <Node name="installAmx" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifyTibcoHomeExists" > 

<graphx>850</graphx>
<graphy>850</graphy>
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
    <value>{{unziplocation}}/amx-{{amxVersion}}</value>
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
    <value>{{installerLogPath}}/amxinstall-{{amxVersion}}.log</value>
    <name>Optional. Installation log file.</name>
    </Parameter>
    <Parameter>
    <key>tempDir</key>
    <value>{{installTempDir}}</value>
    <name>Temporary directory to extract data</name>
    </Parameter>
    <Parameter>
    <key>javaHome</key>
    <value>{{installJavaHome}}</value>
    <name>Override all of the searching and extracting of the JVM</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>3600</value>
    <name>Number of seconds to allow for installation completion</name>
    </Parameter>
    <Parameter>
    <key>installerBinaryPath</key>
    <value>{{installerBinaryPath}}</value>
    <name>Universal Installer Binary for HF installations - Optional</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="verifyTibcoHomeExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifyTibcoAmxHomeExists" > 

<graphx>970</graphx>
<graphy>970</graphy>
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

<graphx>1090</graphx>
<graphy>1090</graphy>
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

<graphx>1210</graphx>
<graphy>1210</graphy>
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
          next="end" > 

<graphx>1330</graphx>
<graphy>1330</graphy>
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


    <Node name="checkPostInstallTasks" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="false" 
 quiet="false" 
          next="end" > 

<graphx>250</graphx>
<graphy>250</graphy>
<Documentation>Return the the list of post-install errors or false otherwise.</Documentation>
<onerror>fail</onerror>
<script>import java.io.FilenameFilter;&#13;&#10;import java.io.File;&#13;&#10;&#13;&#10;// Define the filter to get the post-install errors only&#13;&#10;FilenameFilter AntTaskFilter = new FilenameFilter() {&#13;&#10; boolean accept(File dir, String name) {&#13;&#10;  return name.toLowerCase().contains(&quot;anttask_error&quot;);&#13;&#10; }&#13;&#10;};&#13;&#10;&#13;&#10;&#13;&#10;File dir = new File(installerLogPath);&#13;&#10;&#13;&#10;&#13;&#10;String [] listAntTaskError = dir.list(AntTaskFilter);&#13;&#10;String listError = &quot;&quot;;&#13;&#10;if (listAntTaskError.length == 0)&#13;&#10; listError = &quot;false&quot;;&#13;&#10;else {&#13;&#10; listError = &quot;Post-Install Task Errors: \n&quot;;&#13;&#10; for (int i=0; i&lt;listAntTaskError.length; i++) {&#13;&#10;  listError = listError + &quot;\n&quot; + listAntTaskError[i];&#13;&#10; }&#13;&#10;}&#13;&#10;&#13;&#10;return lis&#13;&#10;tError;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert154" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert154] fired false of type Result as String Contains Given String</log>
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

<graphx>1570</graphx>
<graphy>1570</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>1690</graphx>
<graphy>1690</graphy>
    </Node>


</TestCase>
