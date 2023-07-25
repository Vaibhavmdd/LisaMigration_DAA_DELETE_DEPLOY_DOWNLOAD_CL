<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Tue Sep 11 16:31:08 PDT 2012 -->


<TestCase name="UpgradeTibcoHost" version="2">
<id>10e34bf4</id>
<Documentation>Upgrades Tibcohost from 3.1.2 to higher version.&#13;&#10;</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTg2NjE0OTc1Mw==</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>upgradeScriptsPath</key>
    <value>{{TIBCO_HOME}}/amx/&lt;amx_version&gt;/scripts/upgrade/&lt;upgrade_to_folder&gt;</value>
    <name>upgrade scripts location</name>
    </Parameter>
    <Parameter>
    <key>hostLogFile</key>
    <value>{{tibco.test.suite.log.dir}}/setup/tibcohost.log</value>
    <name>TIBCOHost log file to monitor for start / stop</name>
    </Parameter>
    <Parameter>
    <key>antLogFile</key>
    <value>{{tibco.test.case.log.dir}}/upgradeHost-{{tibcoInstanceName}}.log</value>
    <name>antLogFilefor upgrade output</name>
    </Parameter>
    <Parameter>
    <key>propFile</key>
    <value></value>
    <name>Absolute path to property file. Optional. If set, upgrade paramaters are ignored.</name>
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
    <key>unattened</key>
    <value>true</value>
    <name>Flag to run upgrade scripts without any manual intervention</name>
    </Parameter>
    <Parameter>
    <key>forceNoBackup</key>
    <value>true</value>
    <name>force backup flag</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>120</value>
    <name>Wait for a number of seconds before giving up on TIBCOHost</name>
    </Parameter>
    <Parameter>
    <key>propertyFileLocation</key>
    <value>{{tibco.test.case.log.dir}}</value>
    <name>folder for host properties file</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>adminURL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>clrZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hibernateDialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>installTempDir</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndihost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.buildPropFileContent.rsp</key>
    <value>Set in Step buildPropFileContent</value>
    </Parameter>
    <Parameter>
    <key>lisa.buildPropFileContent.rsp.time</key>
    <value>Set in Step buildPropFileContent</value>
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
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.writePropFile.rsp</key>
    <value>Set in Step writePropFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.writePropFile.rsp.time</key>
    <value>Set in Step writePropFile</value>
    </Parameter>
    <Parameter>
    <key>thPropFileContent</key>
    <value>Set in Step buildPropFileContent</value>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyInputVariables.rsp</key>
    <value>Set in Step verifyInputVariables</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyInputVariables.rsp.time</key>
    <value>Set in Step verifyInputVariables</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkPropFile.rsp</key>
    <value>Set in Step checkPropFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkPropFile.rsp.time</key>
    <value>Set in Step checkPropFile</value>
    </Parameter>
    <Parameter>
    <key>thPropFile</key>
    <value>Set in Step checkPropFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingSleep.rsp</key>
    <value>Set in Step repeatingSleep</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingSleep.rsp.time</key>
    <value>Set in Step repeatingSleep</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingCheckLogFileExists.rsp</key>
    <value>Set in Step repeatingCheckLogFileExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingCheckLogFileExists.rsp.time</key>
    <value>Set in Step repeatingCheckLogFileExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.timeout.rsp</key>
    <value>Set in Step timeout</value>
    </Parameter>
    <Parameter>
    <key>lisa.timeout.rsp.time</key>
    <value>Set in Step timeout</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingReadLog.rsp</key>
    <value>Set in Step repeatingReadLog</value>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingReadLog.rsp.time</key>
    <value>Set in Step repeatingReadLog</value>
    </Parameter>
    <Parameter>
    <key>antLogContent</key>
    <value>Set in Step repeatingReadLog</value>
    </Parameter>
    <Parameter>
    <key>lisa.failure.rsp</key>
    <value>Set in Step failure</value>
    </Parameter>
    <Parameter>
    <key>lisa.failure.rsp.time</key>
    <value>Set in Step failure</value>
    </Parameter>
    <Parameter>
    <key>lisa.StartTIBCOHost.rsp</key>
    <value>Set in Step StartTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.StartTIBCOHost.rsp.time</key>
    <value>Set in Step StartTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.UpgradeTIBCOHost.rsp</key>
    <value>Set in Step UpgradeTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.UpgradeTIBCOHost.rsp.time</key>
    <value>Set in Step UpgradeTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.getTimeLimit.rsp</key>
    <value>Set in Step getTimeLimit</value>
    </Parameter>
    <Parameter>
    <key>lisa.getTimeLimit.rsp.time</key>
    <value>Set in Step getTimeLimit</value>
    </Parameter>
    <Parameter>
    <key>lisa.success.rsp.time</key>
    <value>Set in Step success</value>
    </Parameter>
    <Parameter>
    <key>lisa.success.rsp</key>
    <value>Set in Step success</value>
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
    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifyInputVariables" > 

