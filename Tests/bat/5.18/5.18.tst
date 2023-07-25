<?xml version="1.0" ?>

<TestCase name="5.18" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/26/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="04/11/2023" host="na2devasgaks01" />
</meta>

<id>a1d828a5</id>
<Documentation>Description : Restart TIBCO Host, make sure application is still running upon restart.&#13;&#10;              Check runtime wsdl url.&#13;&#10;Scenario &#9;: SOAP BT(HTTP) &lt;-&gt; JAVA</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9MTYwNDYxOTE4MQ==</sig>
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
          uid="A7F9872A9E0011ED8E7C506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="deployApp" > 

<file>{{LISA_TC_PATH}}/data.txt</file>
<charset>UTF-8</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-deployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="getWsdl" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert145] fired false of type Result as String Contains Given String</log>
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
    <value>{{tibco.test.case.log.dir}}/ant_deploy.log</value>
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
    <value>timeout=360,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    <value>400</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="getWsdl" log="Get runtime WSDL"
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          uid="a1d828a5-getWsdl" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="invokeService" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert146" type="com.itko.lisa.test.CheckResultHTTPResponseCode">
<log>Expected response code was 200. Got {{lisa.repeatGetWsdl.http.responseCode}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>200</param>
</CheckResult>

<CheckResult assertTrue="false" name="Assert236" type="com.itko.lisa.test.CheckResultContains">
<log>GetWsdl response does not contain &quot;wsdl:definitions&quot;</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>wsdl:definitions</param>
</CheckResult>

<url>
<proto>http</proto>
<host>{{host1}}</host>
<port>{{port2}}</port>
<path>/TC5-18/</path>
<query>wsdl</query>
</url>
<images>false</images>
<sslInfo>
</sslInfo>
<encoding>UTF-8</encoding>
<params-saved-as-unicode>false</params-saved-as-unicode>
    </Node>


    <Node name="invokeService" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="a1d828a5-invokeService" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Kill-tibcohost" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert279" type="com.itko.lisa.test.CheckResultContains">
<log>Did not found {{output}} in SOAP response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{output}}</param>
</CheckResult>

<url>http://{{host1}}:{{port2}}/TC5-18/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiPg0KICA8c29hcGVudjpCb2R5Pg0KICAgIDxIZWxsb1JlcXVlc3QgeG1sbnM9Imh0dHA6Ly9ucy50aWJjby5jb20vSGVsbG8vIj57e2lucHV0fX08L0hlbGxvUmVxdWVzdD4NCiAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="Kill-tibcohost" log="Stop TIBCO Host with Mode=abort and Wait=true"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-Kill-tibcohost" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Kill-SystemNode" > 

<Documentation>Stop TIBCO Host in abort mode with wait set to true (synchronized call):&#13;&#10;TIBCO Host is supposed to wait for all the nodes to shutdown before it terminates.</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
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


    <Node name="Kill-SystemNode" log="Stop TIBCO Host with Mode=abort and Wait=true"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-Kill-SystemNode" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Kill-DevNode" > 

<Documentation>Stop TIBCO Host in abort mode with wait set to true (synchronized call):&#13;&#10;TIBCO Host is supposed to wait for all the nodes to shutdown before it terminates.</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
<Parameters>
    <Parameter>
    <key>processName</key>
    <value>tibamx_SystemNode</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="Kill-DevNode" log="Stop TIBCO Host with Mode=abort and Wait=true"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-Kill-DevNode" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Kill-Node1" > 

<Documentation>Stop TIBCO Host in abort mode with wait set to true (synchronized call):&#13;&#10;TIBCO Host is supposed to wait for all the nodes to shutdown before it terminates.</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
<Parameters>
    <Parameter>
    <key>processName</key>
    <value>tibamx_DevNode</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="Kill-Node1" log="Stop TIBCO Host with Mode=abort and Wait=true"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-Kill-Node1" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Kill-Node2" > 

<Documentation>Stop TIBCO Host in abort mode with wait set to true (synchronized call):&#13;&#10;TIBCO Host is supposed to wait for all the nodes to shutdown before it terminates.</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
<Parameters>
    <Parameter>
    <key>processName</key>
    <value>tibamx_{{env.node1.name}}</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="Kill-Node2" log="Stop TIBCO Host with Mode=abort and Wait=true"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-Kill-Node2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="wait" > 

<Documentation>Stop TIBCO Host in abort mode with wait set to true (synchronized call):&#13;&#10;TIBCO Host is supposed to wait for all the nodes to shutdown before it terminates.</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
<Parameters>
    <Parameter>
    <key>processName</key>
    <value>tibamx_{{env.node2.name}}</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="wait" log="repeat sleep"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-wait" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="verifyTIBCOHostDown" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>10</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>120</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="verifyTIBCOHostDown" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-verifyTIBCOHostDown" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="verifyNode1Down" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert116" type="com.itko.lisa.test.CheckResultContains">
<log>tibcohost was still up and running</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>SUCCESS</param>
</CheckResult>

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


    <Node name="verifyNode1Down" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-verifyNode1Down" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="verifyNode2Down" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert119" type="com.itko.lisa.test.CheckResultContains">
<log>Node {{env.node1.name}} was still up and running</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>SUCCESS</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>processName</key>
    <value>tibamx_{{env.node1.name}}</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="verifyNode2Down" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-verifyNode2Down" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="verifySystemNodeDown" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert120" type="com.itko.lisa.test.CheckResultContains">
