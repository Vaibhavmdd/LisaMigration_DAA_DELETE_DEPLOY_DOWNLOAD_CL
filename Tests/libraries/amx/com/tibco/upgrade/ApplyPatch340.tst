<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Fri Jun 21 16:09:20 PDT 2019 -->


<TestCase name="ApplyPatch340" version="2">
<id>10e34bf4</id>
<Documentation>This subprocess applies patch, cleanses admin (if required) and upgrades systemnode (if required)&#13;&#10;</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTE2OTUwMzEzOTM=</sig>
<rootNode>isPatchRequired</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>targetVersion</key>
    <value></value>
    <name>targetVersion - Required</name>
    </Parameter>
    <Parameter>
    <key>patchManagerPath</key>
    <value>{{TIBCO_HOME}}/amx/3.1</value>
    <name>Absolute path to the patch manager application</name>
    </Parameter>
    <Parameter>
    <key>logFileLocation</key>
    <value>{{tibco.test.case.log.dir}}</value>
    <name>logFileLocation</name>
    </Parameter>
    <Parameter>
    <key>propFile</key>
    <value></value>
    <name>Absolute path to property file - Optional.</name>
    </Parameter>
    <Parameter>
    <key>enterpriseName</key>
    <value>{{admin.group.name}}</value>
    <name>Enterprise name</name>
    </Parameter>
    <Parameter>
    <key>tibcoInstanceName</key>
    <value>{{host.instance}}</value>
    <name>TIBCOHost instance name</name>
    </Parameter>
    <Parameter>
    <key>adminServerName</key>
    <value>{{admin.instance.name}}</value>
    <name>Admin Server name</name>
    </Parameter>
    <Parameter>
    <key>tibcoConfigHome</key>
    <value>{{TIBCO_CONFIG_HOME}}</value>
    <name>TIBCO config home</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>600</value>
    <name>Wait for a number of seconds before giving up on TIBCOHost</name>
    </Parameter>
    <Parameter>
    <key>propertyFileLocation</key>
    <value>{{tibco.test.case.log.dir}}</value>
    <name>property file location</name>
    </Parameter>
    <Parameter>
    <key>administratorFolderVersion</key>
    <value>3.1</value>
    <name>Administrator folder version on disk</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>_site.properties</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>wizards.xml</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>_local.properties</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>reports</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>setLISA_HOME.bat</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>{{tibco.test.case.log.dir}}</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>logging.properties</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>embedded_servers</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>webreckeys.ks</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>DemoServer</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>doc</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>rmi-truststore.jks</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lib</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>.lisa.properties.lock</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>httpbrowsers.xml</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>contenttypes.xml</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bin</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>.install4j</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>rmi-keystore.jks</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>{{tmpDir}}</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>.local.properties.lock</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>derby.log</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>datePatterns.properties</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>configure.bat</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>incontainer</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>j2eeservers.xml</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>uninstall.exe</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jre</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>typemap.properties</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.properties</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>sql</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>appletviewer.policy</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>mibdefs.xml</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hotDeploy</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>examples</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>snmp</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>addons</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tmp</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>licenses</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>examples_ejb3</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.permissions</key>
    <value>Property From Config</value>
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
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.isPatchRequired.rsp.time</key>
    <value>Set in Step isPatchRequired</value>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyInputVariables.rsp.time</key>
    <value>Set in Step verifyInputVariables</value>
    </Parameter>
    <Parameter>
    <key>lisa.applyPatch.rsp</key>
    <value>Set in Step applyPatch</value>
    </Parameter>
    <Parameter>
    <key>lisa.isSystemNodeUpgradeRequired.rsp.time</key>
    <value>Set in Step isSystemNodeUpgradeRequired</value>
    </Parameter>
    <Parameter>
    <key>lisa.isPatchRequired.rsp</key>
    <value>Set in Step isPatchRequired</value>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyInputVariables.rsp</key>
    <value>Set in Step verifyInputVariables</value>
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
    <key>thPropFile</key>
    <value>Set in Step checkPropFile</value>
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
    <key>lisa.describeAvailablePatches.rsp</key>
    <value>Set in Step describeAvailablePatches</value>
    </Parameter>
    <Parameter>
    <key>lisa.describeAvailablePatches.rsp.time</key>
    <value>Set in Step describeAvailablePatches</value>
    </Parameter>
    <Parameter>
    <key>lisa.applyPatch.rsp.time</key>
    <value>Set in Step applyPatch</value>
    </Parameter>
    <Parameter>
    <key>lisa.describeAppliedPatch.rsp</key>
    <value>Set in Step describeAppliedPatch</value>
    </Parameter>
    <Parameter>
    <key>lisa.describeAppliedPatch.rsp.time</key>
    <value>Set in Step describeAppliedPatch</value>
    </Parameter>
    <Parameter>
    <key>lisa.adminDataCleanseFolder.rsp</key>
    <value>Set in Step adminDataCleanseFolder</value>
    </Parameter>
    <Parameter>
    <key>adminDataCleanseFolder</key>
    <value>Set in Step adminDataCleanseFolder</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkPropFile.rsp.time</key>
    <value>Set in Step checkPropFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.buildPropFileContent.rsp.time</key>
    <value>Set in Step buildPropFileContent</value>
    </Parameter>
    <Parameter>
    <key>lisa.writePropFile.rsp</key>
    <value>Set in Step writePropFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.cleanseAdminData.rsp</key>
    <value>Set in Step cleanseAdminData</value>
    </Parameter>
    <Parameter>
    <key>lisa.UpgradeSystemNode.rsp</key>
    <value>Set in Step UpgradeSystemNode</value>
    </Parameter>
    <Parameter>
    <key>lisa.readDescribAppliedPathLog.rsp</key>
    <value>Set in Step readDescribAppliedPathLog</value>
    </Parameter>
    <Parameter>
    <key>lisa.readDescribAppliedPathLog.rsp.time</key>
    <value>Set in Step readDescribAppliedPathLog</value>
    </Parameter>
    <Parameter>
    <key>lisa.readApplyPatchLog.rsp</key>
    <value>Set in Step readApplyPatchLog</value>
    </Parameter>
    <Parameter>
    <key>lisa.readApplyPatchLog.rsp.time</key>
    <value>Set in Step readApplyPatchLog</value>
    </Parameter>
