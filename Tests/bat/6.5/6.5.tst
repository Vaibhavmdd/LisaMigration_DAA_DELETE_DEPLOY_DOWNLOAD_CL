<?xml version="1.0" ?>

<TestCase name="6.5" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="02/10/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="02/10/2023" host="na2devasgaks01" />
</meta>

<id>2d8d8cc6</id>
<Documentation>Mediation with DynamicRoute and QueryDB Tasks.&#13;&#10;Clean up App, RI, RT at the end.&#13;&#10;&#13;&#10;Scenario: &#9;&#13;&#10;    Composite 1: SOAP BT(HTTP) &lt;-&gt; Mediation-SCA (wired by implementation)&#13;&#10;    Composite 2: SCA &lt;-&gt; Mediation (with GenerateReply Task)&#13;&#10;&#13;&#10;MEP: In-Out &#13;&#10;SOAP Version: 1.1 &#13;&#10;SOAP Style/Encoding: Document/Literal</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9NTIzMzg0MjM0</sig>
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
          uid="2d8d8cc6-PropReaderStep" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="deployAppC1_C2" > 

<file>{{LISA_TC_PATH}}/data_g11n.txt</file>
<charset>UTF-8</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="deployAppC1_C2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="2d8d8cc6-deployAppC1_C2" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="InvokeSDRService" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
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
    <value>deployTimeout=300,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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


    <Node name="InvokeSDRService" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="2d8d8cc6-InvokeSDRService" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="undeployApps" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for Name" type="com.itko.lisa.test.CheckResultContains">
<log>Found {{Output_Name}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Output_Name}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for GenerateReply" type="com.itko.lisa.test.CheckResultContains">
<log>Found {{Input_AppName}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Input_AppName}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for Address" type="com.itko.lisa.test.CheckResultContains">
<log>Found {{Output_Address}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Output_Address}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for City" type="com.itko.lisa.test.CheckResultContains">
<log>Found {{Output_City}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Output_City}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for State" type="com.itko.lisa.test.CheckResultContains">
<log>Found {{Output_State}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Output_State}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for Zip" type="com.itko.lisa.test.CheckResultContains">
<log>Found {{Output_Zip}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{Output_Zip}}</param>
</CheckResult>

<url>http://{{host1}}:9965/addressPort/</url>
<action>AddressOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmFkZD0iaHR0cDovL3RpYmNvLmNvbS9tYXRyaXgvcWEveHNkL2FkZHJlc3MiPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8YWRkOkFkZHJlc3NfRWxlbWVudD4NCiAgICAgICAgIDxhZGQ6TmFtZT57e0lucHV0X0FwcE5hbWV9fTwvYWRkOk5hbWU+DQogICAgICAgICA8YWRkOkFkZHJlc3M+e3tJbnB1dF9TZXJ2aWNlTmFtZX19PC9hZGQ6QWRkcmVzcz4NCiAgICAgICAgIDxhZGQ6Q2l0eT57e0lucHV0X0NpdHl9fTwvYWRkOkNpdHk+DQogICAgICAgICA8YWRkOlN0YXRlPnt7SW5wdXRfU3RhdGV9fTwvYWRkOlN0YXRlPg0KICAgICAgICAgPGFkZDpaaXA+e3tJbnB1dF9Vc2VySURGcm9tREJ9fTwvYWRkOlppcD4NCiAgICAgIDwvYWRkOkFkZHJlc3NfRWxlbWVudD4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>abort</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="undeployApps" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="2d8d8cc6-undeployApps" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<Documentation>Note: Added two assertions because there is a defect that generates BUILD SUCCESSFUL followed by BUILD FAILED in the same ant script !</Documentation>

      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Undeployment failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert137" type="com.itko.lisa.test.CheckResultContains">
<log>Undeployment failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD FAILED</param>
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
    <value>deployTimeout=500,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    <value>300</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="14140227A91B11ED9E1D506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="2d8d8cc6-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="2d8d8cc6-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
