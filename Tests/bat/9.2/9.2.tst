<?xml version="1.0" ?>

<TestCase name="9.2" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="03/06/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="03/06/2023" host="na2devasgaks01" />
</meta>

<id>cb9518c6</id>
<Documentation>Description : Add, Update and Delete Rest Service binding on a given application(RSBT-651)&#13;&#10;Scenario:&#13;&#10;   step 1: Setup RT and RI required on the given Node&#13;&#10;   step 2: Deploy Rest In-Out application &quot;REST&lt;-&gt;Java&lt;-&gt;REST calling REST&lt;-&gt;Java&quot; and invoke GET, PUT, POST, DELETE operations&#13;&#10;   step 3: Add new REST binding, sync app and invoke operation&#13;&#10;   step 4: Update Rest service binding and verify&#13;&#10;   step 5: Delete Rest binding and undeploy application</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9MTk1NTI0NjUw</sig>
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

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/rest_binding_data.xml</datafile>
    <clidatafileppty>tibco.amx.datafile1.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/rest_binding_build.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile1.tc</clibuildfileppty>
      </Companion>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/rest_binding_data1.xml</datafile>
    <clidatafileppty>tibco.amx.datafile2.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/rest_binding_build1.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile2.tc</clibuildfileppty>
      </Companion>

    <Node name="PropReaderStep" log=""
          type="com.itko.lisa.test.PropReaderNode" 
          version="1" 
          uid="cb9518c6-PropReaderStep" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="SetupRT_and_RI" > 

<file>{{LISA_TC_PATH}}/data.txt</file>
<charset>DEFAULT</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="SetupRT_and_RI" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cb9518c6-SetupRT_and_RI" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="deployApp" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="BUILD SUCCESSFUL" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application on host finished.....</log>
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
    <value>{{tibco.test.case.log.dir}}/deployant.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>setupRT  create.ri  install.ri</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=800,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    <value>3000</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cb9518c6-deployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="REST_Invocation_GET" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="BUILD SUCCESSFUL" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application on host finished.....</log>
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
    <value>{{tibco.test.case.log.dir}}/deployant.log</value>
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
    <value>deployTimeout=800,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    <value>3000</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="REST_Invocation_GET" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="2" 
          uid="cb9518c6-REST_Invocation_GET" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="Read node log for GET output for java2" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check HTTP Response Code" type="com.itko.lisa.test.CheckResultHTTPResponseCode">
<log>Did not find Status Code as 200 OK</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>200</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for the response" type="com.itko.lisa.test.CheckResultContains">
<log>Does not find proper response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Hello GreetGET</param>
</CheckResult>

<url>http://{{host1}}:{{httpPort1}}/GreetWsdlConsumer_1_1/GreetGET/{{GET_PP_STRING}}/{{GET_PP_BOOLEAN}}/{{GET_PP_BYTE}}/{{GET_PP_SHORT}}/{{GET_PP_INTEGER}}/{{GET_PP_LONG}}/{{GET_PP_FLOAT}}/{{GET_PP_DOUBLE}}</url>
<data-type>text</data-type>
      <header field="Accept" value="application/xml" />
      <header field="Content-Type" value="application/xml" />