</resultState>

<Configurations>
<Configuration>
<name>default</name>
<external>false</external>
<props>
</props>
</Configuration>
</Configurations>
    <Node name="isPatchRequired" log="This step verifies the input variables for the invokeAnt subprocess."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="log" > 

<graphx>778</graphx>
<graphy>10</graphy>
<onerror>fail</onerror>
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.FileReader;&#13;&#10;import java.io.InputStream;&#13;&#10;import java.io.OutputStream;&#13;&#10;import java.io.PrintStream;&#13;&#10;import java.util.Enumeration;&#13;&#10;import java.util.Properties;&#13;&#10;import java.util.Set;&#13;&#10;&#13;&#10;String isPatchRequired() {&#13;&#10;&#9;&#9;String response = &quot;Patch Manager is required for &quot;  + targetVersion;;&#13;&#10;&#9;&#9;&#13;&#10;        if (   (targetVersion.equals(&quot;3.1.2.HF1&quot;))  ||&#13;&#10;               (targetVersion.equals(&quot;3.1.2.HF2&quot;)) ||&#13;&#10;               (targetVersion.equals(&quot;3.1.2.HF3&quot;)) ||&#13;&#10;               (targetVersion.equals(&quot;3.1.2.HF4&quot;)) ||&#13;&#10;               (targetVersion.equals(&quot;3.1.3.HF1&quot;)) ||&#13;&#10;               (targetVersion.equals(&quot;3.1.2&quot;)) ||&#13;&#10;               (targetVersion.equals(&quot;3.1.3&quot;)) ||&#13;&#10;               (targetVersion.equals(&quot;3.1.4&quot;)) ||&#13;&#10;               (targetVersion.equals(&quot;3.1.5&quot;)) ||&#13;&#10;               (targetVersion.equals(&quot;3.2.0&quot;)) ||&#13;&#10;                (targetVersion.equals(&quot;3.2.1&quot;)) ||&#13;&#10;                (targetVersion.equals(&quot;3.3.0&quot;)) )&#13;&#10;           {&#13;&#10;        &#9;&#9;response = &quot;NotRequired: No need to run patch manager since patch Manager is not required for &quot;  + targetVersion;&#13;&#10;                return response;&#13;&#10;           }&#13;&#10;            &#13;&#10;           return response;&#13;&#10;        }&#13;&#10;&#13;&#10;return isPatchRequired();</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert147" type="com.itko.lisa.test.CheckResultRegEx">
<log>No need to run patch manager for {{targetVersion}}</log>
<then>end</then>
<valueToAssertKey></valueToAssertKey>
        <param>NotRequired:.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifyInputVariables" > 

