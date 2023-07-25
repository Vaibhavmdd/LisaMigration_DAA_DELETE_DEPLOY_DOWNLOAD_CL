<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Thu Oct 28 01:05:24 PDT 2010 -->


<TestCase name="RVScript" version="2">
<id>e6671a22</id>
<Documentation>Executes a RV script</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTEzMTg5NTczNg==</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>rvHome</key>
    <value>{{TIBCO_RV_HOME}}</value>
    <name>RV Home </name>
    </Parameter>
    <Parameter>
    <key>rvScriptFile</key>
    <value></value>
    <name>RV script location</name>
    </Parameter>
    <Parameter>
    <key>startInDir</key>
    <value>{{tibco.test.suite.log.dir}}</value>
    <name>Directory where to start RVScript (license file will be generated in there)</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>true</value>
    <name>Wait for RVScript to complete or not</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>60</value>
    <name>Number of seconds to wait for completion (if waitForCompletion is true) before timing out</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.log.rsp</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp</key>
    <value>Set in Step validate</value>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp.time</key>
    <value>Set in Step validate</value>
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
    <key>lisa.command.pid_handle</key>
    <value>Set in Step executeScript</value>
    </Parameter>
    <Parameter>
    <key>lisa.generateLicenseAgreedFile.rsp</key>
    <value>Set in Step generateLicenseAgreedFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.generateLicenseAgreedFile.rsp.time</key>
    <value>Set in Step generateLicenseAgreedFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyRVScriptJar.rsp</key>
    <value>Set in Step copyRVScriptJar</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyRVScriptJar.rsp.time</key>
    <value>Set in Step copyRVScriptJar</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkRVScriptJarExists.rsp</key>
    <value>Set in Step checkRVScriptJarExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkRVScriptJarExists.rsp.time</key>
    <value>Set in Step checkRVScriptJarExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.executeScriptOnWindows.rsp</key>
    <value>Set in Step executeScriptOnWindows</value>
    </Parameter>
    <Parameter>
    <key>lisa.executeScriptOnWindows.rsp.time</key>
    <value>Set in Step executeScriptOnWindows</value>
    </Parameter>
    <Parameter>
    <key>lisa.command.exit.code</key>
    <value>Set in Step executeScriptOnWindows</value>
    </Parameter>
    <Parameter>
    <key>lisa.executeScriptOnUnix.rsp</key>
    <value>Set in Step executeScriptOnUnix</value>
    </Parameter>
    <Parameter>
    <key>lisa.executeScriptOnUnix.rsp.time</key>
    <value>Set in Step executeScriptOnUnix</value>
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
    <key>lisa.osSwitch.rsp</key>
    <value>Set in Step osSwitch</value>
    </Parameter>
    <Parameter>
    <key>lisa.osSwitch.rsp.time</key>
    <value>Set in Step osSwitch</value>
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
          next="validate" > 

<graphx>361</graphx>
<graphy>1066</graphy>
      <log>RV Home: {{rvHome}}&#13;&#10;RV Script: {{rvScriptFile}}&#13;&#10;Start-In Dir: {{startInDir}}&#13;&#10;Timeout: {{timeout}}&#13;&#10;Wait for Completion: {{waitForCompletion}}</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="checkRVScriptJarExists" > 

