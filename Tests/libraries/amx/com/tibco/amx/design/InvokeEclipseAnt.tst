<?xml version="1.0" ?>

<TestCase name="InvokeEclipseAnt" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/19/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/19/2022" host="na2devasgaks01" />
</meta>

<id>54d3c133</id>
<Documentation>Invokes the TIBCO BusinessStudio Ant utility.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPS01NzI3ODAwNDA=</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>studioHome</key>
    <value>{{TIBCO_BS_HOME}}</value>
    <name>BusinessStudio home folder. Required.</name>
    </Parameter>
    <Parameter>
    <key>projectBaseDir</key>
    <value></value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFile</key>
    <value></value>
    <name>Absolute path to the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>target</key>
    <value></value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>data</key>
    <value></value>
    <name>Absolute path to the Eclipse workspace. Required.</name>
    </Parameter>
    <Parameter>
    <key>propertyFile</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value></value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>60</value>
    <name>Number of seconds to wait for completion. Required.</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>antCmdLineArgs</key>
    <value></value>
    <name>antCmdLineArgs</name>
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
    <key>lisa.executeEclipseAnt.rsp</key>
    <value></value>
    <name>lisa.executeEclipseAnt.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.executeEclipseAnt.rsp.time</key>
    <value></value>
    <name>lisa.executeEclipseAnt.rsp.time</name>
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
    <key>lisa.getAntArguments.rsp</key>
    <value></value>
    <name>lisa.getAntArguments.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getAntArguments.rsp.time</key>
    <value></value>
    <name>lisa.getAntArguments.rsp.time</name>
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
    <key>lisa.verifyInputVariables.rsp</key>
    <value></value>
    <name>lisa.verifyInputVariables.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.verifyInputVariables.rsp.time</key>
    <value></value>
    <name>lisa.verifyInputVariables.rsp.time</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="54d3c133-log" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="verifyInputVariables" > 

<log>Invoking ant with following variables:&#13;&#10;studioHome={{studioHome}}&#13;&#10;buildFile={{buildFile}}&#13;&#10;data={{data}}&#13;&#10;propertyFile={{propertyFile}}&#13;&#10;propertyList={{propertyList}}&#13;&#10;target={{target}}&#13;&#10;projectBaseDir={{projectBaseDir}}&#13;&#10;</log>
    </Node>


    <Node name="verifyInputVariables" log="This step verifies the input variables for the invokeAnt subprocess."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="54d3c133-verifyInputVariables" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="getAntArguments" > 


      <!-- Assertions -->
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

<onerror>abort</onerror>
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.FileReader;&#13;&#10;import java.io.InputStream;&#13;&#10;import java.io.OutputStream;&#13;&#10;import java.io.PrintStream;&#13;&#10;import java.util.Enumeration;&#13;&#10;import java.util.Properties;&#13;&#10;import java.util.Set;&#13;&#10;&#13;&#10;String checkInputVariables() {&#13;&#10;&#9;&#9;String errorStr = &quot;Fail: &quot;;&#13;&#10;&#9;&#9;try {&#13;&#10;            if ((studioHome == null) || (studioHome.equals(&quot;&quot;)) ) {&#13;&#10;&#9;&#9;&#9;&#9;throw new Exception(&quot;studioHome cannot be null.&quot;);&#13;&#10;&#9;&#9;&#9;}&#13;&#10;           &#13;&#10;&#9;&#9;&#9;File studioHome2 = new File(testExec.parseInState(studioHome).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;&#9;&#9;&#9;if (!studioHome2.exists()) {&#13;&#10;&#9;&#9;&#9;&#9;throw new Exception(&quot;Studio home not found: &quot;+studioHome);&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#13;&#10;&#9;&#9;&#9;if ((buildFile == null) || (buildFile.equals(&quot;&quot;)) ) {&#13;&#10;&#9;&#9;&#9;&#9;throw new Exception(&quot;buildFile cannot be null.&quot;);&#13;&#10;&#9;&#9;&#9;}&#13;&#10;           &#13;&#10;&#9;&#9;&#9;File buildFile2 = new File(testExec.parseInState(buildFile).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;&#9;&#9;&#9;if (!buildFile2.canRead()) {&#13;&#10;&#9;&#9;&#9;&#9;throw new Exception(&quot;Build file not found/cannot be read: &quot;+buildFile);&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;if (!buildFile2.isFile()) {&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;throw new Exception(&quot;build file is not a normal file: &quot;+buildFile);&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#13;&#10;            if ((data == null) || (data.equals(&quot;&quot;)) ) {&#13;&#10;&#9;&#9;&#9;&#9;throw new Exception(&quot;data cannot be null.&quot;);&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;File propertyFile2 = null;&#13;&#10;&#9;&#9;&#9;if ((propertyFile != null) &amp;&amp; (!propertyFile.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;&#9;&#9;propertyFile = new File(testExec.parseInState(propertyFile).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;&#9;&#9;&#9;&#9;if (!propertyFile2.canRead()) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;throw new Exception(&quot;Property file not found/cannot be read it: &quot;+propertyFile);&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;if (!propertyFile.isFile()) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;throw new Exception(&quot;property file is not a normal file: &quot;+propertyFile);&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#13;&#10;&#9;&#9;&#9;File projectBaseDir2 = null;&#13;&#10;&#9;&#9;&#9;if ((projectBaseDir != null) &amp;&amp; (!projectBaseDir.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;&#9;&#9;projectBaseDir2 = new File(testExec.parseInState(projectBaseDir).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;&#9;&#9;&#9;&#9;if((!projectBaseDir2.exists()) || (!projectBaseDir2.isDirectory())) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;throw new Exception(&quot;The project base directory is not valid: &quot;+projectBaseDir);&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;}&#13;&#10;             &#13;&#10;&#9;&#9;&#9;response = &quot;Pass: Input variables are valid.&quot;;&#13;&#10;&#13;&#10;&#9;&#9;}catch(Exception e) {&#13;&#10;&#9;&#9;&#9;response = errorStr + e.getLocalizedMessage();&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;return response;&#13;&#10;&#9;}&#13;&#10;&#13;&#10;return checkInputVariables();</script>
    </Node>


    <Node name="getAntArguments" log="This step gets the arguments to be passed to the ant invocation."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="54d3c133-getAntArguments" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="executeEclipseAnt" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getAntArguments.rsp</valueToFilterKey>
      <prop>antCmdLineArgs</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert247" type="com.itko.lisa.test.CheckResultRegEx">
