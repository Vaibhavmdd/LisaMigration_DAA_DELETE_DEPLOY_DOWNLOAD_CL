<?xml version="1.0" ?>

<TestCase name="5.8" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/16/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/18/2023" host="na2devasgaks01" />
</meta>

<id>fadfc6d4</id>
<Documentation>Description : Test Prepare-to-Undeploy intent.&#13;&#10;              Node-level Substitution Variables are used for http Connector and Node name.&#13;&#10;              &#13;&#10;Scenario: Composite: SOAP BT(HTTP) &lt;-&gt; Mock&#13;&#10;&#13;&#10;MEP: In-Out</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9LTE5MTI0NDczMTI=</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/amxconfig.template.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/amxbuild.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="fadfc6d4-deployApp" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="invokeService1" > 

<Documentation>Deploy Mock IT Application and User Application.&#13;&#10;1. User Application using product distribute on the IT application.</Documentation>

      <!-- Assertions -->
<CheckResult assertTrue="false" name="AntFinishSuccessful" type="com.itko.lisa.test.CheckResultContains">
<log>The Response should contain: BUILD SUCCESSFUL</log>
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
    <value>timeout=600,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{TIBCO_JAVA_HOME}}/lib</value>
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
    <name>waitForCompletion</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>610</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="invokeService1" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="fadfc6d4-invokeService1" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="prepareUndeploy" > 

<Documentation>Invoke the User Application to verify whether it is running?</Documentation>

      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for Application Response" type="com.itko.lisa.test.CheckResultContains">
<log>Checking for string &lt;out&gt;Upgrade IT(1.0.0)-&amp;gt; NodeName = {{env.node1.name}}; ProcessTime = 10; VersionNumber = 1.0.0; &lt;/out&gt; in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>&lt;out&gt;Upgrade IT(1.0.0)-&amp;gt; NodeName = {{env.node1.name}}; ProcessTime = 10; VersionNumber = 1.0.0; &lt;/out&gt;</param>
</CheckResult>

<url>http://{{host1}}:{{port2}}/upgrade.mock.it.case1/</url>
<action>http://www.example.org/upgrade.mock.it.case1/NewOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnVwZz0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy91cGdyYWRlLm1vY2suaXQuY2FzZTEvIj4NCiAgIDxzb2FwZW52OkhlYWRlci8+DQogICA8c29hcGVudjpCb2R5Pg0KICAgICAgPHVwZzpOZXdPcGVyYXRpb24+DQogICAgICAgICA8aW4+Y2FzZTUuODwvaW4+DQogICAgICA8L3VwZzpOZXdPcGVyYXRpb24+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="prepareUndeploy" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="fadfc6d4-prepareUndeploy" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="readLog" > 

<Documentation>Undeploy application with force &quot;false&quot;, Runtime will do prepare-before-undeploy.&#13;&#10;And in the &lt;Node&gt;.log should have below String:&#13;&#10;1. ************Upgrade IT(1.0.0)-&gt; Class: ImplementationAdapter -&gt; prepareToUndeployImplementation ended&#13;&#10;2. ************Upgrade IT(1.0.0)-&gt; Class: ImplementationAdapter -&gt; prepareToUndeployImplementation started&#13;&#10;3. Type: STOP&#13;&#10;4. Scope: APPLICATION&#13;&#10;5. Mode: PREPARE_FOR_UNDEPLOY</Documentation>

      <!-- Assertions -->
<CheckResult assertTrue="false" name="AntFinishSuccessful" type="com.itko.lisa.test.CheckResultContains">
<log>The Response should contain: BUILD SUCCESSFUL</log>
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
    <value>{{tibco.test.case.log.dir}}/antPrepareUndeploy.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>prepare.undeploy</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>timeout=600,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{TIBCO_JAVA_HOME}}/lib</value>
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
    <name>waitForCompletion</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>610</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="readLog" log=""
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          uid="fadfc6d4-readLog" 
          think="0" 
          useFilters="true" 
          quiet="true" 
          next="invokeService2" > 

<Documentation>Read the log of Node, verify the prepare-before-undeploy life cycle is right.&#13;&#10;Verify the &lt;Node&gt;.log has below String:&#13;&#10;1. ************Upgrade IT(1.0.0)-&gt; Class: ImplementationAdapter -&gt; prepareToUndeployImplementation ended&#13;&#10;2. ************Upgrade IT(1.0.0)-&gt; Class: ImplementationAdapter -&gt; prepareToUndeployImplementation started&#13;&#10;3. Type: STOP&#13;&#10;4. Scope: APPLICATION&#13;&#10;5. Mode: PREPARE_FOR_UNDEPLOY</Documentation>

      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check LifeEvent MODE Property" type="com.itko.lisa.test.CheckResultContains">
<log>Log should contain MODE property: Mode: PREPARE_FOR_UNDEPLOY</log>
<then>readLog2</then>
<valueToAssertKey></valueToAssertKey>
        <param>Mode: PREPARE_FOR_UNDEPLOY</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check LifeEvent SCOPE Property" type="com.itko.lisa.test.CheckResultContains">
<log>Log should contain SCOPE property: Scope: APPLICATION</log>
<then>readLog2</then>
<valueToAssertKey></valueToAssertKey>
        <param>Scope: APPLICATION</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check LifeEvent TYPE Property" type="com.itko.lisa.test.CheckResultContains">