<graphx>10</graphx>
<graphy>10</graphy>
      <log>Upgrading TIBCOHost from upgrade script location - {{upgradeScriptsPath}}</log>
    </Node>


    <Node name="verifyInputVariables" log="This step verifies the input variables for the invokeAnt subprocess."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="checkPropFile" > 

<graphx>778</graphx>
<graphy>10</graphy>
<onerror>fail</onerror>
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.FileReader;&#13;&#10;import java.io.InputStream;&#13;&#10;import java.io.OutputStream;&#13;&#10;import java.io.PrintStream;&#13;&#10;import java.util.Enumeration;&#13;&#10;import java.util.Properties;&#13;&#10;import java.util.Set;&#13;&#10;&#13;&#10;String checkInputVariables() {&#13;&#10;&#9;&#9;String response = &quot;Fail:&quot;;&#13;&#10;&#9;&#9;try {&#13;&#10;&#13;&#10;            if (antLogFile.equals(&quot;&quot;))&#13;&#10;                return errorMsg + &quot;: Log file is required.&quot;;&#13;&#10;&#13;&#10;&#9;&#9;&#9;File upgradeScriptsPath = null;&#13;&#10;&#9;&#9;&#9;if ((upgradeScriptsPath != null) &amp;&amp; (!upgradeScriptsPath.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;&#9;&#9;upgradeScriptsPath = new File(testExec.parseInState(upgradeScriptsPath).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;&#9;&#9;&#9;&#9;if((!upgradeScriptsPath.exists()) || (!upgradeScriptsPath.isDirectory())) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;throw new Exception(&quot;The upgrade script directory is not valid : &quot;+ upgradeScriptsPath);&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#13;&#10;            if ((propFile == null) || (propFile.equals(&quot;&quot;)) ){&#13;&#10;&#13;&#10;                if ((enterpriseName == null) || (enterpriseName.equals(&quot;&quot;)) ) {&#13;&#10;        &#9;&#9;&#9;throw new Exception(&quot;enterpriseName cannot be null.&quot;);&#13;&#10;            &#9;}&#13;&#10;           &#13;&#10;                if ((tibcoInstanceName == null) || (tibcoInstanceName.equals(&quot;&quot;)) ) {&#13;&#10;                    throw new Exception(&quot;tibcoInstanceName cannot be null.&quot;);&#13;&#10;                }&#13;&#10;&#13;&#10;                if ((adminServerName == null) || (adminServerName.equals(&quot;&quot;)) ) {&#13;&#10;                    throw new Exception(&quot;adminServerName cannot be null.&quot;);&#13;&#10;                }&#13;&#10;&#13;&#10;                if ((tibcoConfigHome == null) || (tibcoConfigHome.equals(&quot;&quot;)) ) {&#13;&#10;                    throw new Exception(&quot;tibcoConfigHome cannot be null.&quot;);&#13;&#10;                }&#13;&#10;            } else {&#13;&#10;                // check for the property file existence&#13;&#10;&#13;&#10;                File propertyFile = null;&#13;&#10;                if ((propFile != null) &amp;&amp; (!propFile.equals(&quot;&quot;))) {&#13;&#10;                    propertyFile = new File(testExec.parseInState(propFile).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;                }    &#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;                if (!propertyFile.canRead()) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;throw new Exception(&quot;Property file not found/cannot read it. &quot;+propFile);&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;                if (!propertyFile.isFile()) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;throw new Exception(&quot;property file is not a normal file. &quot;+propFile);&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#13;&#10;            &#13;&#10;            // Let&apos;s also verify if TIBCO_JAVA_HOME exists since we use that to launch Ant&#13;&#10;            File javaHome = new File(testExec.parseInState(TIBCO_JAVA_HOME).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;            if (!javaHome.exists()) {&#13;&#10;                throw new Exception(&quot;Java home directory is not valid: &quot; + TIBCO_JAVA_HOME);&#13;&#10;            }&#13;&#10;&#13;&#10;&#9;&#9;&#9;response = &quot;Pass: Input variables are valid.&quot;;&#13;&#10;&#13;&#10;&#9;&#9;}catch(Exception e) {&#13;&#10;&#9;&#9;&#9;response = &quot;Fail: &quot;+e.getLocalizedMessage();&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;return response;&#13;&#10;&#9;}&#13;&#10;&#13;&#10;return checkInputVariables();</script>

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


    <Node name="checkPropFile" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="startTIBCOHost" > 

