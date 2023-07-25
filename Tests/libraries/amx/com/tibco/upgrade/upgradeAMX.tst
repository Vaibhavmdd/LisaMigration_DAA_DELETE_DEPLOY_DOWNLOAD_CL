<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Wed Feb 19 14:50:55 PST 2014 -->


<TestCase name="upgradeAMX" version="2">
<id>a1d828a5</id>
<Documentation>Description :   Subprocess to upgrade TibcoHost, SystemHost and Nodes. Subprocess requires a targetVersion to upgrade to. &#13;&#10;                e.g : 3.1.2.HF4 , 3.1.3, 3.1.3.HF1    &#13;&#10;                It also applies patch manager if needed.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTIxMDc5OTQ2MDc=</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>targetVersion</key>
    <value></value>
    <name>target upgrade version - Required</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.httpconnector1.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>UnDeclaredFaultCondition</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.httpconnector1.host</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployApp.rsp</key>
    <value>Set in Step deployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployApp.rsp.time</key>
    <value>Set in Step deployApp</value>
    </Parameter>
    <Parameter>
    <key>tenDataSor</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwport1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>smtpPort</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>connFacName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwhost1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tenInhMap</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.node2.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>ldapPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>portssl1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hibDataSor</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>connFacConfName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port4</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwportssl1</key>
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
    <key>tibco.amx.datafile.template</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hibSchemaGen</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>ldapProUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>smtpHost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jdbcUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>g11n</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jdbcUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>ldapUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jdbcPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.instance.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tenSchemaGen</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.node1.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>smtpPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emspwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tenDialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.datafile</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jdbcDriver</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>destConfName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>destName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>smtpUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hibDialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step1.rsp</key>
    <value>Set in Step Step1</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step1.rsp.time</key>
    <value>Set in Step Step1</value>
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
    <key>lisa.evaluateAmxFolderVersion.rsp</key>
    <value>Set in Step evaluateAmxFolderVersion</value>
    </Parameter>
    <Parameter>
    <key>lisa.evaluateAmxFolderVersion.rsp.time</key>
    <value>Set in Step evaluateAmxFolderVersion</value>
    </Parameter>
    <Parameter>
    <key>amxfolderversion</key>
    <value>Set in Step evaluateAmxFolderVersion</value>
    </Parameter>
    <Parameter>
    <key>lisa.ApplyPatch.rsp</key>
    <value>Set in Step ApplyPatch</value>
    </Parameter>
    <Parameter>
    <key>lisa.ApplyPatch.rsp.time</key>
    <value>Set in Step ApplyPatch</value>
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
    <key>lisa.isAnyMoreUpgradeStepsRequired.rsp</key>
    <value>Set in Step isAnyMoreUpgradeStepsRequired</value>
    </Parameter>
    <Parameter>
    <key>lisa.isAnyMoreUpgradeStepsRequired.rsp.time</key>
    <value>Set in Step isAnyMoreUpgradeStepsRequired</value>
    </Parameter>
    <Parameter>
    <key>lisa.UpgradeAdmin.rsp.time</key>
    <value>Set in Step UpgradeAdmin</value>
    </Parameter>
    <Parameter>
    <key>lisa.UpgradeNode-Node1.rsp.time</key>
    <value>Set in Step UpgradeNode-Node1</value>
    </Parameter>
    <Parameter>
    <key>lisa.UpgradeNode-Node2.rsp.time</key>
    <value>Set in Step UpgradeNode-Node2</value>
    </Parameter>
    <Parameter>
    <key>lisa.startTIBCOHost.rsp.time</key>
    <value>Set in Step startTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkAdminUp.rsp.time</key>
    <value>Set in Step checkAdminUp</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait.rsp.time</key>
    <value>Set in Step wait</value>
    </Parameter>
    <Parameter>
    <key>lisa.startTIBCOHost.rsp</key>
    <value>Set in Step startTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkAdminUp.rsp</key>
    <value>Set in Step checkAdminUp</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait.rsp</key>
    <value>Set in Step wait</value>
    </Parameter>
    <Parameter>
    <key>lisa.UpgradeAdmin.rsp</key>
    <value>Set in Step UpgradeAdmin</value>
    </Parameter>
    <Parameter>
    <key>lisa.UpgradeNode-Node1.rsp</key>
    <value>Set in Step UpgradeNode-Node1</value>
    </Parameter>
    <Parameter>
    <key>lisa.UpgradeNode-Node2.rsp</key>
    <value>Set in Step UpgradeNode-Node2</value>
    </Parameter>
    <Parameter>
    <key>lisa.UpgradeTibcoHost.rsp</key>
    <value>Set in Step UpgradeTibcoHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.UpgradeTibcoHost.rsp.time</key>
    <value>Set in Step UpgradeTibcoHost</value>
    </Parameter>