<log>Node {{env.node2.name}} was still up and running</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>SUCCESS</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>processName</key>
    <value>tibamx_{{env.node2.name}}</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="verifySystemNodeDown" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-verifySystemNodeDown" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="backupTIBCOHostLog" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert121" type="com.itko.lisa.test.CheckResultContains">
<log>Node {{tibco.amx.admin.configuration1.tibcohostconfig1.node1.nodeName}} was still up and running</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>SUCCESS</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>processName</key>
    <value>tibamx_{{tibco.amx.admin.configuration1.tibcohostconfig1.node1.nodeName}}</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="backupTIBCOHostLog" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-backupTIBCOHostLog" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="startTIBCOHost" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CopyFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>fileIn</key>
    <value>{{tibco.test.suite.log.dir}}/tibcohost.log</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{tibco.test.suite.log.dir}}/tibcohost.backup.log</value>
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


    <Node name="startTIBCOHost" log="Re-start TIBCO Host"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-startTIBCOHost" 
          think="30S-60S" 
          useFilters="true" 
          quiet="false" 
          next="checkAdminUp" > 

<Subprocess>{{LISA_RELATIVE_PROJ_ROOT}}/Tests/libraries/amx/com/tibco/tibcohost/StartTibcoHost518.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>host</key>
    <value>{{LISA_HOST}}</value>
    <name>Host on which the TIBCOHost should be started</name>
    </Parameter>
    <Parameter>
    <key>tibcoHostinstance</key>
    <value>{{TIBCO_HOST_CONFIG}}/{{host.instance}}/host</value>
    <name>TIBCOHost instance directory. If host is remote, specify the TIBCOHost instance location on remote host.</name>
    </Parameter>
    <Parameter>
    <key>logFile</key>
    <value>{{tibco.test.suite.log.dir}}/tibcohost.log</value>
    <name>TIBCOHost log file to monitor to insure proper start-up</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>60</value>
    <name>Max number of seconds to wait to allow the TIBCOHost to start</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="checkAdminUp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-checkAdminUp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="getTimeLimit" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Admin failed to start on time</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/amx/admin/IsAdminUp.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>host</key>
    <value>{{LISA_HOST}}</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>{{tibco.amx.admin.configuration1.tibcohostconfig1.connector1.port}}</value>
    <name>Port</name>
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
    <key>secure</key>
    <value>false</value>
    <name>Use SSL to connect to Admin server</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>{{timeout}}</value>
    <name>Wait for a number of seconds before giving up on Admin server</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="getTimeLimit" log="get the timelimit"
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="a1d828a5-getTimeLimit" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="repeatGetWsdl" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>getTimeLimit step has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>Calendar future = Calendar.getInstance();&#10;future.add(Calendar.SECOND, timeout.intValue());&#10;testExec.setStateValue(&quot;future&quot;, future);</script>
    </Node>


    <Node name="repeatGetWsdl" log=""
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          uid="a1d828a5-repeatGetWsdl" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="wait-for-Admin-Plugin-Init" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert307" type="com.itko.lisa.test.AssertByScript">
<log>Wsdl App still not available from runtime Node after re-starting TIBCOHost - Waited for {{timeout}} seconds</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <script>future.before(Calendar.getInstance());</script>
        <language>beanshell</language>
        <copyprops>TestExecPropsAndSystemProps</copyprops>
</CheckResult>

<CheckResult assertTrue="false" name="Assert146" type="com.itko.lisa.test.CheckResultHTTPResponseCode">
<log>Expected response code was 200. Got {{lisa.repeatGetWsdl.http.responseCode}}</log>
<then>repeatSleep</then>
<valueToAssertKey></valueToAssertKey>
        <param>200</param>
</CheckResult>

<url>
<proto>http</proto>
<host>{{host1}}</host>
<port>{{port2}}</port>
<path>/TC5-18/</path>
<query>wsdl</query>
</url>
<images>false</images>
<sslInfo>
</sslInfo>
<encoding>UTF-8</encoding>
<params-saved-as-unicode>false</params-saved-as-unicode>
    </Node>


    <Node name="wait-for-Admin-Plugin-Init" log="repeat sleep"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-wait-for-Admin-Plugin-Init" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="invokeService2" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>300</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>300</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="invokeService2" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="a1d828a5-invokeService2" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="undeployApp" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert279" type="com.itko.lisa.test.CheckResultContains">
<log>Did not found {{output}} in SOAP response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{output}}</param>
</CheckResult>

<url>http://{{host1}}:{{port2}}/TC5-18/</url>
<action>sayHello</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiPg0KICA8c29hcGVudjpCb2R5Pg0KICAgIDxIZWxsb1JlcXVlc3QgeG1sbnM9Imh0dHA6Ly9ucy50aWJjby5jb20vSGVsbG8vIj57e2lucHV0fX08L0hlbGxvUmVxdWVzdD4NCiAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>application/soap+xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="undeployApp" log="Undeploy, delete app"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-undeployApp" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

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
    <value>{{tibco.test.case.log.dir}}/ant_undeploy.log</value>
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
    <value>timeout=360,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    <value>400</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="repeatSleep" log="repeat sleep"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="a1d828a5-repeatSleep" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="repeatGetWsdl" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>120</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>30</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="8E9F33CF9E0011ED8E7C506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="a1d828a5-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="a1d828a5-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