<httpMethod>GET</httpMethod>
<onError></onError>
<encode-test-props-in-url>false</encode-test-props-in-url>
    </Node>


    <Node name="Read node log for GET output for java2" log="Did not find expected output in node log"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cb9518c6-Read+node+log+for+GET+output+for+java2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Read node log for GET output for  java1" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="check node log for GET_PP_STRING" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{GET_PP_STRING}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| GET_PP_STRING_XML_INOUT_J2   |   {{GET_PP_STRING}}|</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for GET_PP_BOOLEAN" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{GET_PP_BOOLEAN}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| GET_PP_BOOLEAN_XML_INOUT_J2  |   {{GET_PP_BOOLEAN}}           |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for GET_PP_BYTE" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{GET_PP_BYTE}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| GET_PP_BYTE_XML_INOUT_J2     |   {{GET_PP_BYTE}}             |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for GET_PP_SHORT" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{GET_PP_SHORT}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| GET_PP_SHORT_XML_INOUT_J2    |   {{GET_PP_SHORT}}              |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for GET_PP_INTEGER" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{GET_PP_INTEGER}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| GET_PP_INTEGER_XML_INOUT_J2  |   {{GET_PP_INTEGER}}             |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for GET_PP_LONG" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{GET_PP_LONG}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| GET_PP_LONG_XML_INOUT_J2     |   {{GET_PP_LONG}}          |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for GET_PP_FLOAT" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{GET_PP_FLOAT}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| GET_PP_FLOAT_XML_INOUT_J2    |   {{GET_PP_FLOAT}}           |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for GET_PP_DOUBLE" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{GET_PP_DOUBLE}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| GET_PP_DOUBLE_XML_INOUT_J2   |   {{GET_PP_DOUBLE}}        |</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{TIBCO_CONFIG_HOME}}/tibcohost/{{host.instance}}/data_3.2.x/nodes/{{env.node2.name}}/logs/{{env.node2.name}}.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>UTF-8</value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="Read node log for GET output for  java1" log="Did not find expected output in node log"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cb9518c6-Read+node+log+for+GET+output+for++java1" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="REST_Invocation_POST" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="check node log for GET_PP_STRING" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{GET_PP_STRING}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| GET_PP_STRING_XML_INOUT_J2   |   {{GET_PP_STRING}}|</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for GET_PP_BOOLEAN" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{GET_PP_BOOLEAN}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| GET_PP_BOOLEAN_XML_INOUT_J1  |   {{GET_PP_BOOLEAN}}           |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for GET_PP_BYTE" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{GET_PP_BYTE}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| GET_PP_BYTE_XML_INOUT_J1     |   {{GET_PP_BYTE}}             |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for GET_PP_SHORT" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{GET_PP_SHORT}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| GET_PP_SHORT_XML_INOUT_J1    |   {{GET_PP_SHORT}}              |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for GET_PP_INTEGER" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{GET_PP_INTEGER}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| GET_PP_INTEGER_XML_INOUT_J2  |   {{GET_PP_INTEGER}}             |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for GET_PP_LONG" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{GET_PP_LONG}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| GET_PP_LONG_XML_INOUT_J1     |   {{GET_PP_LONG}}          |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for GET_PP_FLOAT" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{GET_PP_FLOAT}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| GET_PP_FLOAT_XML_INOUT_J1    |   {{GET_PP_FLOAT}}           |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for GET_PP_DOUBLE" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{GET_PP_DOUBLE}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| GET_PP_DOUBLE_XML_INOUT_J1   |   {{GET_PP_DOUBLE}}        |</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{TIBCO_CONFIG_HOME}}/tibcohost/{{host.instance}}/data_3.2.x/nodes/{{env.node2.name}}/logs/{{env.node2.name}}.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>UTF-8</value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="REST_Invocation_POST" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="2" 
          uid="cb9518c6-REST_Invocation_POST" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="Read node log for POST output for java2" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check HTTP Response Code" type="com.itko.lisa.test.CheckResultHTTPResponseCode">
<log>Did not find Status Code as 200 OK</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>200</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for the response" type="com.itko.lisa.test.CheckResultContains">
<log>Does not find proper response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Hello GreetPOST</param>
</CheckResult>

<url>http://{{host1}}:{{httpPort1}}/GreetWsdlConsumer_1_1/GreetPOST/{{POST_PP_STRING}}/{{POST_PP_BOOLEAN}}/{{POST_PP_BYTE}}/{{POST_PP_SHORT}}/{{POST_PP_INTEGER}}/{{POST_PP_LONG}}/{{POST_PP_FLOAT}}/{{POST_PP_DOUBLE}}</url>
<data-type>text</data-type>
      <header field="Accept" value="application/xml" />
      <header field="Content-Type" value="application/xml" />