<log>Log should contain TYPE property: Type: STOP</log>
<then>readLog2</then>
<valueToAssertKey></valueToAssertKey>
        <param>Type: STOP</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check prepare-before-undeploy started" type="com.itko.lisa.test.CheckResultContains">
<log>Log file should contain: ************Upgrade IT(1.0.0)-&gt; Class: ImplementationAdapter -&gt; prepareToUndeployImplementation started</log>
<then>readLog2</then>
<valueToAssertKey></valueToAssertKey>
        <param>************Upgrade IT(1.0.0)-&gt; Class: ImplementationAdapter -&gt; prepareToUndeployImplementation started</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check prepare-before-undeploy finished" type="com.itko.lisa.test.CheckResultContains">
<log>Log file should contain: ************Upgrade IT(1.0.0)-&gt; Class: ImplementationAdapter -&gt; prepareToUndeployImplementation ended</log>
<then>readLog2</then>
<valueToAssertKey></valueToAssertKey>
        <param>************Upgrade IT(1.0.0)-&gt; Class: ImplementationAdapter -&gt; prepareToUndeployImplementation ended</param>
</CheckResult>

<Loc>{{tibco.test.suite.log.dir}}/{{env.node1.name}}.log</Loc>
<charset>UTF-8</charset>
<PropKey></PropKey>
<onFail>abort</onFail>
    </Node>


    <Node name="invokeService2" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="fadfc6d4-invokeService2" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="undeploy" > 

<Documentation>Verify prepare-before-undeploy finished fine and get 404 error.</Documentation>

      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for Application Response" type="com.itko.lisa.test.CheckResultContains">
<log>404 Not Found was supposed to be in the Response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>404</param>
</CheckResult>

<url>http://{{host1}}:{{port1}}/upgrade.mock.it.case1/</url>
<action>http://www.example.org/upgrade.mock.it.case1/NewOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnVwZz0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy91cGdyYWRlLm1vY2suaXQuY2FzZTEvIj4NCiAgIDxzb2FwZW52OkhlYWRlci8+DQogICA8c29hcGVudjpCb2R5Pg0KICAgICAgPHVwZzpOZXdPcGVyYXRpb24+DQogICAgICAgICA8aW4+Y2FzZTUuODwvaW4+DQogICAgICA8L3VwZzpOZXdPcGVyYXRpb24+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="undeploy" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="fadfc6d4-undeploy" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<Documentation>Cleanup the Mock IT application and User application.</Documentation>

      <!-- Assertions -->
<CheckResult assertTrue="false" name="AntFinishSuccessful" type="com.itko.lisa.test.CheckResultContains">
<log>The Response should contain: BUILD SUCCESSFUL</log>
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
    <value>{{tibco.test.case.log.dir}}/antCleanup.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>cleanup</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>timeout=600,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{TIBCO_JAVA_HOME}}/lib</value>
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
    <value>610</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="readLog2" log=""
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          uid="fadfc6d4-readLog2" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="invokeService2" > 

<Documentation>Read the log of Node, verify the prepare-before-undeploy life cycle is right.&#13;&#10;Verify the &lt;Node&gt;.log has below String:&#13;&#10;1. ************Upgrade IT(1.0.0)-&gt; Class: ImplementationAdapter -&gt; prepareToUndeployImplementation ended&#13;&#10;2. ************Upgrade IT(1.0.0)-&gt; Class: ImplementationAdapter -&gt; prepareToUndeployImplementation started&#13;&#10;3. Type: STOP&#13;&#10;4. Scope: APPLICATION&#13;&#10;5. Mode: PREPARE_FOR_UNDEPLOY</Documentation>

      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check LifeEvent MODE Property" type="com.itko.lisa.test.CheckResultContains">
<log>Log should contain MODE property: Mode: PREPARE_FOR_UNDEPLOY</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Mode: PREPARE_FOR_UNDEPLOY</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check LifeEvent SCOPE Property" type="com.itko.lisa.test.CheckResultContains">
<log>Log should contain SCOPE property: Scope: APPLICATION</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Scope: APPLICATION</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check LifeEvent TYPE Property" type="com.itko.lisa.test.CheckResultContains">
<log>Log should contain TYPE property: Type: STOP</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Type: STOP</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check prepare-before-undeploy started" type="com.itko.lisa.test.CheckResultContains">
<log>Log file should contain: ************Upgrade IT(1.0.0)-&gt; Class: ImplementationAdapter -&gt; prepareToUndeployImplementation started</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>************Upgrade IT(1.0.0)-&gt; Class: ImplementationAdapter -&gt; prepareToUndeployImplementation started</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check prepare-before-undeploy finished" type="com.itko.lisa.test.CheckResultContains">
<log>Log file should contain: ************Upgrade IT(1.0.0)-&gt; Class: ImplementationAdapter -&gt; prepareToUndeployImplementation ended</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>************Upgrade IT(1.0.0)-&gt; Class: ImplementationAdapter -&gt; prepareToUndeployImplementation ended</param>
</CheckResult>

<Loc>{{tibco.test.suite.log.dir}}/setup/{{env.node1.name}}.log.1</Loc>
<charset>DEFAULT</charset>
<PropKey></PropKey>
<onFail>abort</onFail>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="CDCB1575958911ED81C6506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="fadfc6d4-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="fadfc6d4-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
