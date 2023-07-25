<?xml version="1.0" ?>

<TestCase name="5.19" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="03/08/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="03/08/2023" host="na2devasgaks01" />
</meta>

<id>fd0c9888</id>
<Documentation>Design Time CLI:&#13;&#10;Import SOA project (SOAP-Java-SOAP) and Java project into new Workspace&#13;&#10;Create new Composite&#13;&#10;Add Java Component to Composite&#13;&#10;Promote Service and Reference &#13;&#10;Create DAA&#13;&#10;&#13;&#10;Admin CLI:&#13;&#10;Add SOAP/HTTP binding to Service and Reference&#13;&#10;Deploy App&#13;&#10;Invoke Service&#13;&#10;Undeploy App</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9LTEwODc5MTk1OA==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/amxconfig.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/amxbuild.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

    <Node name="PropReaderStep" log=""
          type="com.itko.lisa.test.PropReaderNode" 
          version="1" 
          uid="fd0c9888-PropReaderStep" 
          think="" 
          useFilters="true" 
          quiet="false" 
          next="supportedOrNot" > 

<file>{{LISA_TC_PATH}}/data.txt</file>
<charset>DEFAULT</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="supportedOrNot" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="fd0c9888-supportedOrNot" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="createDAA" > 

<Documentation>This feature is not supported on all OS</Documentation>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Test case is skipped. Feature not supported on this OS</log>
<then>end</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

<onerror>abort</onerror>
<script>/*&#13;&#10;if (os_name.contains(&quot;Linux&quot;)) { // supported&#13;&#10; return true;&#13;&#10;}&#13;&#10;&#13;&#10;if (os_name.contains(&quot;Windows&quot;)) { // supported &#13;&#10; return true;&#13;&#10;}&#13;&#10;&#13;&#10;if (os_name.contains(&quot;SunOS&quot;)) { // supported&#13;&#10; return true;&#13;&#10;}&#13;&#10;&#13;&#10;if (os_name.contains(&quot;HP-UX&quot;)) { // not supported&#13;&#10; return false;&#13;&#10;}&#13;&#10;&#13;&#10;if (os_name.contains(&quot;AIX&quot;)) { // not supported&#13;&#10; return false;&#13;&#10;}&#13;&#10;&#13;&#10;if (os_name.contains(&quot;Mac&quot;)) { // not supported&#13;&#10; return false;&#13;&#10;}&#13;&#10;&#13;&#10;// by default, just skip that test case&#13;&#10;return false;&#13;&#10;*/&#13;&#10;import java.io.File;&#13;&#10;String ext = &quot;&quot;;&#13;&#10;if (os_name.contains(&quot;Windows&quot;))&#13;&#10; ext = &quot;.exe&quot;;&#13;&#10;File exe = new File(TIBCO_BS_HOME.replace(&quot;\\&quot;,&quot;/&quot;) + &quot;/eclipse/amx_eclipse_ant&quot; + ext);&#13;&#10;if (exe.exists())&#13;&#10; return true;&#13;&#10;else&#13;&#10; return false;</script>
    </Node>


    <Node name="createDAA" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="fd0c9888-createDAA" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="deployApp" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert142" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert142] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/amx/design/InvokeEclipseAnt.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
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
    <value>{{LISA_TC_PATH}}/build.xml</value>
    <name>Absolute path to the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>target</key>
    <value></value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>data</key>
    <value>{{tibco.test.case.log.dir}}/WS1</value>
    <name>Absolute path to the Eclipse workspace. Required.</name>
    </Parameter>
    <Parameter>
    <key>propertyFile</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>soa.project.loc={{soa.project.loc}},java.project.loc={{java.project.loc}},projectName={{projectName}},compositeName={{compositeName}},newCompositeName={{newCompositeName}},daaLoc={{daaLoc}},componentName={{componentName}},implementationLoc={{implementationLoc}},sourceProject={{sourceProject}},referenceProject={{referenceProject}},featureid={{featureid}},RT={{RT}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>1800</value>
    <name>Number of seconds to wait for completion. Required.</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="fd0c9888-deployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="invoke-AMX-Service" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert362" type="com.itko.lisa.test.CheckResultContains">
<log>Deployment failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value></value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.amx.buildfile.tc}}</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antDeploy.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>deploy.app</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=600,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}, WS={{tibco.test.case.log.dir}}/WS1</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{TIBCO_JAVA_HOME}}/jre/lib</value>
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
    <value>true</value>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="invoke-AMX-Service" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="fd0c9888-invoke-AMX-Service" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="undeployApp" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for Name" type="com.itko.lisa.test.CheckResultContains">
<log>Look for {{Name}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Name}}</param>
</CheckResult>

<url>http://{{host1}}:{{port519}}/helloWorldPT/BAT5.19/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmhlbD0iaHR0cDovL25zLnRpYmNvLmNvbS9IZWxsby8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8aGVsOkhlbGxvUmVxdWVzdD57e05hbWV9fTwvaGVsOkhlbGxvUmVxdWVzdD4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="undeployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="fd0c9888-undeployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert363" type="com.itko.lisa.test.CheckResultContains">
<log>Undeployment failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value></value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.amx.buildfile.tc}}</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antUndeploy.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>undeploy.app</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=600,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{TIBCO_JAVA_HOME}}/jre/lib</value>
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
    <value>true</value>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="9A0C5098BD8D11ED9AE9506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="fd0c9888-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="fd0c9888-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
