<?xml version="1.0" ?>

<TestCase name="5.9" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/16/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/18/2023" host="na2devasgaks01" />
</meta>

<id>6cecd3c2</id>
<Documentation>Graceful Start intent.&#13;&#10;Use Node Svars, Binding properties, Reference wiring.&#13;&#10;&#13;&#10;Scenario: &#13;&#10;App1: SOAP BT(HTTP) &lt;-&gt; Java &lt;-&gt; Java &lt;-&gt; SCA (wired to App2)&#13;&#10;App2: SCA &lt;-&gt; Java&#13;&#10;&#13;&#10;Starting App1 also starts App2.&#13;&#10;Stopping App2 also stops App1.&#13;&#10;Clean up Apps at the end.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9LTE3MjgxNzkxMjU=</sig>
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

    <Node name="PropReaderStep" log=""
          type="com.itko.lisa.test.PropReaderNode" 
          version="1" 
          uid="6cecd3c2-PropReaderStep" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="deployApp" > 

<file>{{LISA_TC_PATH}}/data.txt</file>
<charset>DEFAULT</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="6cecd3c2-deployApp" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="invokeApp1Service1" > 

<Documentation>1. create app1 and app2, while enabled &quot;start-svc-first&quot; at app1&apos;s reference;&#13;&#10;2. wire app1 to app2;&#13;&#10;3. Distribute the components to differenct Nodes, that they linked by internal SVB.&#13;&#10;4. Deploy app1 and app2 without start.</Documentation>

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
    <value>tcTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="invokeApp1Service1" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="6cecd3c2-invokeApp1Service1" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="invokeApp2Service1" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="application failed with 404" type="com.itko.lisa.test.CheckResultContains">
<log>Application didn&apos;t start, the response failed with 404</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>404</param>
</CheckResult>

<url>http://{{host1}}:{{port1}}/bat.case5.9.svc1/</url>
<action>http://www.example.org/bat.case5.9/EchoElements</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9iYXQuY2FzZTUuOS8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8YmF0OkVjaG9FbGVtZW50cz4NCiAgICAgICAgIDxpbj57e3JlcXVlc3RTdHJpbmd9fTwvaW4+DQogICAgICA8L2JhdDpFY2hvRWxlbWVudHM+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="invokeApp2Service1" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="6cecd3c2-invokeApp2Service1" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="startApp1" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="application failed with 404" type="com.itko.lisa.test.CheckResultContains">
<log>Application didn&apos;t start, the response failed with 404</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>404</param>
</CheckResult>

<url>http://{{host1}}:{{port1}}/bat.case5.9/</url>
<action>http://www.example.org/bat.case5.9/EchoElements</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9iYXQuY2FzZTUuOS8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8YmF0OkVjaG9FbGVtZW50cz4NCiAgICAgICAgIDxpbj57e3JlcXVlc3RTdHJpbmd9fTwvaW4+DQogICAgICA8L2JhdDpFY2hvRWxlbWVudHM+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="startApp1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="6cecd3c2-startApp1" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="invokeApp1Service2" > 

<Documentation>start app1 should start app2 auto as app1&apos;s reference enabled &quot;start-svc-first&quot;;</Documentation>

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
    <value>{{tibco.test.case.log.dir}}/antStartApp1.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>start.app1</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>tcTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="invokeApp1Service2" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="6cecd3c2-invokeApp1Service2" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="invokeApp2Service2" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="NodeName" type="com.itko.lisa.test.CheckResultContains">
<log>The Node Name is: &lt;value&gt;{{env.node2.name}}&lt;/value&gt;</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>&lt;value&gt;{{env.node2.name}}&lt;/value&gt;</param>
</CheckResult>

<CheckResult assertTrue="false" name="Java2 called reference" type="com.itko.lisa.test.CheckResultContains">
<log>Java2 called reference will get bellow response: &lt;value&gt;Java1 echo : java2 -&amp;gt; Call Reference1&lt;/value&gt;</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>&lt;value&gt;Java1 echo : java2 -&amp;gt; Call Reference1&lt;/value&gt;</param>
</CheckResult>

