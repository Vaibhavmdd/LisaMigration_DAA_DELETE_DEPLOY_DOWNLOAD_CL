<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Tue Mar 01 21:45:14 PST 2016 -->


<TestCase name="install-NoHF" version="2">
<id>98d71d84</id>
<Documentation>Suite installation in silent mode of:&#13;&#10;- AMX SG&#13;&#10;- CPP IT&#13;&#10;- Adapter BT&#13;&#10;- EJB BT&#13;&#10;- CLR IT (if Windows)&#13;&#10;Then install AMX HF on top of it in silent mode.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0xNDc0ODk0MDk0</sig>
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
    <key>lisa.verifyTibcoAmxHomeExists.rsp.time</key>
    <value>Set in Step verifyTibcoAmxHomeExists</value>
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
    <key>lisa.continue.rsp</key>
    <value>Set in Step continue</value>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp.time</key>
    <value>Set in Step continue</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteTibcoHome.rsp</key>
    <value>Set in Step deleteTibcoHome</value>
    </Parameter>
    <Parameter>
    <key>lisa.setTibcoHomeInAmxSilentFile.rsp</key>
    <value>Set in Step setTibcoHomeInAmxSilentFile</value>
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
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
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
    <key>lisa.deleteTibcoHome.rsp.time</key>
    <value>Set in Step deleteTibcoHome</value>
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
    <key>lisa.installAmx.rsp.time</key>
    <value>Set in Step installAmx</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoHomeExists.rsp.time</key>
    <value>Set in Step verifyTibcoHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoAmxAdminHomeExists.rsp.time</key>
    <value>Set in Step verifyTibcoAmxAdminHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipAmx.rsp</key>
    <value>Set in Step unzipAmx</value>
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
    <key>lisa.copyInstallExe.rsp.time</key>
    <value>Set in Step copyInstallExe</value>
    </Parameter>
    <Parameter>
    <key>lisa.getInstallerExe.rsp</key>
    <value>Set in Step getInstallerExe</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyInstallExe.rsp</key>
    <value>Set in Step copyInstallExe</value>
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
    <key>lisa.installAmx.rsp</key>
    <value>Set in Step installAmx</value>
    </Parameter>
    <Parameter>
    <key>installerExe</key>
    <value>Set in Step installAmx</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoHomeExists.rsp</key>
    <value>Set in Step verifyTibcoHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoAmxHomeExists.rsp</key>
    <value>Set in Step verifyTibcoAmxHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoAmxAdminHomeExists.rsp</key>
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
    <key>lisa.verifyTibcoHostHomeExists.rsp</key>
    <value>Set in Step verifyTibcoHostHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyMediationHomeExists.rsp</key>
    <value>Set in Step verifyMediationHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyMediationHomeExists.rsp.time</key>
    <value>Set in Step verifyMediationHomeExists</value>
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
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.configureSilentFile.rsp</key>
    <value>Set in Step configureSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.configureSilentFile.rsp.time</key>
    <value>Set in Step configureSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipAmx.rsp.time</key>
    <value>Set in Step unzipAmx</value>
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
    <key>lisa.unzipCpp.rsp</key>
    <value>Set in Step unzipCpp</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipCpp.rsp.time</key>
    <value>Set in Step unzipCpp</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipAdapter.rsp</key>
    <value>Set in Step unzipAdapter</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipAdapter.rsp.time</key>
    <value>Set in Step unzipAdapter</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipEJB.rsp</key>
    <value>Set in Step unzipEJB</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipEJB.rsp.time</key>
    <value>Set in Step unzipEJB</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyCPPHomeExists.rsp</key>
    <value>Set in Step verifyCPPHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyCPPHomeExists.rsp.time</key>
    <value>Set in Step verifyCPPHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyAdapterHomeExists.rsp</key>
    <value>Set in Step verifyAdapterHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyAdapterHomeExists.rsp.time</key>
    <value>Set in Step verifyAdapterHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyEJBHomeExists.rsp</key>
    <value>Set in Step verifyEJBHomeExists</value>
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
    <key>lisa.copyAmxSilentFile2.rsp.time</key>
    <value>Set in Step copyAmxSilentFile2</value>
    </Parameter>
    <Parameter>
    <key>lisa.installAmxHF.rsp</key>
    <value>Set in Step installAmxHF</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkPostInstallTasks.rsp</key>
    <value>Set in Step checkPostInstallTasks</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkPostInstallTasks.rsp.time</key>
    <value>Set in Step checkPostInstallTasks</value>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
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
          next="copyCPPZip" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
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


    <Node name="copyCPPZip" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="copyAdapterZip" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
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
    <value>{{=cppZip.replace(&apos;\\&apos;,&apos;/&apos;)}}</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{tmpDir}}/amxinstaller/cpp.zip</value>
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
        <valueToFilterKey>lisa.copyCPPZip.rsp</valueToFilterKey>
      <prop>cppZip2</prop>
      </Filter>

    </Node>


    <Node name="copyAdapterZip" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="copyEJBZip" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
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
    <value>{{=adapterZip.replace(&apos;\\&apos;,&apos;/&apos;)}}</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{tmpDir}}/amxinstaller/adapter.zip</value>
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
        <valueToFilterKey>lisa.copyAdapterZip.rsp</valueToFilterKey>
      <prop>adapterZip2</prop>
      </Filter>

    </Node>


    <Node name="copyEJBZip" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="unzipCpp" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
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
    <value>{{=ejbZip.replace(&apos;\\&apos;,&apos;/&apos;)}}</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{tmpDir}}/amxinstaller/ejb.zip</value>
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
        <valueToFilterKey>lisa.copyEJBZip.rsp</valueToFilterKey>
      <prop>ejbZip2</prop>
      </Filter>

    </Node>


    <Node name="unzipCpp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="unzipAdapter" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
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
    <value>{{cppZip2}}</value>
    <name>Path of the zip archive to be extracted</name>
    </Parameter>
    <Parameter>
    <key>destinationFolder</key>
    <value>{{tmpDir}}/amxinstaller/unzip</value>
    <name>Path of the folder where the zip archive is to be extracted</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>1500</value>
    <name>Period of time in seconds to complete extraction</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="unzipAdapter" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="unzipEJB" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
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
    <value>{{adapterZip2}}</value>
    <name>Path of the zip archive to be extracted</name>
    </Parameter>
    <Parameter>
    <key>destinationFolder</key>
    <value>{{tmpDir}}/amxinstaller/unzip</value>
    <name>Path of the folder where the zip archive is to be extracted</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>1500</value>
    <name>Period of time in seconds to complete extraction</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="unzipEJB" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="installCLRITIfWindows" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
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
    <value>{{ejbZip2}}</value>
    <name>Path of the zip archive to be extracted</name>
    </Parameter>
    <Parameter>
    <key>destinationFolder</key>
    <value>{{tmpDir}}/amxinstaller/unzip</value>
    <name>Path of the folder where the zip archive is to be extracted</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>1500</value>
    <name>Period of time in seconds to complete extraction</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="installCLRITIfWindows" log=""
          type="com.itko.lisa.test.NoTransNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="copyCLRZip" > 