<graphx>130</graphx>
<graphy>130</graphy>
<onerror>fail</onerror>
<script>if (propFile.equals(&quot;&quot;))&#13;&#10;    return true;&#13;&#10;else&#13;&#10;    return testExec.parseInState(propFile).replace(&quot;\\&quot;,&quot;/&quot;);</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.checkPropFile.rsp</valueToFilterKey>
      <prop>thPropFile</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert181" type="com.itko.lisa.test.CheckResultContains">
<log>Prop file is not set. Let&apos;s create it...</log>
<then>buildPropFileContent</then>
<valueToAssertKey></valueToAssertKey>
        <param>true</param>
</CheckResult>

    </Node>


    <Node name="buildPropFileContent" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="writePropFile" > 

<graphx>610</graphx>
<graphy>610</graphy>
<onerror>fail</onerror>
<script>str = &quot;&quot;;&#13;&#10;str = str + &quot;enterprise.name=&quot; + testExec.parseInState(enterpriseName.toString()) + line_separator;&#13;&#10;str = str + &quot;tibcohost.instance.name=&quot; + testExec.parseInState(tibcoInstanceName.toString()) + line_separator;&#13;&#10;str = str + &quot;admin.server.name=&quot; + testExec.parseInState(adminServerName.toString()) + line_separator;&#13;&#10;str = str + &quot;tibco.config.mgmt.home=&quot; + testExec.parseInState(tibcoConfigHome.toString()).replace(&apos;\\&apos;, &apos;/&apos;) + line_separator;&#13;&#10;str = str + &quot;unattended=&quot; + testExec.parseInState(unattened.toString()) + line_separator;&#13;&#10;str = str + &quot;force.no.backup=&quot; + testExec.parseInState((forceNoBackup).toString()) + line_separator;&#13;&#10;return str;&#13;&#10;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.buildPropFileContent.rsp</valueToFilterKey>
      <prop>thPropFileContent</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="writePropFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="startTIBCOHost" > 

<graphx>730</graphx>
<graphy>730</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/WriteFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{propertyFileLocation}}/upgrade-host-{{tibcoInstanceName}}.properties</value>
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
    <value></value>
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

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.writePropFile.rsp</valueToFilterKey>
      <prop>thPropFile</prop>
      </Filter>

    </Node>


    <Node name="startTIBCOHost" log="Re-start TIBCO Host"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="UpgradeTIBCOHost" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/tibcohost/StartTibcoHost.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>host</key>
    <value>{{LISA_HOST}}</value>
    <name>Host on which the TIBCOHost should be started</name>
    </Parameter>
    <Parameter>
    <key>tibcoHostinstance</key>
    <value>{{tibcoConfigHome}}/tibcohost/{{tibcoInstanceName}}/host</value>
    <name>TIBCOHost instance directory. If host is remote, specify the TIBCOHost instance location on remote host.</name>
    </Parameter>
    <Parameter>
    <key>logFile</key>
    <value>{{hostLogFile}}</value>
    <name>TIBCOHost log file to monitor to insure proper start-up</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>300</value>
    <name>Max number of seconds to wait to allow the TIBCOHost to start</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="UpgradeTIBCOHost" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getTimeLimit" > 

