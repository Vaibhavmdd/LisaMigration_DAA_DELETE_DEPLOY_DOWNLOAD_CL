<?xml version="1.0" ?>

<TestCase name="BootstrapTibcoHost" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/24/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/29/2022" host="na2devasgaks01" />
</meta>

<id>10e34bf4</id>
<Documentation>Builds and starts TIBCOHost.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPS04OTM2Mzc1Njc=</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>tibcoHostHome</key>
    <value>{{TIBCO_HOST_HOME}}</value>
    <name>TIBCOHost home</name>
    </Parameter>
    <Parameter>
    <key>tibcoConfigHome</key>
    <value>{{TIBCO_CONFIG_HOME}}</value>
    <name>TIBCO config home</name>
    </Parameter>
    <Parameter>
    <key>workingDir</key>
    <value>{{tibco.test.case.log.dir}}</value>
    <name>Working directory. Prop file will be placed there if it is generated</name>
    </Parameter>
    <Parameter>
    <key>antLogFile</key>
    <value>{{tibco.test.case.log.dir}}/tibcohostAnt.log</value>
    <name>Ant log file</name>
    </Parameter>
    <Parameter>
    <key>thLogFile</key>
    <value>{{tibco.test.case.log.dir}}/tibcohost.log</value>
    <name>TIBCOHost log file</name>
    </Parameter>
    <Parameter>
    <key>nodeStdoutLogFile</key>
    <value>{{tibco.test.case.log.dir}}/node_stdout.log</value>
    <name>Node stdout log file</name>
    </Parameter>
    <Parameter>
    <key>propFile</key>
    <value></value>
    <name>Absolute path to TIBCOHost property file. Optional. If set, all paramaters below are ignored.</name>
    </Parameter>
    <Parameter>
    <key>name</key>
    <value>TibcoHostInstance</value>
    <name>TIBCOHost instance name</name>
    </Parameter>
    <Parameter>
    <key>processPrefix</key>
    <value>tibamx_</value>
    <name>Process prefix</name>
    </Parameter>
    <Parameter>
    <key>securityKeystoreFile</key>
    <value>{{TIBCO_HOST_HOME}}/templates/admin.default.ssl.trust.store.ts</value>
    <name>Keystore file</name>
    </Parameter>
    <Parameter>
    <key>securityKeystoreType</key>
    <value>JCEKS</value>
    <name>Keystore type</name>
    </Parameter>
    <Parameter>
    <key>securityKeystorePassword</key>
    <value>secret</value>
    <name>Keystore password</name>
    </Parameter>
    <Parameter>
    <key>qinServerUrl</key>
    <value>tcp://localhost:7222</value>
    <name>Qin notification server url</name>
    </Parameter>
    <Parameter>
    <key>qinGroupName</key>
    <value>amxadmin</value>
    <name>Qin notification group name</name>
    </Parameter>
    <Parameter>
    <key>qinUserName</key>
    <value>admin</value>
    <name>Qin notification user name</name>
    </Parameter>
    <Parameter>
    <key>qinPassword</key>
    <value>#!oh6xQHiU57sueCtN73kO4w==</value>
    <name>Qin notification encoded user password</name>
    </Parameter>
    <Parameter>
    <key>qinStartupInterval</key>
    <value>3000</value>
    <name>Qin notification startup interval</name>
    </Parameter>
    <Parameter>
    <key>qinBackoffInterval</key>
    <value>0</value>
    <name>Qin notification backoff interval</name>
    </Parameter>
    <Parameter>
    <key>qinRecoveryTimerTimeout</key>
    <value>3000</value>
    <name>Qin notification recovery timer timeout</name>
    </Parameter>
    <Parameter>
    <key>qinRecoveryAttemptDelay</key>
    <value>2000</value>
    <name>Qin notification recovery attempt delay</name>
    </Parameter>
    <Parameter>
    <key>qinSecure</key>
    <value>false</value>
    <name>Qin notification secure</name>
    </Parameter>
    <Parameter>
    <key>qinTransportImplementation</key>
    <value>com.tibco.amf.hpa.core.runtime.management.impl.NotificationTransportImpl</value>
    <name>Qin notification transport implementation</name>
    </Parameter>
    <Parameter>
    <key>emsIdentityStorePassword</key>
    <value></value>
    <name>EMS identity store password</name>
    </Parameter>
    <Parameter>
    <key>trinityKeystoreFile</key>
    <value></value>
    <name>Keystore file</name>
    </Parameter>
    <Parameter>
    <key>trinityKeystorePassword</key>
    <value></value>
    <name>Keystore password</name>
    </Parameter>
    <Parameter>
    <key>trinityKeystoreType</key>
    <value>JKS</value>
    <name>Keystore Type</name>
    </Parameter>
    <Parameter>
    <key>trinityTcsUrl</key>
    <value>service:jmx:jmxmp://localhost:6041</value>
    <name>Credential server url</name>
    </Parameter>
    <Parameter>
    <key>trinityTcsUser</key>
    <value>user1</value>
    <name>Credential server username</name>
    </Parameter>
    <Parameter>
    <key>trinityTcsPassword</key>
    <value>\#!W3z0e8nURMyp29K/k84jWyRJa4jag4kvJcQdb7ozF4w=</value>
    <name>Credential server encoded password</name>
    </Parameter>
    <Parameter>
    <key>jmxInterface</key>
    <value>localhost</value>
    <name>JMX host</name>
    </Parameter>
    <Parameter>
    <key>jmxPort</key>
    <value>6001</value>
    <name>JMX port</name>
    </Parameter>
    <Parameter>
    <key>nodeType</key>
    <value>com.tibco.amf.hpa.tibcohost.node.hibernate.feature</value>
    <name>Node type</name>
    </Parameter>
    <Parameter>
    <key>nodeTypeVersion</key>
    <value>1.0.1</value>
    <name>Node type version</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>60</value>
    <name>Wait for a number of seconds before giving up on TIBCOHost</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>antLogContent</key>
    <value></value>
    <name>antLogContent</name>
    </Parameter>
    <Parameter>
    <key>lisa.bootstrapTIBCOHost.rsp</key>
    <value></value>
    <name>lisa.bootstrapTIBCOHost.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.bootstrapTIBCOHost.rsp.time</key>
    <value></value>
    <name>lisa.bootstrapTIBCOHost.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.buildPropFileContent.rsp</key>
    <value></value>
    <name>lisa.buildPropFileContent.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.buildPropFileContent.rsp.time</key>
    <value></value>
    <name>lisa.buildPropFileContent.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.checkPropFileEmpty.rsp</key>
    <value></value>
    <name>lisa.checkPropFileEmpty.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.checkPropFileEmpty.rsp.time</key>
    <value></value>
    <name>lisa.checkPropFileEmpty.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.copyNodeStdoutLogConfigFile.rsp</key>
    <value></value>
    <name>lisa.copyNodeStdoutLogConfigFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.copyNodeStdoutLogConfigFile.rsp.time</key>
    <value></value>
    <name>lisa.copyNodeStdoutLogConfigFile.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.copyTHLogConfigFile.rsp</key>
    <value></value>
    <name>lisa.copyTHLogConfigFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.copyTHLogConfigFile.rsp.time</key>
    <value></value>
    <name>lisa.copyTHLogConfigFile.rsp.time</name>
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
    <key>lisa.failure.rsp</key>
    <value></value>
    <name>lisa.failure.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.failure.rsp.time</key>
    <value></value>
    <name>lisa.failure.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.getTHInstanceName.rsp</key>
    <value></value>
    <name>lisa.getTHInstanceName.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getTHInstanceName.rsp.time</key>
    <value></value>
    <name>lisa.getTHInstanceName.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.getTimeLimit.rsp</key>
    <value></value>
    <name>lisa.getTimeLimit.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getTimeLimit.rsp.time</key>
    <value></value>
    <name>lisa.getTimeLimit.rsp.time</name>
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
    <key>lisa.repeatingCheckLogFileExists.rsp</key>
    <value></value>
    <name>lisa.repeatingCheckLogFileExists.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingCheckLogFileExists.rsp.time</key>
    <value></value>
    <name>lisa.repeatingCheckLogFileExists.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingReadLog.rsp</key>
    <value></value>
    <name>lisa.repeatingReadLog.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingReadLog.rsp.time</key>
    <value></value>
    <name>lisa.repeatingReadLog.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingSleep.rsp</key>
    <value></value>
    <name>lisa.repeatingSleep.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingSleep.rsp.time</key>
    <value></value>
    <name>lisa.repeatingSleep.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.replaceInTHLogConfigFile.rsp</key>
    <value></value>
    <name>lisa.replaceInTHLogConfigFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.replaceInTHLogConfigFile.rsp.time</key>
    <value></value>
    <name>lisa.replaceInTHLogConfigFile.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.success.rsp</key>
    <value></value>
    <name>lisa.success.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.success.rsp.time</key>
    <value></value>
    <name>lisa.success.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.timeout.rsp</key>
    <value></value>
    <name>lisa.timeout.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.timeout.rsp.time</key>
    <value></value>
    <name>lisa.timeout.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp</key>
    <value></value>
    <name>lisa.validate.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp.time</key>
    <value></value>
    <name>lisa.validate.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.writePropFile.rsp</key>
    <value></value>
    <name>lisa.writePropFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.writePropFile.rsp.time</key>
    <value></value>
    <name>lisa.writePropFile.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>nodeStdoutLogConfig</key>
    <value></value>
    <name>nodeStdoutLogConfig</name>
    </Parameter>
    <Parameter>
    <key>thLogConfig</key>
    <value></value>
    <name>thLogConfig</name>
    </Parameter>
    <Parameter>
    <key>thName</key>
    <value></value>
    <name>thName</name>
    </Parameter>
    <Parameter>
    <key>thPropFile</key>
    <value></value>
    <name>thPropFile</name>
    </Parameter>
    <Parameter>
    <key>thPropFileContent</key>
    <value></value>
    <name>thPropFileContent</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="10e34bf4-log" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="validate" > 