<graphx>-1</graphx>
<graphy>-1</graphy>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert147" type="com.itko.lisa.test.AssertByScript">
<log>CLR IT will not be installed because either it is Unix or CLR location is not set</log>
<then>deleteUnwantedFilesOnUnix</then>
<valueToAssertKey></valueToAssertKey>
        <script>if (com.itko.util.Utilities.isWindows()) {&#13;&#10; if (clrZip != null &amp;&amp; !clrZip.equals(&quot;&quot;))&#13;&#10;  return true;&#13;&#10; else // CLR location not set -&gt; no CLR IT&#13;&#10;  return false;&#13;&#10;}&#13;&#10;// unix -&gt; no CLR IT&#13;&#10;return false;</script>
</CheckResult>

    </Node>


    <Node name="copyCLRZip" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="unzipCLR" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
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
    <value>{{=clrZip.replace(&apos;\\&apos;,&apos;/&apos;)}}</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{tmpDir}}/amxinstaller/clr.zip</value>
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
        <valueToFilterKey>lisa.copyCLRZip.rsp</valueToFilterKey>
      <prop>clrZip2</prop>
      </Filter>

    </Node>


    <Node name="unzipCLR" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deleteUnwantedFilesOnWindows" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
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
    <value>{{clrZip2}}</value>
    <name>Path of the zip archive to be extracted</name>
    </Parameter>
    <Parameter>
    <key>destinationFolder</key>
    <value>{{tmpDir}}/amxinstaller/unzip</value>
    <name>Path of the folder where the zip archive is to be extracted</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>1500</value>
    <name>Period of time in seconds to complete extraction</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deleteUnwantedFilesOnWindows" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="unzipAmx" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/DeleteFilesWithExtension.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>extension</key>
    <value>.exe</value>
    <name>required - extension of file e.g &quot;.exe&quot;</name>
    </Parameter>
    <Parameter>
    <key>folder</key>
    <value>{{tmpDir}}/amxinstaller/unzip</value>
    <name>required - folder to search</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deleteUnwantedFilesOnUnix" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="unzipAmx" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/DeleteFilesWithExtension.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>extension</key>
    <value>.bin</value>
    <name>required - extension of file e.g &quot;.exe&quot;</name>
    </Parameter>
    <Parameter>
    <key>folder</key>
    <value>{{tmpDir}}/amxinstaller/unzip</value>
    <name>required - folder to search</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="unzipAmx" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="copyAmxSilentFile" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
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
    <key>fileIn</key>
    <value>{{LISA_TC_PATH}}/TIBCOUniversalInstallerAmx.silent.template</value>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
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
          next="verifyCPPHomeExists" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
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


    <Node name="verifyCPPHomeExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifyAdapterHomeExists" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
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
    <value>{{TIBCO_HOME}}/amx_it_cpp</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert280" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find CPP folder after install</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="verifyAdapterHomeExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifyEJBHomeExists" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
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
    <value>{{TIBCO_HOME}}/amx_bt_adapter</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert281" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find Adapter folder after install</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="verifyEJBHomeExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="checkPostInstallTasks" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
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
    <value>{{TIBCO_HOME}}/amx_bt_ejb</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert282" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find EJB folder after install</log>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation>Return the the list of post-install errors or false otherwise.</Documentation>
<onerror>fail</onerror>
<script>import java.io.FilenameFilter;&#13;&#10;import java.io.File;&#13;&#10;&#13;&#10;// Define the filter to get the post-install errors only&#13;&#10;FilenameFilter AntTaskFilter = new FilenameFilter() {&#13;&#10; boolean accept(File dir, String name) {&#13;&#10;  return name.toLowerCase().contains(antTaskBaseError);&#13;&#10; }&#13;&#10;};&#13;&#10;&#13;&#10;File dir = new File(testExec.parseInState(tibco_test_case_log_dir));&#13;&#10;String [] listAntTaskError = dir.list(AntTaskFilter);&#13;&#10;&#13;&#10;String listError = &quot;&quot;;&#13;&#10;if (listAntTaskError.length == 0)&#13;&#10; listError = &quot;false&quot;;&#13;&#10;else {&#13;&#10; listError = &quot;Post-Install Task Errors: \n&quot;;&#13;&#10; for (int i=0; i&lt;listAntTaskError.length; i++) {&#13;&#10;  listError = listError + &quot;\n&quot; + listAntTaskError[i];&#13;&#10; }&#13;&#10;}&#13;&#10;&#13;&#10;return listError;</script>

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


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
    </Node>


</TestCase>