<graphx>196</graphx>
<graphy>971</graphy>
<onerror>fail</onerror>
<script>import java.io.File;&#13;&#10;&#13;&#10;String errorMsg = &quot;RV Script Error&quot;; // do not modify. Assertion exists on this string&#13;&#10;String successMsg = &quot;RV Script Success&quot;;&#13;&#10;&#13;&#10;File script = new File(testExec.parseInState(rvScriptFile).replace(&quot;\\&quot;,&quot;/&quot;));&#13;&#10;File startDir = new File(testExec.parseInState(startInDir).replace(&quot;\\&quot;,&quot;/&quot;));&#13;&#10;&#13;&#10;/**&#13;&#10;// Verify RV Jar is fine&#13;&#10;if (!jar1.exists())&#13;&#10; return errorMsg + &quot;: RV Jar (&apos;&quot; + jar1 + &quot;&apos;) does not exist&quot;;&#13;&#10;&#13;&#10;if (jar1.isDirectory())&#13;&#10; return errorMsg + &quot;: RV Jar (&apos;&quot; + jar1 + &quot;&apos;) must be a file&quot;;&#13;&#10;&#13;&#10;if (!jar1.canRead())&#13;&#10; return errorMsg + &quot;: RV Jar (&apos;&quot; + jar1 + &quot;&apos;) cannot be read&quot;;&#13;&#10;&#13;&#10;// Verify RV Script Jar is fine&#13;&#10;&#13;&#10;if (!jar2.exists())&#13;&#10; return errorMsg + &quot;: RV Script Jar (&apos;&quot; + jar2 + &quot;&apos;) does not exist&quot;;&#13;&#10;&#13;&#10;if (jar2.isDirectory())&#13;&#10; return errorMsg + &quot;: RV Script Jar (&apos;&quot; + jar2 + &quot;&apos;) must be a file&quot;;&#13;&#10;&#13;&#10;if (!jar2.canRead())&#13;&#10; return errorMsg + &quot;: RV Script Jar (&apos;&quot; + jar2 + &quot;&apos;) cannot be read&quot;;&#13;&#10;**/&#13;&#10;&#13;&#10;// Verify Script file is fine&#13;&#10;if (!script.exists())&#13;&#10; return errorMsg + &quot;: RV Script (&apos;&quot; + script + &quot;&apos;) does not exist&quot;;&#13;&#10;&#13;&#10;if (script.isDirectory())&#13;&#10; return errorMsg + &quot;: RV Script (&apos;&quot; + script + &quot;&apos;) must be a file&quot;;&#13;&#10;&#13;&#10;if (!script.canRead())&#13;&#10; return errorMsg + &quot;: RV Script (&apos;&quot; + script + &quot;&apos;) cannot be read&quot;;&#13;&#10;&#13;&#10;// Verify Start-In Directory is fine&#13;&#10;if (!startDir.exists())&#13;&#10; return errorMsg + &quot;: Start-In directory (&apos;&quot; + startDir + &quot;&apos;) does not exist&quot;;&#13;&#10;&#13;&#10;if (!startDir.isDirectory())&#13;&#10; return errorMsg + &quot;: Start-In directory (&apos;&quot; + startDir + &quot;&apos;) must be a directory&quot;;&#13;&#10;&#13;&#10;if (!startDir.canWrite())&#13;&#10; return errorMsg + &quot;: Start-In directory (&apos;&quot; + startDir + &quot;&apos;) cannot be written into (license file is generated here)&quot;;&#13;&#10;&#13;&#10;return successMsg;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert108" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>RV Script Error</param>
</CheckResult>

    </Node>


    <Node name="checkRVScriptJarExists" log="{{rvScriptJar=startInDir + &quot;/rvscript.jar&quot;}}"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="copyRVScriptJar" > 

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
    <value>{{startInDir}}/rvscript.jar</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert167" type="com.itko.lisa.test.CheckResultContains">
<log>RVScript Jar already exists -&gt; No copy necessary</log>
<then>generateLicenseAgreedFile</then>
<valueToAssertKey></valueToAssertKey>
        <param>true</param>
</CheckResult>

    </Node>


    <Node name="copyRVScriptJar" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="generateLicenseAgreedFile" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation>RVScript is copied to another location because RVScript looks for the license file wherever rvscript.jar is.&#13;&#10;And we do not want to have to generate the license file in {{TIBCO_COMMON_LIBRARY}}/lib which is the initial location of rvscript.jar</Documentation>
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
    <value>{{TIBCO_COMMON_LIBRARY}}/lib/rvscript.jar</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{startInDir}}/rvscript.jar</value>
    <name>Destination file or directory</name>
    </Parameter>
    <Parameter>
    <key>createDirectory</key>
    <value>false</value>
    <name>If true, create the necessary directories to copy the destination file</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="generateLicenseAgreedFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="osSwitch" > 