<log>Bootstraping TIBCOHost...</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="10e34bf4-validate" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="checkPropFileEmpty" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert218" type="com.itko.lisa.test.CheckResultContains">
<log>{LASTRESPONSE}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>TH Bootstrap Validation Error</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.io.File;&#13;&#10;&#13;&#10;String errorMsg = &quot;TH Bootstrap Validation Error&quot;;&#13;&#10;&#13;&#10;File file = new File(testExec.parseInState(workingDir));&#13;&#10;if (!file.exists())&#13;&#10;    return errorMsg + &quot;: Directory &apos;&quot; + workingDir + &quot;&apos; does not exist.&quot;;&#13;&#10;if (!file.isDirectory())&#13;&#10;    return erroMsg + &quot;: &apos;&quot; + workingDir + &quot;&apos; must be a directory.&quot;;&#13;&#10;&#13;&#10;if (antLogFile.equals(&quot;&quot;))&#13;&#10;    return errorMsg + &quot;: Log file is required.&quot;;&#13;&#10;&#13;&#10;return &quot;Validation success&quot;;</script>
    </Node>


    <Node name="checkPropFileEmpty" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="10e34bf4-checkPropFileEmpty" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="getTHInstanceName" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.checkPropFileEmpty.rsp</valueToFilterKey>
      <prop>thPropFile</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert181" type="com.itko.lisa.test.CheckResultContains">