<url>http://{{host1}}:{{port2}}/bat.case5.9.svc1/</url>
<action>http://www.example.org/bat.case5.9/EchoElements</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9iYXQuY2FzZTUuOS8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8YmF0OkVjaG9FbGVtZW50cz4NCiAgICAgICAgIDxpbj57e3JlcXVlc3RTdHJpbmd9fTwvaW4+DQogICAgICA8L2JhdDpFY2hvRWxlbWVudHM+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="invokeApp2Service2" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="6cecd3c2-invokeApp2Service2" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="stopApp2" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="NodeName" type="com.itko.lisa.test.CheckResultContains">
<log>NodeName is: {{env.node2.name}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>&lt;value&gt;{{env.node2.name}}&lt;/value&gt;</param>
</CheckResult>

<CheckResult assertTrue="false" name="Java1  response:" type="com.itko.lisa.test.CheckResultContains">
<log>Java response is: &lt;value&gt;Java1 echo : {{responseString}}&lt;/value&gt;</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>&lt;value&gt;Java1 echo : {{responseString}}&lt;/value&gt;</param>
</CheckResult>

<url>http://{{host1}}:{{port2}}/bat.case5.9/</url>
<action>http://www.example.org/bat.case5.9/EchoElements</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9iYXQuY2FzZTUuOS8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8YmF0OkVjaG9FbGVtZW50cz4NCiAgICAgICAgIDxpbj57e3JlcXVlc3RTdHJpbmd9fTwvaW4+DQogICAgICA8L2JhdDpFY2hvRWxlbWVudHM+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="stopApp2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="6cecd3c2-stopApp2" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="invokeApp1Service3" > 

<Documentation>stop app2 should stop app1 auto as app1&apos;s reference enabled &quot;start-svc-first&quot;;</Documentation>

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
    <value>{{tibco.test.case.log.dir}}/antStopApp2.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>stop.app2</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>tcTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="invokeApp1Service3" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="6cecd3c2-invokeApp1Service3" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="invokeApp2Service3" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="application failed with 404" type="com.itko.lisa.test.CheckResultContains">
<log>Application stoped, the response failed with 404</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>404</param>
</CheckResult>

<url>http://{{host1}}:{{port1}}/bat.case5.9.svc1/</url>
<action>http://www.example.org/bat.case5.9/EchoElements</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9iYXQuY2FzZTUuOS8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8YmF0OkVjaG9FbGVtZW50cz4NCiAgICAgICAgIDxpbj57e3JlcXVlc3RTdHJpbmd9fTwvaW4+DQogICAgICA8L2JhdDpFY2hvRWxlbWVudHM+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="invokeApp2Service3" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="6cecd3c2-invokeApp2Service3" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="cleanup" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="application failed with 404" type="com.itko.lisa.test.CheckResultContains">
<log>Application stoped, the response failed with 404</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>404</param>
</CheckResult>

<url>http://{{host1}}:{{port1}}/bat.case5.9/</url>
<action>http://www.example.org/bat.case5.9/EchoElements</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmJhdD0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9iYXQuY2FzZTUuOS8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8YmF0OkVjaG9FbGVtZW50cz4NCiAgICAgICAgIDxpbj57e3JlcXVlc3RTdHJpbmd9fTwvaW4+DQogICAgICA8L2JhdDpFY2hvRWxlbWVudHM+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="cleanup" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="6cecd3c2-cleanup" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="Re-Deploy" > 


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
    <value>tcTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="Re-Deploy" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="6cecd3c2-Re-Deploy" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<Documentation>1. create app1 and app2, while enabled &quot;start-svc-first&quot; at app1&apos;s reference;&#13;&#10;2. wire app1 to app2;&#13;&#10;3. Distribute the components to differenct Nodes, that they linked by internal SVB.&#13;&#10;4. Deploy app1 and app2 without start.</Documentation>

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
    <value>tcTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="6cecd3c2-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="6cecd3c2-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="D8258887958911ED81C6506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


</TestCase>
