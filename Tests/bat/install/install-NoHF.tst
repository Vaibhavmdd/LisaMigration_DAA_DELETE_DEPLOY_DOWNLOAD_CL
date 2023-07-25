<?xml version="1.0" ?>

<TestCase name="install-NoHF" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/14/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/02/2022" host="na2devasgaks01" />
</meta>

<id>98d71d84</id>
<Documentation>Suite installation in silent mode of:&#13;&#10;- AMX SG&#13;&#10;- CPP IT&#13;&#10;- Adapter BT&#13;&#10;- EJB BT&#13;&#10;- CLR IT (if Windows)&#13;&#10;Then install AMX HF on top of it in silent mode.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPS0xNDE5ODg1MDU5</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="killTIBCOHost" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="98d71d84-killTIBCOHost" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="killSystemNode" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
          uid="98d71d84-killSystemNode" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="killNode1" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
          uid="98d71d84-killNode1" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="killNode2" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
          uid="98d71d84-killNode2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="getInstallShieldRegistry" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
          uid="98d71d84-getInstallShieldRegistry" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="deleteInstallShieldRegistry" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getInstallShieldRegistry.rsp</valueToFilterKey>
      <prop>installShieldRegistry</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.io.File;&#13;&#10;&#13;&#10;if (com.itko.util.Utilities.isWindows()) {&#13;&#10;    File pf = new File(installShieldRegistryOnWindows64);&#13;&#10;    if (pf.exists())&#13;&#10;        return installShieldRegistryOnWindows64;&#13;&#10;    else&#13;&#10;        return installShieldRegistryOnWindows;&#13;&#10;}&#13;&#10;else &#13;&#10;    return installShieldRegistryOnUnix;&#13;&#10;</script>
    </Node>


    <Node name="deleteInstallShieldRegistry" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="98d71d84-deleteInstallShieldRegistry" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="cleanUpTIBCOEnvRegistry" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/DeleteFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
          uid="98d71d84-cleanUpTIBCOEnvRegistry" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="deleteTibcoConfigHome" > 

<Documentation>This is to satisfy Universal Installer 2.9 which put data in {{user.home}}/.TIBCOEnvInfo/_envInfo.xml&#13;&#10;We go into that file and remove the entry with the current TIBCO_HOME</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/RemoveNodeInXmlFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
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
          uid="98d71d84-deleteTibcoConfigHome" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="deleteTibcoHome" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/DeleteFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
          uid="98d71d84-deleteTibcoHome" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="deleteAmxInstaller" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/DeleteFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
          uid="98d71d84-deleteAmxInstaller" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="copyAmxZip" > 

<Documentation>Delete previous Amx installer if any.</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/DeleteFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
          uid="98d71d84-copyAmxZip" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="unzipAmx" > 

<Documentation>Copy zip locally</Documentation>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.copyAmxZip.rsp</valueToFilterKey>
      <prop>amxZip2</prop>
      </Filter>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CopyFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
    </Node>


    <Node name="unzipAmx" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="98d71d84-unzipAmx" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="copyAmxSilentFile" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/ExtractZipArchive.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
          uid="98d71d84-copyAmxSilentFile" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="configureSilentFile" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.copyAmxSilentFile.rsp</valueToFilterKey>
      <prop>amxSilentFile</prop>
      </Filter>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CopyFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
    </Node>


    <Node name="configureSilentFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="98d71d84-configureSilentFile" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="installAmx" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/install/ConfigureAMXSilentFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
          uid="98d71d84-installAmx" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="verifyTibcoHomeExists" > 

<Subprocess>C:\Lisa1072\Projects\Analyze5.1BATTC\Tests\libraries\common\com\tibco\lisa\install\Install.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
          uid="98d71d84-verifyTibcoHomeExists" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="verifyTibcoAmxHomeExists" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert94" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find {{TIBCO_HOME}} after install</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
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
    <value>{{TIBCO_HOME}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="verifyTibcoAmxHomeExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="98d71d84-verifyTibcoAmxHomeExists" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="verifyTibcoAmxAdminHomeExists" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert318" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find {{TIBCO_AMX_HOME}} after install</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
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
    <value>{{TIBCO_AMX_HOME}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="verifyTibcoAmxAdminHomeExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="98d71d84-verifyTibcoAmxAdminHomeExists" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="verifyTibcoBSHomeExists" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert218" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find {{TIBCO_AMXADMIN_HOME}} after install</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
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
    <value>{{TIBCO_AMXADMIN_HOME}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="verifyTibcoBSHomeExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="98d71d84-verifyTibcoBSHomeExists" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="verifyTibcoHostHomeExists" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert280" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find {{TIBCO_BS_HOME}} after install</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
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
    <value>{{TIBCO_BS_HOME}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="verifyTibcoHostHomeExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="98d71d84-verifyTibcoHostHomeExists" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="verifyTibcoJREExists" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert941" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find {{TIBCO_HOST_HOME}} after install</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
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
    <value>{{TIBCO_HOST_HOME}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="verifyTibcoJREExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="98d71d84-verifyTibcoJREExists" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="verifyMediationHomeExists" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert942" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find {{TIBCO_JAVA_HOME}} after install</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
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
    <value>{{TIBCO_JAVA_HOME}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="verifyMediationHomeExists" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="98d71d84-verifyMediationHomeExists" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert280" type="com.itko.lisa.test.CheckResultContains">
<log>Could not find Mediation folder after install</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
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
    <value>{{TIBCO_HOME}}/amx_it_mediation</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="checkPostInstallTasks" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="98d71d84-checkPostInstallTasks" 
          think="0" 
          useFilters="false" 
          quiet="false" 
          next="end" > 

<Documentation>Return the the list of post-install errors or false otherwise.</Documentation>

      <!-- Assertions -->
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

<onerror>abort</onerror>
<script>import java.io.FilenameFilter;&#13;&#10;import java.io.File;&#13;&#10;&#13;&#10;// Define the filter to get the post-install errors only&#13;&#10;FilenameFilter AntTaskFilter = new FilenameFilter() {&#13;&#10; boolean accept(File dir, String name) {&#13;&#10;  return name.toLowerCase().contains(antTaskBaseError);&#13;&#10; }&#13;&#10;};&#13;&#10;&#13;&#10;File dir = new File(testExec.parseInState(tibco_test_case_log_dir));&#13;&#10;String [] listAntTaskError = dir.list(AntTaskFilter);&#13;&#10;&#13;&#10;String listError = &quot;&quot;;&#13;&#10;if (listAntTaskError.length == 0)&#13;&#10; listError = &quot;false&quot;;&#13;&#10;else {&#13;&#10; listError = &quot;Post-Install Task Errors: \n&quot;;&#13;&#10; for (int i=0; i&lt;listAntTaskError.length; i++) {&#13;&#10;  listError = listError + &quot;\n&quot; + listAntTaskError[i];&#13;&#10; }&#13;&#10;}&#13;&#10;&#13;&#10;return listError;</script>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="6FFC0BA3640011EDB639506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="98d71d84-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="98d71d84-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