<graphx>970</graphx>
<graphy>970</graphy>
<Documentation>waitForCompletion is false because this step hangs if it is true.</Documentation>
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
    <value>{{upgradeScriptsPath}}</value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{upgradeScriptsPath}}/build.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{antLogFile}}</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>upgrade-tibcohost</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value>{{thPropFile}}</value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value></value>
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
    <value>false</value>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value></value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="getTimeLimit" log="get the timelimit"
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="repeatingSleep" > 

<graphx>142</graphx>
<graphy>142</graphy>
<onerror>fail</onerror>
<script>Calendar future = Calendar.getInstance();&#13;&#10;future.add(Calendar.SECOND, timeout.intValue());&#13;&#10;testExec.setStateValue(&quot;future&quot;, future);</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>getTimeLimit step has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="repeatingSleep" log="repeat sleep"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="repeatingCheckLogFileExists" > 

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


    <Node name="repeatingCheckLogFileExists" log="check if log file got created"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="repeatingReadLog" > 

<graphx>488</graphx>
<graphy>0</graphy>
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
    <value>{{antLogFile}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert67" type="com.itko.lisa.test.AssertByScript">
<log>Upgrade host did not start on time</log>
<then>timeout</then>
<valueToAssertKey></valueToAssertKey>
        <script>future.before(Calendar.getInstance());</script>
</CheckResult>

<CheckResult assertTrue="true" name="Assert95" type="com.itko.lisa.test.CheckResultContains">
<log>{{antLogFile}} - log file not found yet...</log>
<then>repeatingSleep</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="repeatingReadLog" log="read log and look for Build Successful message"
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="repeatingSleep" > 

<graphx>674</graphx>
<graphy>37</graphy>
<Loc>{{antLogFile}}</Loc>
<PropKey></PropKey>
<onFail>fail</onFail>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.repeatingReadLog.rsp</valueToFilterKey>
      <prop>antLogContent</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert148" type="com.itko.lisa.test.CheckResultContains">
<log>Host has been upgraded successfully.</log>
<then>success</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert149" type="com.itko.lisa.test.CheckResultContains">
<log>Upgrade host failed to start</log>
<then>failure</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD FAILED</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert150" type="com.itko.lisa.test.AssertByScript">
<log>Upgrade host did not start on time</log>
<then>timeout</then>
<valueToAssertKey></valueToAssertKey>
        <script>future.before(Calendar.getInstance());</script>
</CheckResult>

    </Node>


    <Node name="determineTargetVersion" log="Determine TargetVersion for the host..."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="ValidateUpgradeHostVersion" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>String targetVersion = null;&#13;&#10;String toparse=(upgradeScriptsPath).replace(&apos;\\&apos;, &apos;/&apos;);&#13;&#10;int lastindex = toparse.lastIndexOf(&quot;-&quot;);&#13;&#10;if (lastindex != -1){&#13;&#10;    targetVersion = toparse.substring(lastindex + 1);&#13;&#10;}&#13;&#10;return targetVersion;&#13;&#10;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.determineTargetVersion.rsp</valueToFilterKey>
      <prop>targetVersion</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="ValidateUpgradeHostVersion" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="success" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<cmd>tibcohost describeHost</cmd>
<basedir>{{TIBCO_CONFIG_HOME}}/tibcohost/{{host.instance}}/host/bin</basedir>
<toNode>fail</toNode>
<exceptionNode>fail</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>true</execShell>
<env>
</env>
<exitCodes>
</exitCodes>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert313" type="com.itko.lisa.test.CheckResultContains">
<log>Target host version is : {{targetVersion}}</log>
<then>failure</then>
<valueToAssertKey></valueToAssertKey>
        <param>Host platform version: {{targetVersion}}</param>
</CheckResult>

    </Node>


    <Node name="success" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>938</graphx>
<graphy>301</graphy>
<onerror>fail</onerror>
<script>return antLogContent;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="failure" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="fail" > 

<graphx>938</graphx>
<graphy>301</graphy>
<onerror>fail</onerror>
<script>return antLogContent;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="timeout" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="timeout" > 

<graphx>938</graphx>
<graphy>674</graphy>
<onerror>fail</onerror>
<script>return &quot;TIBCOHost did not start on time.\n\n\n&quot; + antLogContent;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
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