<graphx>73</graphx>
<graphy>274</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CreateFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{startInDir}}/.license_agreed-{{LISA_HOST}}</value>
    <name>File to be created</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="osSwitch" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="executeScriptOnUnix" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>if (com.itko.util.Utilities.isWindows())&#13;&#10;    return &quot;Windows&quot;;&#13;&#10;else &#13;&#10;    return &quot;Unix&quot;;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert117" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert117] fired true of type Result as String Contains Given String</log>
<then>executeScriptOnWindows</then>
<valueToAssertKey></valueToAssertKey>
        <param>Windows</param>
</CheckResult>

    </Node>


    <Node name="executeScriptOnWindows" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>550</graphx>
<graphy>0</graphy>
<cmd>{{java.home}}/bin/java -Djava.library.path={{rvHome}}/bin{{path.separator}}{{rvHome}}/lib{{path.separator}}{{rvHome}}/lib/64 -Xmx200m -cp {{rvHome}}/lib/tibrvj.jar{{path.separator}}{{rvHome}}/lib/tibrvjsd.jar{{path.separator}}{{rvScriptJar}} com.tibco.rvscript.rvscript {{rvScriptFile}}</cmd>
<basedir>{{startInDir}}</basedir>
<toNode>fail</toNode>
<exceptionNode>fail</exceptionNode>
<timeOut>{{timeout}}</timeOut>
<killAtEnd>false</killAtEnd>
<wait>{{waitForCompletion}}</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<env>
</env>
<exitCodes>
</exitCodes>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert147" type="com.itko.lisa.test.CheckResultContains">
<log>RVScript threw Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Exception</param>
</CheckResult>

    </Node>


    <Node name="executeScriptOnUnix" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>550</graphx>
<graphy>0</graphy>
<cmd>{{java.home}}/bin/java -Djava.library.path={{rvHome}}/bin{{path.separator}}{{rvHome}}/lib{{path.separator}}{{rvHome}}/lib/64 -Xmx200m -cp {{rvHome}}/lib/tibrvj.jar{{path.separator}}{{rvHome}}/lib/tibrvjsd.jar{{path.separator}}{{rvScriptJar}} com.tibco.rvscript.rvscript {{rvScriptFile}}</cmd>
<basedir>{{startInDir}}</basedir>
<toNode>fail</toNode>
<exceptionNode>fail</exceptionNode>
<timeOut>{{timeout}}</timeOut>
<killAtEnd>false</killAtEnd>
<wait>{{waitForCompletion}}</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<env>
    <Parameter>
    <key>PATH</key>
    <value>{{rvHome}}/bin:${PATH}</value>
    <name>Name</name>
    </Parameter>
    <Parameter>
    <key>LD_LIBRARY_PATH</key>
    <value>{{rvHome}}/lib:{{rvHome}}/lib/64:${LD_LIBRARY_PATH}</value>
    <name>Name</name>
    </Parameter>
    <Parameter>
    <key>SHLIB_PATH</key>
    <value>{{rvHome}}/lib:{{rvHome}}/lib/64:${SHLIB_PATH}</value>
    <name>Name</name>
    </Parameter>
    <Parameter>
    <key>LIBPATH</key>
    <value>{{rvHome}}/lib:{{rvHome}}/lib/64:${LIBPATH}</value>
    <name>Name</name>
    </Parameter>
</env>
<exitCodes>
</exitCodes>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert148" type="com.itko.lisa.test.CheckResultContains">
<log>RVScript threw Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Exception</param>
</CheckResult>

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>1091</graphx>
<graphy>454</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>550</graphx>
<graphy>1100</graphy>
    </Node>


</TestCase>