<log>Prop file is not set. Let&apos;s create it...</log>
<then>copyTHLogConfigFile</then>
<valueToAssertKey></valueToAssertKey>
        <param>true</param>
</CheckResult>

<onerror>abort</onerror>
<script>if (propFile.equals(&quot;&quot;))&#13;&#10;    return true;&#13;&#10;else&#13;&#10;    return testExec.parseInState(propFile).replace(&quot;\\&quot;,&quot;/&quot;);</script>
    </Node>


    <Node name="getTHInstanceName" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="10e34bf4-getTHInstanceName" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="bootstrapTIBCOHost" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getTHInstanceName.rsp</valueToFilterKey>
      <prop>thName</prop>
      </Filter>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/GetNameValuePairFromFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{thPropFile}}</value>
    <name>File where to get value from</name>
    </Parameter>
    <Parameter>
    <key>name</key>
    <value>amx.th.instance.name</value>
    <name>Name</name>
    </Parameter>
    <Parameter>
    <key>assignChar</key>
    <value>=</value>
    <name>Character utilized for assignment: equal (&apos;=&apos;), white space (&apos; &apos;), ...</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="bootstrapTIBCOHost" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="10e34bf4-bootstrapTIBCOHost" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="getTimeLimit" > 

<Documentation>waitForCompletion is false because this step hangs if it is true.</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value>{{tibcoHostHome}}/scripts</value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{TIBCO_AMX_LIBRARY}}/com/tibco/tibcohost/BootstrapTibcoHost.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{antLogFile}}</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>start-th</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>amx.th.instance.name={{thName}},tibcohost.properties.file={{=thPropFile.replace(&quot;\\&quot;,&quot;/&quot;)}},tibco.config.mgmt.home={{=tibcoConfigHome.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOST_HOME={{=tibcoHostHome.replace(&quot;\\&quot;,&quot;/&quot;)}}</value>
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
          uid="10e34bf4-getTimeLimit" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="repeatingSleep" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>getTimeLimit step has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>Calendar future = Calendar.getInstance();&#13;&#10;future.add(Calendar.SECOND, timeout.intValue());&#13;&#10;testExec.setStateValue(&quot;future&quot;, future);</script>
    </Node>


    <Node name="repeatingSleep" log="repeat sleep"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="10e34bf4-repeatingSleep" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="repeatingCheckLogFileExists" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
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
          uid="10e34bf4-repeatingCheckLogFileExists" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="repeatingReadLog" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert67" type="com.itko.lisa.test.AssertByScript">
<log>TIBCOHost did not start on time</log>
<then>timeout</then>
<valueToAssertKey></valueToAssertKey>
        <script>future.before(Calendar.getInstance());</script>
        <language>beanshell</language>
        <copyprops>TestExecPropsAndSystemProps</copyprops>
</CheckResult>

<CheckResult assertTrue="true" name="Assert95" type="com.itko.lisa.test.CheckResultContains">
<log>TIBCOHost log file not found yet...</log>
<then>repeatingSleep</then>
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
    <value>{{antLogFile}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="repeatingReadLog" log="read log and look for tibcohost started message"
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          uid="10e34bf4-repeatingReadLog" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="repeatingSleep" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.repeatingReadLog.rsp</valueToFilterKey>
      <prop>antLogContent</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert148" type="com.itko.lisa.test.CheckResultContains">
<log>TIBCOHost has been started Successfully.</log>
<then>success</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert149" type="com.itko.lisa.test.CheckResultContains">
<log>TIBCOHost failed to start</log>
<then>failure</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD FAILED</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert150" type="com.itko.lisa.test.AssertByScript">
<log>TIBCOHost did not start on time</log>
<then>timeout</then>
<valueToAssertKey></valueToAssertKey>
        <script>future.before(Calendar.getInstance());</script>
        <language>beanshell</language>
        <copyprops>TestExecPropsAndSystemProps</copyprops>
</CheckResult>

<Loc>{{antLogFile}}</Loc>
<charset>DEFAULT</charset>
<PropKey></PropKey>
<onFail>abort</onFail>
    </Node>


    <Node name="copyTHLogConfigFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="10e34bf4-copyTHLogConfigFile" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="replaceInTHLogConfigFile" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.copyTHLogConfigFile.rsp</valueToFilterKey>
      <prop>thLogConfig</prop>
      </Filter>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CopyFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>fileIn</key>
    <value>{{TIBCO_AMX_LIBRARY}}/com/tibco/tibcohost/hpa-log4j.xml.template</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{tibco.test.case.log.dir}}/hpa-log4j.xml</value>
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


    <Node name="replaceInTHLogConfigFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="10e34bf4-replaceInTHLogConfigFile" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="copyNodeStdoutLogConfigFile" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReplaceInFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{thLogConfig}}</value>
    <name>File where to perform the search-replace</name>
    </Parameter>
    <Parameter>
    <key>oldString</key>
    <value></value>
    <name>String to be replaced</name>
    </Parameter>
    <Parameter>
    <key>newString</key>
    <value></value>
    <name>New string value</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>amx.th.instance.log={{tibco.test.case.log.dir}}/tibcohost.log,amx.th.instance.nodestdout.log={{tibco.test.case.log.dir}}/node-stdout.log</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>prefix</key>
    <value>[[</value>
    <name>prefix to be used for the keys to substitute</name>
    </Parameter>
    <Parameter>
    <key>suffix</key>
    <value>]]</value>
    <name>suffix to be used for the keys to substitute</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>UTF-8</value>
    <name>Encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="copyNodeStdoutLogConfigFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="10e34bf4-copyNodeStdoutLogConfigFile" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="buildPropFileContent" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.copyNodeStdoutLogConfigFile.rsp</valueToFilterKey>
      <prop>nodeStdoutLogConfig</prop>
      </Filter>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CopyFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>fileIn</key>
    <value>{{TIBCO_AMX_LIBRARY}}/com/tibco/tibcohost/node-log4j.xml.template</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{tibco.test.case.log.dir}}/node-log4j.xml</value>
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


    <Node name="buildPropFileContent" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="10e34bf4-buildPropFileContent" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="writePropFile" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.buildPropFileContent.rsp</valueToFilterKey>
      <prop>thPropFileContent</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>str = &quot;&quot;;&#13;&#10;str = str + &quot;amx.th.instance.name=&quot; + testExec.parseInState(name.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.hpa.log.config.file=&quot; + testExec.parseInState(thLogConfig).replace(&quot;\\&quot;,&quot;/&quot;) + line_separator;&#13;&#10;str = str + &quot;amx.th.hpa.node.log.config.file=&quot; + testExec.parseInState(nodeStdoutLogConfig).replace(&quot;\\&quot;,&quot;/&quot;) + line_separator;&#13;&#10;str = str + &quot;amx.th.security.keystore.file=&quot; + testExec.parseInState(securityKeystoreFile.toString()).replace(&quot;\\&quot;,&quot;/&quot;) + line_separator;&#13;&#10;str = str + &quot;amx.th.security.keystore.type=&quot; + testExec.parseInState(securityKeystoreType.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.security.keystore.password=&quot; + testExec.parseInState(securityKeystorePassword.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.jmx.secure=false&quot; + line_separator;&#13;&#10;str = str + &quot;amx.th.qin.server.url=&quot; + testExec.parseInState(qinServerUrl.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.qin.groupName=&quot; + testExec.parseInState(qinGroupName.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.qin.userName=&quot; + testExec.parseInState(qinUserName.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.qin.pass=&quot; + testExec.parseInState(qinPassword.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.qin.startupInterval=&quot; + testExec.parseInState(qinStartupInterval.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.qin.backoffInterval=&quot; + testExec.parseInState(qinBackoffInterval.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.qin.recovery_timer_timeout=&quot; + testExec.parseInState(qinRecoveryTimerTimeout.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.qin.recovery_attempt_delay=&quot; + testExec.parseInState(qinRecoveryAttemptDelay.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.qin.secure=&quot; + testExec.parseInState(qinSecure.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.qin.notificationTransport.impl=&quot; + testExec.parseInState(qinTransportImplementation.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.ems.identity.store.password=&quot; + testExec.parseInState(emsIdentityStorePassword.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.trinity.keyStoreLocation=&quot; + testExec.parseInState(trinityKeystoreFile.toString()).replace(&quot;\\&quot;,&quot;/&quot;) + line_separator;&#13;&#10;str = str + &quot;amx.th.trinity.keyStorePassword=&quot; + testExec.parseInState(trinityKeystorePassword.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.trinity.keyStoreType=&quot; + testExec.parseInState(trinityKeystoreType.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.trinity.tcs.url=&quot; + testExec.parseInState(trinityTcsUrl.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.trinity.tcs.user=&quot; + testExec.parseInState(trinityTcsUser.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.trinity.tcs.password=&quot; + testExec.parseInState(trinityTcsPassword.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.hpa.jmx.port=&quot; + testExec.parseInState(jmxPort.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.hpa.jmx.interface=&quot; + testExec.parseInState(jmxInterface.toString()) + line_separator;&#13;&#10;str = str + &quot;amx.th.process.prefix=&quot; + testExec.parseInState(processPrefix.toString()) + line_separator;&#13;&#10;str = str + &quot;amf.node.type=&quot; + testExec.parseInState(nodeType.toString()) + line_separator;&#13;&#10;str = str + &quot;amf.node.type.version=&quot; + testExec.parseInState(nodeTypeVersion.toString()) + line_separator;&#13;&#10;&#13;&#10;return str;&#13;&#10;</script>
    </Node>


    <Node name="writePropFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="10e34bf4-writePropFile" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="getTHInstanceName" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.writePropFile.rsp</valueToFilterKey>
      <prop>thPropFile</prop>
      </Filter>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/WriteFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{workingDir}}/tibcohost.properties</value>
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
    </Node>


    <Node name="timeout" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="10e34bf4-timeout" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="fail" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>return &quot;TIBCOHost did not start on time.\n\n\n&quot; + antLogContent;</script>
    </Node>


    <Node name="failure" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="10e34bf4-failure" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="fail" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>return antLogContent;</script>
    </Node>


    <Node name="success" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="10e34bf4-success" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>return antLogContent;</script>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="B1D5E1126BE511ED963E506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="10e34bf4-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="10e34bf4-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