<httpMethod>POST</httpMethod>
<onError></onError>
<encode-test-props-in-url>false</encode-test-props-in-url>
    </Node>


    <Node name="Read node log for POST output for java2" log="Did not find expected output in node log"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cb9518c6-Read+node+log+for+POST+output+for+java2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Read node log for POST output for java1" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="check node log for  POST_PP_STRING" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{POST_PP_STRING}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| POST_PP_STRING_XML_INOUT_J2   |   {{POST_PP_STRING}}|</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for POST_PP_BOOLEAN" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{POST_PP_BOOLEAN}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| POST_PP_BOOLEAN_XML_INOUT_J2  |   {{POST_PP_BOOLEAN}}           |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for POST_PP_BYTE" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{POST_PP_BYTE}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| POST_PP_BYTE_XML_INOUT_J2     |   {{POST_PP_BYTE}}             |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for POST_PP_SHORT" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{POST_PP_SHORT}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| POST_PP_SHORT_XML_INOUT_J2    |   {{POST_PP_SHORT}}              |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for POST_PP_INTEGER" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{POST_PP_INTEGER}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| POST_PP_INTEGER_XML_INOUT_J2  |   {{POST_PP_INTEGER}}             |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for POST_PP_LONG" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{POST_PP_LONG}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| POST_PP_LONG_XML_INOUT_J2     |   {{POST_PP_LONG}}          |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for POST_PP_FLOAT" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{POST_PP_FLOAT}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| POST_PP_FLOAT_XML_INOUT_J2    |   {{POST_PP_FLOAT}}           |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for POST_PP_DOUBLE" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{POST_PP_DOUBLE}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| POST_PP_DOUBLE_XML_INOUT_J2   |   {{POST_PP_DOUBLE}}        |</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{TIBCO_CONFIG_HOME}}/tibcohost/{{host.instance}}/data_3.2.x/nodes/{{env.node2.name}}/logs/{{env.node2.name}}.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>UTF-8</value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="Read node log for POST output for java1" log="Did not find expected output in node log"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cb9518c6-Read+node+log+for+POST+output+for+java1" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="REST_Invocation_PUT" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="check node log for  POST_PP_STRING" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{POST_PP_STRING}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| POST_PP_STRING_XML_INOUT_J1   |   {{POST_PP_STRING}}|</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for POST_PP_BOOLEAN" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{POST_PP_BOOLEAN}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| POST_PP_BOOLEAN_XML_INOUT_J1  |   {{POST_PP_BOOLEAN}}           |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for POST_PP_BYTE" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{POST_PP_BYTE}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| POST_PP_BYTE_XML_INOUT_J1     |   {{POST_PP_BYTE}}             |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for POST_PP_SHORT" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{POST_PP_SHORT}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| POST_PP_SHORT_XML_INOUT_J1    |   {{POST_PP_SHORT}}              |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for POST_PP_INTEGER" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{POST_PP_INTEGER}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| POST_PP_INTEGER_XML_INOUT_J1  |   {{POST_PP_INTEGER}}             |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for POST_PP_LONG" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{POST_PP_LONG}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| POST_PP_LONG_XML_INOUT_J1     |   {{POST_PP_LONG}}          |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for POST_PP_FLOAT" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{POST_PP_FLOAT}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| POST_PP_FLOAT_XML_INOUT_J1    |   {{POST_PP_FLOAT}}           |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for POST_PP_DOUBLE" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{POST_PP_DOUBLE}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| POST_PP_DOUBLE_XML_INOUT_J1   |   {{POST_PP_DOUBLE}}        |</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{TIBCO_CONFIG_HOME}}/tibcohost/{{host.instance}}/data_3.2.x/nodes/{{env.node2.name}}/logs/{{env.node2.name}}.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>UTF-8</value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="REST_Invocation_PUT" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="2" 
          uid="cb9518c6-REST_Invocation_PUT" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="Read node log for PUT output for java2" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check HTTP Response Code" type="com.itko.lisa.test.CheckResultHTTPResponseCode">
<log>Did not find Status Code as 200 OK</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>200</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for the response" type="com.itko.lisa.test.CheckResultContains">
<log>Does not find proper response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Hello GreetPUT</param>
</CheckResult>

<url>http://{{host1}}:{{httpPort1}}/GreetWsdlConsumer_1_1/GreetPUT/{{PUT_PP_STRING}}/{{PUT_PP_BOOLEAN}}/{{PUT_PP_BYTE}}/{{PUT_PP_SHORT}}/{{PUT_PP_INTEGER}}/{{PUT_PP_LONG}}/{{PUT_PP_FLOAT}}/{{PUT_PP_DOUBLE}}</url>
<data-type>text</data-type>
      <header field="Accept" value="application/xml" />
      <header field="Content-Type" value="application/xml" />
