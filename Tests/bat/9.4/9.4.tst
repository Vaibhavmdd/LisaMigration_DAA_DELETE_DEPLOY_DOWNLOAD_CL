<?xml version="1.0" ?>

<TestCase name="9.4" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="03/06/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="03/06/2023" host="na2devasgaks01" />
</meta>

<id>70c16865</id>
<Documentation>Test Wire by Implementation of IWAP promoted reference. &#13;&#10;Have Service Provider with three different ServiceName, &#13;&#10;and invoking the IWAP Service with specific input will be routed to different Service provider dynamically.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9LTE3NTYyNDUxNjk=</sig>
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
          uid="70c16865-PropReaderStep" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="deployApp" > 

<file>{{LISA_TC_PATH}}/config.txt</file>
<charset>DEFAULT</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="70c16865-deployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="InvokeWebApp_P1" > 


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


    <Node name="InvokeWebApp_P1" log=""
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          uid="70c16865-InvokeWebApp_P1" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="InvokeWebApp_P2" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="ServiceName" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find &quot;address information SDRAppNamePSCase31_p1&quot;</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>SDRAppNamePSCase31_p1</param>
</CheckResult>

<CheckResult assertTrue="false" name="ReturnFromWhichService" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find &quot;10001&quot; which is expected to be retruned by Service Provider SDRAppNamePSCase31_p1</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>10001</param>
</CheckResult>

<CheckResult assertTrue="false" name="ReturnFromWhichState" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find &quot;My State&quot; which is expected to be retruned by Service Provider SDRAppNamePSCase31_p1</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>My State</param>
</CheckResult>

<CheckResult assertTrue="false" name="ReturnFromWhichCity" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find &quot;Sunnyvale&quot; which is expected to be retruned by Service Provider SDRAppNamePSCase31_p1</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Sunnyvale</param>
</CheckResult>

<url>
<proto>http</proto>
<host>{{host1}}</host>
<port>{{HttpConnector_BAT9.4}}</port>
<path>/bat94/WebApp1</path>
<query>address=SDRAppNamePSCase31_p1&amp;name=BAT9.4_MultiSerivce_Server&amp;city=Sunnyvale</query>
<user>root</user>
<pass_enc>la443ff79472207d916fbbe0b0c9fc6747e0ee8c3c87a9b648eda0003d27126e99d</pass_enc>
</url>
<images>false</images>
<sslInfo>
</sslInfo>
<encoding>UTF-8</encoding>
<params-saved-as-unicode>false</params-saved-as-unicode>
    </Node>


    <Node name="InvokeWebApp_P2" log=""
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          uid="70c16865-InvokeWebApp_P2" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="InvokeWebApp_P3" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="ServiceName" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find &quot;address information SDRAppNamePSCase31_p2&quot;</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>SDRAppNamePSCase31_p2</param>
</CheckResult>

<CheckResult assertTrue="false" name="ReturnFromWhichService" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find &quot;10002&quot; which is expected to be retruned by Service Provider SDRAppNamePSCase31_p2</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>10002</param>
</CheckResult>

<CheckResult assertTrue="false" name="ReturnFromWhichState" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find &quot;CA&quot; which is expected to be retruned by Service Provider SDRAppNamePSCase31_p2</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>CA</param>
</CheckResult>

<url>
<proto>http</proto>
<host>{{host1}}</host>
<port>{{HttpConnector_BAT9.4}}</port>
<path>/bat94/WebApp1</path>
<query>address=SDRAppNamePSCase31_p2&amp;name=BAT9.4_MultiSerivce_Server</query>
<user>root</user>
<pass_enc>l46f40ac4e38cf15b0ee81429597df2c71bc9cc30742eeec9348a1444c4319b59a0</pass_enc>
</url>
<images>false</images>
<sslInfo>
</sslInfo>
<encoding>UTF-8</encoding>
<params-saved-as-unicode>false</params-saved-as-unicode>
    </Node>


    <Node name="InvokeWebApp_P3" log=""
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          uid="70c16865-InvokeWebApp_P3" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="wait-2" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="ServiceName" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find &quot;address information SDRAppNamePSCase31_p3&quot;</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>SDRAppNamePSCase31_p3</param>
</CheckResult>

<CheckResult assertTrue="false" name="ReturnFromWhichService" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find &quot;10003&quot; which is expected to be retruned by Service Provider SDRAppNamePSCase31_p3</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>10003</param>
</CheckResult>

<CheckResult assertTrue="false" name="ReturnFromWhichState" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find &quot;My State&quot; which is expected to be retruned by Service Provider SDRAppNamePSCase31_p3</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>My State</param>
</CheckResult>

<url>
<proto>http</proto>
<host>{{host1}}</host>
<port>{{HttpConnector_BAT9.4}}</port>
<path>/bat94/WebApp1</path>
<query>address=SDRAppNamePSCase31_p3&amp;name=BAT9.4_MultiSerivce_Server</query>
<user>root</user>
<pass_enc>l371e414e71f81b68aed7c03b1ac5a8bcb6a2edd4e4fd827d6ca8735fbf739fd7bb</pass_enc>
</url>
<images>false</images>
<sslInfo>
</sslInfo>
<encoding>UTF-8</encoding>
<params-saved-as-unicode>false</params-saved-as-unicode>
    </Node>


    <Node name="wait-2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="70c16865-wait-2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="undeployApp" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>60</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>60</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="undeployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="70c16865-undeployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


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
    <value>{{tibco.test.case.log.dir}}/ant_undeploy.app.log</value>
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
          uid="685C99ADBCA811ED9AE9506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="70c16865-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="70c16865-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