<graphx>10</graphx>
<graphy>10</graphy>
      <log>Applying Patch for : &#13;&#10;&#13;&#10;AmxVersion : {{targetVersion}}&#13;&#10;EnterpriseName : {{admin.group.name}}&#13;&#10;AdminServerName : {{admin.instance.name}}&#13;&#10;SystemNode : SystemNode&#13;&#10;HostInstanceName : {{host.instance}}&#13;&#10;ConfigHome : {{TIBCO_CONFIG_HOME}}&#13;&#10;&#13;&#10;</log>
    </Node>


    <Node name="verifyInputVariables" log="This step verifies the input variables for the invokeAnt subprocess."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="stopTIBCOHost" > 

<graphx>778</graphx>
<graphy>10</graphy>
<onerror>fail</onerror>
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.FileReader;&#13;&#10;import java.io.InputStream;&#13;&#10;import java.io.OutputStream;&#13;&#10;import java.io.PrintStream;&#13;&#10;import java.util.Enumeration;&#13;&#10;import java.util.Properties;&#13;&#10;import java.util.Set;&#13;&#10;&#13;&#10;String checkInputVariables() {&#13;&#10;&#9;&#9;String response = &quot;Fail:&quot;;&#13;&#10;&#9;&#9;try {&#13;&#10;&#13;&#10;           if (    (targetVersion.equals(&quot;3.1.2&quot;)) ||&#13;&#10;                   (targetVersion.equals(&quot;3.1.2.HF1&quot;))  ||&#13;&#10;                   (targetVersion.equals(&quot;3.1.2.HF2&quot;)) ||&#13;&#10;                   (targetVersion.equals(&quot;3.1.2.HF3&quot;)) ||&#13;&#10;                   (targetVersion.equals(&quot;3.1.2.HF4&quot;)) ||&#13;&#10;                   (targetVersion.equals(&quot;3.1.3.HF1&quot;)) ||&#13;&#10;                   (targetVersion.equals(&quot;3.1.3&quot;)) ||&#13;&#10;                   (targetVersion.equals(&quot;3.1.4&quot;)) ||&#13;&#10;                   (targetVersion.equals(&quot;3.1.5&quot;)) )&#13;&#10;            {&#13;&#10;                 response = &quot;No need to run Patch manager for &quot; + targetVersion;&#13;&#10;                 return response;&#13;&#10;            }  &#13;&#10;    &#13;&#10;           if (logFileLocation.equals(&quot;&quot;))&#13;&#10;                return errorMsg + &quot;: Log file is required.&quot;;   &#13;&#10;&#13;&#10;&#9;&#9;&#9;File patchManagerPath = null;&#13;&#10;&#9;&#9;&#9;if ((patchManagerPath != null) &amp;&amp; (!patchManagerPath.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;&#9;&#9;patchManagerPath = new File(testExec.parseInState(patchManagerPath).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;&#9;&#9;&#9;&#9;if((!patchManagerPath.exists()) || (!patchManagerPath.isDirectory())) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;throw new Exception(&quot;The path to patch manager executable is not valid. &quot;+ patchManagerPath);&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#13;&#10;            if ((propFile == null) || (propFile.equals(&quot;&quot;)) ){&#13;&#10;&#13;&#10;                if ((enterpriseName == null) || (enterpriseName.equals(&quot;&quot;)) ) {&#13;&#10;        &#9;&#9;&#9;throw new Exception(&quot;enterpriseName cannot be null.&quot;);&#13;&#10;            &#9;}&#13;&#10;           &#13;&#10;                if ((tibcoInstanceName == null) || (tibcoInstanceName.equals(&quot;&quot;)) ) {&#13;&#10;                    throw new Exception(&quot;tibcoInstanceName cannot be null.&quot;);&#13;&#10;                }&#13;&#10;                &#13;&#10;                if ((adminServerName == null) || (adminServerName.equals(&quot;&quot;)) ) {&#13;&#10;                    throw new Exception(&quot;adminServerName cannot be null.&quot;);&#13;&#10;                }&#13;&#10;&#13;&#10;                if ((tibcoConfigHome == null) || (tibcoConfigHome.equals(&quot;&quot;)) ) {&#13;&#10;                    throw new Exception(&quot;tibcoConfigHome cannot be null.&quot;);&#13;&#10;                }&#13;&#10;    &#13;&#10;            } else {&#13;&#10;                // check for the property file existence&#13;&#10;&#13;&#10;                File propertyFile = null;&#13;&#10;                if ((propFile != null) &amp;&amp; (!propFile.equals(&quot;&quot;))) {&#13;&#10;                    propertyFile = new File(testExec.parseInState(propFile).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;                }    &#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;                if (!propertyFile.canRead()) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;throw new Exception(&quot;Property file not found/cannot read it. &quot;+propFile);&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;                if (!propertyFile.isFile()) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;throw new Exception(&quot;property file is not a normal file. &quot;+propFile);&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#13;&#10;            // Let&apos;s also verify if TIBCO_JAVA_HOME exists since we use that to launch Ant&#13;&#10;            File javaHome = new File(testExec.parseInState(TIBCO_JAVA_HOME).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;            if (!javaHome.exists()) {&#13;&#10;                throw new Exception(&quot;Java home directory is not valid: &quot; + TIBCO_JAVA_HOME);&#13;&#10;            }&#13;&#10;&#13;&#10;&#9;&#9;&#9;response = &quot;Pass: Input variables are valid.&quot;;&#13;&#10;&#13;&#10;&#9;&#9;}catch(Exception e) {&#13;&#10;&#9;&#9;&#9;response = &quot;Fail: &quot;+e.getLocalizedMessage();&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;return response;&#13;&#10;&#9;}&#13;&#10;&#13;&#10;return checkInputVariables();</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert147" type="com.itko.lisa.test.CheckResultRegEx">
<log>Input parameters incorrect</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Fail:.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="stopTIBCOHost" log="Stop TIBCO Host with Mode=normal and Wait=true"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="wait" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Documentation>Stop TIBCO Host in normal mode with wait set to true (synchronized call):&#13;&#10;TIBCO Host is supposed to wait for all the nodes to shutdown before it terminates.</Documentation>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/tibcohost/StopTibcoHost.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>wait</onFail>
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
    <value>immediate</value>
    <name>Stop mode used for stopping the node (normal - immediate - abort). Default is normal.</name>
    </Parameter>
    <Parameter>
    <key>wait</key>
    <value>true</value>
    <name>If set to true the wait becomes synchronous and only returns when all node processes were stopped. Default is false</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>12000</value>
    <name>Max number of seconds to wait to allow the TIBCOHost to stop</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="wait" log="repeat sleep"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="describeAvailablePatches" > 