<httpMethod>PUT</httpMethod>
<onError></onError>
<encode-test-props-in-url>false</encode-test-props-in-url>
    </Node>


    <Node name="Read node log for PUT output for java2" log="Did not find expected output in node log"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cb9518c6-Read+node+log+for+PUT+output+for+java2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Read node log for PUT output for java1" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="check node log for  PUT_PP_STRING" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{PUT_PP_STRING}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| PUT_PP_STRING_XML_INOUT_J2    |     {{PUT_PP_STRING}}|</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for PUT_PP_BOOLEAN" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{PUT_PP_BOOLEAN}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| PUT_PP_BOOLEAN_XML_INOUT_J2   |     {{PUT_PP_BOOLEAN}}           |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for PUT_PP_BYTE" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{PUT_PP_BYTE}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| PUT_PP_BYTE_XML_INOUT_J2      |     {{PUT_PP_BYTE}}             |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for PUT_PP_SHORT" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{PUT_PP_SHORT}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| PUT_PP_SHORT_XML_INOUT_J2     |     {{PUT_PP_SHORT}}              |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for PUT_PP_INTEGER" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{PUT_PP_INTEGER}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| PUT_PP_INTEGER_XML_INOUT_J2   |     {{PUT_PP_INTEGER}}             |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for PUT_PP_LONG" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{PUT_PP_LONG}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| PUT_PP_LONG_XML_INOUT_J2      |     {{PUT_PP_LONG}}          |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for PUT_PP_FLOAT" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find  {{PUT_PP_FLOAT}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| PUT_PP_FLOAT_XML_INOUT_J2     |     {{PUT_PP_FLOAT}}           |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for PUT_PP_DOUBLE" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{PUT_PP_DOUBLE}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| PUT_PP_DOUBLE_XML_INOUT_J2    |     {{PUT_PP_DOUBLE}}        |</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{TIBCO_CONFIG_HOME}}/tibcohost/{{host.instance}}/data_3.2.x/nodes/{{env.node2.name}}/logs/{{env.node2.name}}.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>UTF-8</value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="Read node log for PUT output for java1" log="Did not find expected output in node log"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cb9518c6-Read+node+log+for+PUT+output+for+java1" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="REST_Invocation_DELETE" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="check node log for  PUT_PP_STRING" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{PUT_PP_STRING}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| PUT_PP_STRING_XML_INOUT_J1    |     {{PUT_PP_STRING}}|</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for PUT_PP_BOOLEAN" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{PUT_PP_BOOLEAN}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| PUT_PP_BOOLEAN_XML_INOUT_J1   |     {{PUT_PP_BOOLEAN}}           |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for PUT_PP_BYTE" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{PUT_PP_BYTE}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| PUT_PP_BYTE_XML_INOUT_J1      |     {{PUT_PP_BYTE}}             |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for PUT_PP_SHORT" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{PUT_PP_SHORT}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| PUT_PP_SHORT_XML_INOUT_J1     |     {{PUT_PP_SHORT}}              |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for PUT_PP_INTEGER" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{PUT_PP_INTEGER}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| PUT_PP_INTEGER_XML_INOUT_J1   |     {{PUT_PP_INTEGER}}             |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for PUT_PP_LONG" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{PUT_PP_LONG}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| PUT_PP_LONG_XML_INOUT_J1      |     {{PUT_PP_LONG}}          |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for PUT_PP_FLOAT" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find  {{PUT_PP_FLOAT}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| PUT_PP_FLOAT_XML_INOUT_J1     |     {{PUT_PP_FLOAT}}           |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for PUT_PP_DOUBLE" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{PUT_PP_DOUBLE}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| PUT_PP_DOUBLE_XML_INOUT_J1    |     {{PUT_PP_DOUBLE}}        |</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{TIBCO_CONFIG_HOME}}/tibcohost/{{host.instance}}/data_3.2.x/nodes/{{env.node2.name}}/logs/{{env.node2.name}}.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>UTF-8</value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="REST_Invocation_DELETE" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="2" 
          uid="cb9518c6-REST_Invocation_DELETE" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="Read node log for DELETE output for java2" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check HTTP Response Code" type="com.itko.lisa.test.CheckResultHTTPResponseCode">