</resultState>

<Configurations>
<Configuration>
<name>runtime</name>
<external>false</external>
<props>
</props>
</Configuration>
<Configuration>
<name>silver</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../silver/1machine_2node.config</doc>
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
      <log>Upgrading AMX to {{targetVersion}} </log>
    </Node>


    <Node name="verifyInputVariables" log="This step verifies the input variables for the invokeAnt subprocess."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="evaluateAmxFolderVersion" > 

<graphx>778</graphx>
<graphy>10</graphy>
<onerror>fail</onerror>
<script>String checkInputVariables() {&#13;&#10;&#9;&#9;String response = &quot;Fail:&quot;;&#13;&#10;&#9;&#9;try {&#13;&#10;            &#13;&#10;            if ((targetVersion == null)) {&#13;&#10;        &#9;&#9;&#9;throw new Exception(&quot;targetVersion is required.&quot;);&#13;&#10;            }&#13;&#10;&#9;&#9;&#9;&#13;&#10;            if (targetVersion.equals(&quot;&quot;))  {&#13;&#10;        &#9;&#9;&#9;throw new Exception(&quot;targetVersion cannot be null.&quot;);&#13;&#10;            }&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;response = &quot;Pass: Input variables are valid.&quot;;&#13;&#10;&#13;&#10;&#9;&#9;}catch(Exception e) {&#13;&#10;&#9;&#9;&#9;response = &quot;Fail: &quot;+e.getLocalizedMessage();&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;return response;&#13;&#10;&#9;}&#13;&#10;&#13;&#10;return checkInputVariables();</script>

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


    <Node name="evaluateAmxFolderVersion" log="This step verifies the input variables for the invokeAnt subprocess."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="ApplyPatch" > 

<graphx>778</graphx>
<graphy>10</graphy>
<onerror>fail</onerror>
<script>String evaluateAmxFolderVersion() {&#13;&#10;&#13;&#10;        // Upgrade scripts are stored under TIBCO_HOME/AMX/x.x/scripts/upgrade&#13;&#10;        // this java code finds out the correct value for x.x based on input - targetVersion&#13;&#10;        // possible values for targetVersion is&#13;&#10;        // 3.1.2 , 3.1.3, 3.1.4, 3.1.5, 3.2.0, 3.1.2.HF4, 3.1.3.HF3 etc etc&#13;&#10;&#13;&#10;&#9;&#9;String amxfolderversion = &quot;&quot;;&#13;&#10;&#9;&#9;&#13;&#10;        if (targetVersion.startsWith(&quot;3.1&quot;))&#13;&#10;            amxfolderversion = &quot;3.1&quot;;&#13;&#10;        else if (targetVersion.startsWith(&quot;3.2&quot;))&#13;&#10;            amxfolderversion = &quot;3.2&quot;;    &#13;&#10;        else if (targetVersion.startsWith(&quot;3.3&quot;))&#13;&#10;            amxfolderversion = &quot;3.3&quot;;    &#13;&#10;        else if (targetVersion.startsWith(&quot;3.4&quot;))&#13;&#10;            amxfolderversion = &quot;3.4&quot;;        &#13;&#10;        else&#13;&#10;            amxfolderversion = &quot;Fail: &quot; + &quot;Incorrect amx folder version&quot;;&#13;&#10;&#9;&#9;return amxfolderversion;&#13;&#10;}&#13;&#10;return evaluateAmxFolderVersion();&#13;&#10;&#13;&#10;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.evaluateAmxFolderVersion.rsp</valueToFilterKey>
      <prop>amxfolderversion</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert147" type="com.itko.lisa.test.CheckResultRegEx">
<log>Incorrect amx folder version under {{TIBCO_HOME}}/amx </log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Fail:.*</param>
</CheckResult>

    </Node>


    <Node name="ApplyPatch" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="isAnyMoreUpgradeStepsRequired" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/upgrade/ApplyPatch.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>targetVersion</key>
    <value>{{targetVersion}}</value>
    <name>targetVersion - Required</name>
    </Parameter>
    <Parameter>
    <key>patchManagerPath</key>
    <value>{{TIBCO_HOME}}/amx/{{amxfolderversion}}</value>
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
    <value>{{amxfolderversion}}</value>
    <name>Administrator folder version on disk</name>
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


    <Node name="isAnyMoreUpgradeStepsRequired" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="UpgradeTibcoHost" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.FileReader;&#13;&#10;import java.io.InputStream;&#13;&#10;import java.io.OutputStream;&#13;&#10;import java.io.PrintStream;&#13;&#10;import java.util.Enumeration;&#13;&#10;import java.util.Properties;&#13;&#10;import java.util.Set;&#13;&#10;&#13;&#10;String isAnyMoreUpgradeStepsRequired() {&#13;&#10;&#9;&#9;String response = &quot;NotRequired: Upgrade of TibcoHost, SystemNode and RuntimeNodes (if any) for &quot;  + targetVersion + &quot; is not required&quot;;&#13;&#10;&#9;&#9;&#13;&#10;        if (   (targetVersion.equals(&quot;3.1.2.HF1&quot;))  ||&#13;&#10;               (targetVersion.equals(&quot;3.1.2.HF2&quot;)) ||&#13;&#10;               (targetVersion.equals(&quot;3.1.2.HF3&quot;)) ||&#13;&#10;               (targetVersion.equals(&quot;3.1.2.HF4&quot;)) ||&#13;&#10;               (targetVersion.equals(&quot;3.1.3.HF1&quot;)) ||&#13;&#10;               (targetVersion.equals(&quot;3.1.2&quot;)) ||&#13;&#10;               (targetVersion.equals(&quot;3.1.3&quot;)) ||&#13;&#10;               (targetVersion.equals(&quot;3.1.4&quot;)) ||&#13;&#10;               (targetVersion.equals(&quot;3.1.5&quot;)) ||&#13;&#10;               (targetVersion.equals(&quot;3.2.0&quot;)) ||&#13;&#10;                (targetVersion.equals(&quot;3.2.1&quot;)) ||&#13;&#10;                (targetVersion.equals(&quot;3.3.0&quot;)) )&#13;&#10;       {&#13;&#10;        &#9;&#9;response = &quot;Required: Upgrade of TibcoHost, SystemNode and RuntimeNodes (if any) for &quot;  + targetVersion + &quot; is required&quot;;&#13;&#10;                return response;&#13;&#10;           }&#13;&#10;            &#13;&#10;           return response;&#13;&#10;        }&#13;&#10;&#13;&#10;return isAnyMoreUpgradeStepsRequired();</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert136" type="com.itko.lisa.test.CheckResultContains">
<log>Look for string NotRequired</log>
<then>startTIBCOHost</then>
<valueToAssertKey></valueToAssertKey>
        <param>NotRequired</param>
</CheckResult>

    </Node>


    <Node name="startTIBCOHost" log="start TIBCO Host after applying patch manager...."
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="checkAdminUp" > 

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
    <value>{{TIBCO_CONFIG_HOME}}/tibcohost/{{host.instance}}/host</value>
    <name>TIBCOHost instance directory. If host is remote, specify the TIBCOHost instance location on remote host.</name>
    </Parameter>
    <Parameter>
    <key>logFile</key>
    <value>{{tibco.test.suite.log.dir}}/setup/tibcohost.log</value>
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


    <Node name="checkAdminUp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="wait" > 

<graphx>350</graphx>
<graphy>755</graphy>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/amx/admin/IsAdminUp.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>{{adminURL}}</value>
    <name>Admin url. If provided 3 parameters below (host, port, secure) are ignored.</name>
    </Parameter>
    <Parameter>
    <key>host</key>
    <value></value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value></value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>secure</key>
    <value></value>
    <name>Use SSL to connect to Admin server</name>
    </Parameter>
    <Parameter>
    <key>user</key>
    <value>{{username}}</value>
    <name>User name to connect to Admin server</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{password}}</value>
    <name>User password to connect to Admin server</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>1200</value>
    <name>Wait for a number of seconds before giving up on Admin server</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Admin failed to start on time</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="wait" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>600</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>600</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="UpgradeTibcoHost" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="UpgradeAdmin" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/upgrade/UpgradeTibcoHost.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>upgradeScriptsPath</key>
    <value>{{TIBCO_HOME}}/amx/{{amxfolderversion}}/scripts/upgrade/upgrade-to-{{targetVersion}}</value>
    <name>upgrade scripts location</name>
    </Parameter>
    <Parameter>
    <key>hostLogFile</key>
    <value>{{tibco.test.suite.log.dir}}/setup/tibcohost.log</value>
    <name>TIBCOHost log file to monitor for start / stop</name>
    </Parameter>
    <Parameter>
    <key>antLogFile</key>
    <value>{{tibco.test.case.log.dir}}/{{targetVersion}}-upgradeHost-{{tibcoInstanceName}}.log</value>
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
    <value>600</value>
    <name>Wait for a number of seconds before giving up on TIBCOHost</name>
    </Parameter>
    <Parameter>
    <key>propertyFileLocation</key>
    <value>{{tibco.test.case.log.dir}}</value>
    <name>folder for host properties file</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert185" type="com.itko.lisa.test.CheckResultContains">
<log>{{host.instance}} upgraded successfully</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="UpgradeAdmin" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="UpgradeNode-Node1" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/upgrade/UpgradeNode.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>upgradeScriptsPath</key>
    <value>{{TIBCO_HOME}}/amx/{{amxfolderversion}}/scripts/upgrade/upgrade-to-{{targetVersion}}</value>
    <name>upgrade scripts location</name>
    </Parameter>
    <Parameter>
    <key>hostLogFile</key>
    <value>{{tibco.test.suite.log.dir}}/setup/tibcohost.log</value>
    <name>TIBCOHost log file to monitor start / stop</name>
    </Parameter>
    <Parameter>
    <key>antLogFile</key>
    <value>{{tibco.test.case.log.dir}}/{{targetVersion}}-upgradeNode-{{nodeName}}.log</value>
    </Parameter>
    <Parameter>
    <key>propFile</key>
    <value></value>
    <name>Absolute path to property file. Optional. If set, upgrade paramaters are optional</name>
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
    <key>nodeName</key>
    <value>SystemNode</value>
    <name>Nodename</name>
    </Parameter>
    <Parameter>
    <key>hostName</key>
    <value>{{host.name}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>unattened</key>
    <value>true</value>
    <name>Flag to run upgrade scripts without any manual intervention- optional</name>
    </Parameter>
    <Parameter>
    <key>forceNoBackup</key>
    <value>true</value>
    <name>force backup flag - optional</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>1200</value>
    <name>Wait for a number of seconds before giving up on TIBCOHost</name>
    </Parameter>
    <Parameter>
    <key>propertyFileLocation</key>
    <value>{{tibco.test.case.log.dir}}</value>
    <name>folder for node properties file</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert185" type="com.itko.lisa.test.CheckResultContains">
<log>{{admin.instance.name}} upgraded successfully</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="UpgradeNode-Node1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="UpgradeNode-Node2" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/upgrade/UpgradeNode.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>upgradeScriptsPath</key>
    <value>{{TIBCO_HOME}}/amx/{{amxfolderversion}}/scripts/upgrade/upgrade-to-{{targetVersion}}</value>
    <name>upgrade scripts location</name>
    </Parameter>
    <Parameter>
    <key>hostLogFile</key>
    <value>{{tibco.test.suite.log.dir}}/setup/tibcohost.log</value>
    <name>TIBCOHost log file to monitor start / stop</name>
    </Parameter>
    <Parameter>
    <key>antLogFile</key>
    <value>{{tibco.test.case.log.dir}}/{{targetVersion}}-upgradeNode-{{nodeName}}.log</value>
    </Parameter>
    <Parameter>
    <key>propFile</key>
    <value></value>
    <name>Absolute path to property file. Optional. If set, upgrade paramaters are optional</name>
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
    <key>nodeName</key>
    <value>{{env.node1.name}}</value>
    <name>Nodename</name>
    </Parameter>
    <Parameter>
    <key>hostName</key>
    <value>{{host.name}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>unattened</key>
    <value>true</value>
    <name>Flag to run upgrade scripts without any manual intervention- optional</name>
    </Parameter>
    <Parameter>
    <key>forceNoBackup</key>
    <value>true</value>
    <name>force backup flag - optional</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>600</value>
    <name>Wait for a number of seconds before giving up on TIBCOHost</name>
    </Parameter>
    <Parameter>
    <key>propertyFileLocation</key>
    <value>{{tibco.test.case.log.dir}}</value>
    <name>folder for node properties file</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert185" type="com.itko.lisa.test.CheckResultContains">
<log>{{env.node1.name}} upgraded successfully</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="UpgradeNode-Node2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/upgrade/UpgradeNode.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>upgradeScriptsPath</key>
    <value>{{TIBCO_HOME}}/amx/{{amxfolderversion}}/scripts/upgrade/upgrade-to-{{targetVersion}}</value>
    <name>upgrade scripts location</name>
    </Parameter>
    <Parameter>
    <key>hostLogFile</key>
    <value>{{tibco.test.suite.log.dir}}/setup/tibcohost.log</value>
    <name>TIBCOHost log file to monitor start / stop</name>
    </Parameter>
    <Parameter>
    <key>antLogFile</key>
    <value>{{tibco.test.case.log.dir}}/{{targetVersion}}-upgradeNode-{{nodeName}}.log</value>
    </Parameter>
    <Parameter>
    <key>propFile</key>
    <value></value>
    <name>Absolute path to property file. Optional. If set, upgrade paramaters are optional</name>
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
    <key>nodeName</key>
    <value>{{env.node2.name}}</value>
    <name>Nodename</name>
    </Parameter>
    <Parameter>
    <key>hostName</key>
    <value>{{host.name}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>unattened</key>
    <value>true</value>
    <name>Flag to run upgrade scripts without any manual intervention- optional</name>
    </Parameter>
    <Parameter>
    <key>forceNoBackup</key>
    <value>true</value>
    <name>force backup flag - optional</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>1200</value>
    <name>Wait for a number of seconds before giving up on TIBCOHost</name>
    </Parameter>
    <Parameter>
    <key>propertyFileLocation</key>
    <value>{{tibco.test.case.log.dir}}</value>
    <name>folder for node properties file</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert185" type="com.itko.lisa.test.CheckResultContains">
<log>{{env.node2.name}} upgraded successfully</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

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


</TestCase>