<log>Exception was thrown</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Fail:.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.FileReader;&#13;&#10;import java.io.InputStream;&#13;&#10;import java.io.OutputStream;&#13;&#10;import java.io.PrintStream;&#13;&#10;import java.util.Enumeration;&#13;&#10;import java.util.Properties;&#13;&#10;import java.util.Set;&#13;&#10;&#13;&#10;//import org.apache.tools.ant.DefaultLogger;&#13;&#10;//import org.apache.tools.ant.Project;&#13;&#10;//import org.apache.tools.ant.ProjectHelper;&#13;&#10;&#13;&#10;&#9;&#13;&#10;&#9;&#9;&#9;String getAntArgs() {&#13;&#10;&#9;&#9;&#9;String response = &quot;&quot;;&#13;&#10;&#9;&#9;&#9;FileInputStream fis = null;&#13;&#10;&#9;&#9;&#9;try {&#13;&#10;&#9;&#9;&#9;&#9;File propertyFile = null;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;Properties props = null;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;if ((propertyFile != null) &amp;&amp; (!propertyFile.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;response = response+&quot; -propertyfile &quot;+propertyFile.replace(&quot;\\&quot;,&quot;/&quot;);&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;if ((propertyList != null) &amp;&amp; (!propertyList.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;String [] propArray = propertyList.split(&quot;,&quot;);&#13;&#10;&#9;&#9;&#9;&#9;&#9;for (int i =0; i &lt; propArray.length; i++) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;String [] keyPair = propArray[i].split(&quot;=&quot;);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;if (keyPair.length == 1) continue;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;//should we trim empty spaces?&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;response = response+&quot; -D&quot;+(String)keyPair[0]+&quot;=&quot;+(String)keyPair[1];&#13;&#10;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;                if ((projectBaseDir != null) &amp;&amp; (!projectBaseDir.equals(&quot;&quot;))) {&#13;&#10;                    response = response+&quot; -D&quot;+&quot;basedir=\&quot;&quot;+(String)projectBaseDir.replace(&quot;\\&quot;,&quot;/&quot;) + &quot;\&quot;&quot;;&#13;&#10;                }&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;}catch(Exception e) {&#13;&#10;&#9;&#9;&#9;&#9;response = &quot;Fail: &quot;+e;&#13;&#10;&#9;&#9;&#9;}finally {&#13;&#10;&#9;&#9;&#9;&#9;try {&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;if (fis != null) fis.close();&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;}catch(Exception ioe) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;//ignore.&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;//System.out.println(&quot;response is:&quot;+response);&#13;&#10;&#9;&#9;&#9;return response;&#13;&#10;&#9;&#9;}&#13;&#10;return getAntArgs();</script>
    </Node>


    <Node name="executeEclipseAnt" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="54d3c133-executeEclipseAnt" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/JVMWrapper.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>wrapperName</key>
    <value>{{studioHome}}/eclipse/amx_eclipse_ant</value>
    <name>Absolute path to the wrapper application</name>
    </Parameter>
    <Parameter>
    <key>command</key>
    <value>&lt;&lt;null&gt;&gt;</value>
    <name>One of the following command switches: --install, --uninstall, --update, --start, --stop, --run</name>
    </Parameter>
    <Parameter>
    <key>propFile</key>
    <value>{{studioHome}}/eclipse/amx_eclipse_ant.tra</value>
    <name>Absolute path to the tra file used to launch the wrapper</name>
    </Parameter>
    <Parameter>
    <key>extraCommand</key>
    <value>{{antCmdLineArgs}} -buildfile &quot;{{=buildFile.replace(&apos;\\&apos;,&apos;/&apos;)}}&quot; {{target}} -data &quot;{{=data.replace(&apos;\\&apos;,&apos;/&apos;)}}&quot;</value>
    <name>Extra command a specific wrapper might need</name>
    </Parameter>
    <Parameter>
    <key>startInDir</key>
    <value>{{studioHome}}/eclipse</value>
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
    <value>{{timeout}}</value>
    <name>Number of seconds to sleep on Windows platforms after starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitAfterOnUnix</key>
    <value>{{timeout}}</value>
    <name>Number of seconds to sleep on Unix platforms after starting the JVM wrapper</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="54d3c133-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="54d3c133-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="FA350D637F7711EDA0A8506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


</TestCase>