<log>Did not find Status Code as 200 OK</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>200</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for the response" type="com.itko.lisa.test.CheckResultContains">
<log>Does not find proper response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Hello GreetDELETE</param>
</CheckResult>

<url>http://{{host1}}:{{httpPort1}}/GreetWsdlConsumer_1_1/GreetDELETE/{{DELETE_PP_STRING}}/{{DELETE_PP_BOOLEAN}}/{{DELETE_PP_BYTE}}/{{DELETE_PP_SHORT}}/{{DELETE_PP_INTEGER}}/{{DELETE_PP_LONG}}/{{DELETE_PP_FLOAT}}/{{DELETE_PP_DOUBLE}}</url>
<data-type>text</data-type>
      <header field="Accept" value="application/xml" />
      <header field="Content-Type" value="application/xml" />
<httpMethod>DELETE</httpMethod>
<onError></onError>
<encode-test-props-in-url>false</encode-test-props-in-url>
    </Node>


    <Node name="Read node log for DELETE output for java2" log="Did not find expected output in node log"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cb9518c6-Read+node+log+for+DELETE+output+for+java2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Read node log for DELETE output for java1" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="check node log for  DELETE_PP_STRING" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{DELETE_PP_STRING}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| DELETE_PP_STRING_XML_INOUT_J2   |  {{DELETE_PP_STRING}}|</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for DELETE_PP_BOOLEAN" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{DELETE_PP_BOOLEAN}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| DELETE_PP_BOOLEAN_XML_INOUT_J2  |  {{DELETE_PP_BOOLEAN}}           |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for DELETE_PP_BYTE" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{DELETE_PP_BYTE}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| DELETE_PP_BYTE_XML_INOUT_J2     |  {{DELETE_PP_BYTE}}             |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for DELETE_PP_SHORT" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{DELETE_PP_SHORT}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| DELETE_PP_SHORT_XML_INOUT_J2    |  {{DELETE_PP_SHORT}}              |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for DELETE_PP_INTEGER" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{DELETE_PP_INTEGER}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| DELETE_PP_INTEGER_XML_INOUT_J2  |  {{DELETE_PP_INTEGER}}             |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for DELETE_PP_LONG" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{DELETE_PP_LONG}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| DELETE_PP_LONG_XML_INOUT_J2     |  {{DELETE_PP_LONG}}          |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for DELETE_PP_FLOAT" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find  {{DELETE_PP_FLOAT}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| DELETE_PP_FLOAT_XML_INOUT_J2    |  {{DELETE_PP_FLOAT}}           |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for DELETE_PP_DOUBLE" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{DELETE_PP_DOUBLE}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| DELETE_PP_DOUBLE_XML_INOUT_J2   |  {{DELETE_PP_DOUBLE}}        |</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{TIBCO_CONFIG_HOME}}/tibcohost/{{host.instance}}/data_3.2.x/nodes/{{env.node2.name}}/logs/{{env.node2.name}}.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>UTF-8</value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="Read node log for DELETE output for java1" log="Did not find expected output in node log"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cb9518c6-Read+node+log+for+DELETE+output+for+java1" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Add_Rest_Binding" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="check node log for  DELETE_PP_STRING" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{DELETE_PP_STRING}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| DELETE_PP_STRING_XML_INOUT_J1   |  {{DELETE_PP_STRING}}|</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for DELETE_PP_BOOLEAN" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{DELETE_PP_BOOLEAN}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| DELETE_PP_BOOLEAN_XML_INOUT_J1  |  {{DELETE_PP_BOOLEAN}}           |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for DELETE_PP_BYTE" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{DELETE_PP_BYTE}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| DELETE_PP_BYTE_XML_INOUT_J1     |  {{DELETE_PP_BYTE}}             |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for DELETE_PP_SHORT" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{DELETE_PP_SHORT}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| DELETE_PP_SHORT_XML_INOUT_J1    |  {{DELETE_PP_SHORT}}              |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for DELETE_PP_INTEGER" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{DELETE_PP_INTEGER}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| DELETE_PP_INTEGER_XML_INOUT_J1  |  {{DELETE_PP_INTEGER}}             |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for DELETE_PP_LONG" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{DELETE_PP_LONG}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| DELETE_PP_LONG_XML_INOUT_J1     |  {{DELETE_PP_LONG}}          |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for DELETE_PP_FLOAT" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find  {{DELETE_PP_FLOAT}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| DELETE_PP_FLOAT_XML_INOUT_J1    |  {{DELETE_PP_FLOAT}}           |</param>
</CheckResult>

<CheckResult assertTrue="false" name="check node log for DELETE_PP_DOUBLE" type="com.itko.lisa.test.CheckResultContains">
<log>Did not find {{DELETE_PP_DOUBLE}} in node log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>| DELETE_PP_DOUBLE_XML_INOUT_J1   |  {{DELETE_PP_DOUBLE}}        |</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{TIBCO_CONFIG_HOME}}/tibcohost/{{host.instance}}/data_3.2.x/nodes/{{env.node2.name}}/logs/{{env.node2.name}}.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>UTF-8</value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="Add_Rest_Binding" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cb9518c6-Add_Rest_Binding" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Sync_App" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="BUILD SUCCESSFUL" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application on host finished.....</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<CheckResult assertTrue="false" name="Add binding successful" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application on host finished.....</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Successfully added Rest service binding &apos;RESTServiceBinding_BAT92&apos;</param>
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
    <value>{{tibco.amx.buildfile1.tc}}</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/deployant.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>add</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=800,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile1.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    <value>3000</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="Sync_App" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cb9518c6-Sync_App" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="After_Add_REST_Invocation_GET" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="BUILD SUCCESSFUL" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application on host finished.....</log>
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
    <value>{{tibco.test.case.log.dir}}/deployant.log</value>
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
    <value>deployTimeout=800,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    <value>3000</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="After_Add_REST_Invocation_GET" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="2" 
          uid="cb9518c6-After_Add_REST_Invocation_GET" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="Update_Rest_Binding" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check HTTP Response Code" type="com.itko.lisa.test.CheckResultHTTPResponseCode">