<graphx>301</graphx>
<graphy>37</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>10</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>10</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="describeAvailablePatches" log="Start the tibcohost."
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="applyPatch" > 

<graphx>37</graphx>
<graphy>301</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/JVMWrapper.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>wrapperName</key>
    <value>{{patchManagerPath}}/bin/tibamx_hostmanager</value>
    <name>Absolute path to the wrapper application</name>
    </Parameter>
    <Parameter>
    <key>command</key>
    <value></value>
    <name>One of the following command switches: --install, --uninstall, --update, --start, --stop, --run</name>
    </Parameter>
    <Parameter>
    <key>propFile</key>
    <value>{{patchManagerPath}}/bin/tibamx_hostmanager.tra</value>
    <name>Absolute path to the tra file used to launch the wrapper</name>
    </Parameter>
    <Parameter>
    <key>extraCommand</key>
    <value>describeAvailablePatches</value>
    <name>Extra command a specific wrapper might need</name>
    </Parameter>
    <Parameter>
    <key>startInDir</key>
    <value>{{patchManagerPath}}/bin</value>
    <name>Execute from directory</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>true</value>
    <name>Wait for the command to complete (true or false)</name>
    </Parameter>
    <Parameter>
    <key>waitBeforeOnWindows</key>
    <value>0</value>
    <name>Number of seconds to sleep on Windows platforms before starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitBeforeOnUnix</key>
    <value>0</value>
    <name>Number of seconds to sleep on Unix platforms before starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitAfterOnWindows</key>
    <value>300</value>
    <name>Number of seconds to sleep on Windows platforms after starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitAfterOnUnix</key>
    <value>20</value>
    <name>Number of seconds to sleep on Unix platforms after starting the JVM wrapper</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for AvaliablePatch" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos; {{targetVersion}}&apos; in describeAvailablePatches response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{targetVersion}}</param>
</CheckResult>

<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="applyPatch" log="Start the tibcohost."
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="readApplyPatchLog" > 

<graphx>37</graphx>
<graphy>301</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/JVMWrapper.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>wrapperName</key>
    <value>{{patchManagerPath}}/bin/tibamx_hostmanager</value>
    <name>Absolute path to the wrapper application</name>
    </Parameter>
    <Parameter>
    <key>command</key>
    <value></value>
    <name>One of the following command switches: --install, --uninstall, --update, --start, --stop, --run</name>
    </Parameter>
    <Parameter>
    <key>propFile</key>
    <value>{{patchManagerPath}}/bin/tibamx_hostmanager.tra</value>
    <name>Absolute path to the tra file used to launch the wrapper</name>
    </Parameter>
    <Parameter>
    <key>extraCommand</key>
    <value>applyPatch -nonInteractive  -configHomeLocation {{tibcoConfigHome}} -instanceName {{tibcoInstanceName}} -ID amx.platform.patch:{{targetVersion}} -logFile {{logFileLocation}}/{{targetVersion}}-applyPatch.log</value>
    <name>Extra command a specific wrapper might need</name>
    </Parameter>
    <Parameter>
    <key>startInDir</key>
    <value>{{patchManagerPath}}/bin</value>
    <name>Execute from directory</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>true</value>
    <name>Wait for the command to complete (true or false)</name>
    </Parameter>
    <Parameter>
    <key>waitBeforeOnWindows</key>
    <value>0</value>
    <name>Number of seconds to sleep on Windows platforms before starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitBeforeOnUnix</key>
    <value>0</value>
    <name>Number of seconds to sleep on Unix platforms before starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitAfterOnWindows</key>
    <value>300</value>
    <name>Number of seconds to sleep on Windows platforms after starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitAfterOnUnix</key>
    <value>300</value>
    <name>Number of seconds to sleep on Unix platforms after starting the JVM wrapper</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="readApplyPatchLog" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="describeAppliedPatch" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Documentation>Skipped. The string in this assertion was moved to TRACE level so it does not show up in BAT (no TRACE level).</Documentation>
<remoteServer>local</remoteServer>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{logFileLocation}}/{{targetVersion}}-applyPatch.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>UTF-8</value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for ApplyPatch11" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;Applying patch to TIBCO Host instance&apos; in applyPatch response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Applying patch to TIBCO Host instance</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for ApplyPatch2" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos; Successfully applied patch&apos; in applyPatch response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Successfully applied patch amx.platform.patch:{{targetVersion}} to TIBCO Host instance</param>
</CheckResult>

    </Node>


    <Node name="describeAppliedPatch" log="Start the tibcohost."
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="readDescribAppliedPathLog" > 

<graphx>37</graphx>
<graphy>301</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/JVMWrapper.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>wrapperName</key>
    <value>{{patchManagerPath}}/bin/tibamx_hostmanager</value>
    <name>Absolute path to the wrapper application</name>
    </Parameter>
    <Parameter>
    <key>command</key>
    <value></value>
    <name>One of the following command switches: --install, --uninstall, --update, --start, --stop, --run</name>
    </Parameter>
    <Parameter>
    <key>propFile</key>
    <value>{{patchManagerPath}}/bin/tibamx_hostmanager.tra</value>
    <name>Absolute path to the tra file used to launch the wrapper</name>
    </Parameter>
    <Parameter>
    <key>extraCommand</key>
    <value>describeAppliedPatches -configHomeLocation {{tibcoConfigHome}} -instanceName {{tibcoInstanceName}} -logFile {{logFileLocation}}/{{targetVersion}}-describeAppliedPatch.log</value>
    <name>Extra command a specific wrapper might need</name>
    </Parameter>
    <Parameter>
    <key>startInDir</key>
    <value>{{patchManagerPath}}/bin</value>
    <name>Execute from directory</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>true</value>
    <name>Wait for the command to complete (true or false)</name>
    </Parameter>
    <Parameter>
    <key>waitBeforeOnWindows</key>
    <value>0</value>
    <name>Number of seconds to sleep on Windows platforms before starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitBeforeOnUnix</key>
    <value>0</value>
    <name>Number of seconds to sleep on Unix platforms before starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitAfterOnWindows</key>
    <value>300</value>
    <name>Number of seconds to sleep on Windows platforms after starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitAfterOnUnix</key>
    <value>20</value>
    <name>Number of seconds to sleep on Unix platforms after starting the JVM wrapper</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="readDescribAppliedPathLog" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Documentation>Skipped. The string in this assertion was moved to TRACE level so it does not show up in BAT (no TRACE level).</Documentation>
<remoteServer>local</remoteServer>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{logFileLocation}}/{{targetVersion}}-describeAppliedPatch.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>UTF-8</value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for ApplyPatch2" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;Patch Id [amx.platform.patch:{{targetVersion}}]:&apos; in applyPatch response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param> Patch Id [amx.platform.patch:{{targetVersion}}]:</param>
</CheckResult>

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>1090</graphx>
<graphy>1090</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>1210</graphx>
<graphy>1210</graphy>
    </Node>


</TestCase>