<log>Did not find Status Code as 200 OK</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>200</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for the response" type="com.itko.lisa.test.CheckResultContains">
<log>Does not find proper response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Hello GreetGET</param>
</CheckResult>

<url>http://{{host1}}:{{httpPort}}/GreetWsdlConsumer_1_1/GreetGET/{{GET_PP_STRING}}/{{GET_PP_BOOLEAN}}/{{GET_PP_BYTE}}/{{GET_PP_SHORT}}/{{GET_PP_INTEGER}}/{{GET_PP_LONG}}/{{GET_PP_FLOAT}}/{{GET_PP_DOUBLE}}</url>
<data-type>text</data-type>
      <header field="Accept" value="application/xml" />
      <header field="Content-Type" value="application/xml" />
<httpMethod>GET</httpMethod>
<onError></onError>
<encode-test-props-in-url>false</encode-test-props-in-url>
    </Node>


    <Node name="Update_Rest_Binding" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cb9518c6-Update_Rest_Binding" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Delete_Rest_Binding" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="BUILD SUCCESSFUL" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application on host finished.....</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<CheckResult assertTrue="false" name="Update Successful" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application on host finished.....</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Successfully updated Rest service binding &apos;RESTServiceBinding_BAT92&apos;</param>
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
    <value>{{tibco.amx.buildfile2.tc}}</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/deployant.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>update</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=800,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile2.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    <value>3000</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="Delete_Rest_Binding" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cb9518c6-Delete_Rest_Binding" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="undeployApp" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="BUILD SUCCESSFUL" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application on host finished.....</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<CheckResult assertTrue="false" name="Delete Binding Successful" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application on host finished.....</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Successfully deleted Rest service binding &apos;RESTServiceBinding_BAT92&apos;</param>
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
    <value>{{tibco.amx.buildfile2.tc}}</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/deployant.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>delete</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=800,TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile2.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
    <value>3000</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="undeployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="cb9518c6-undeployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="BUILD SUCCESSFUL" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Undeployment of Application on host finished.....</log>
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
    <value>{{tibco.test.case.log.dir}}/undeployant.log</value>
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
    <value>{{deployTimeout}}</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="cb9518c6-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="cb9518c6-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="DC95A65ABC0011EDB83F506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


</TestCase>
