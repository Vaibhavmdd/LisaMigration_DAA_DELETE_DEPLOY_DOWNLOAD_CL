<?xml version="1.0" ?>

<TestCase name="cl_1.3" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="06/26/2023" host="na2devasgora03" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="06/26/2023" host="na2devasgora03" />
</meta>

<id>f2e92539</id>
<Documentation>Description :  Check  Debug,Info, Warn, Error, Trace, Fatal, Off Level Logging with 7 CBE File Appenders&#13;&#10;&#13;&#10;Scenario:      SOAP HTTP &lt;-&gt; Java&#13;&#10;&#13;&#10;MEP: In-Out &#13;&#10;SOAP Version: 1.1 &#13;&#10;SOAP Style/Encoding: Document/Literal</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPS0xNjI0NDE1MTYx</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Properties Reader from data.txt" log=""
          type="com.itko.lisa.test.PropReaderNode" 
          version="1" 
          uid="391E618713FD11EE8675506B8DD34562" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="deployApp" > 

<file>{{LISA_TC_PATH}}/data.txt</file>
<charset>UTF-8</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="f2e92539-deployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="confLogging" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for Response" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>fail</onAbort>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value></value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{LISA_TC_PATH}}/amxbuild.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antDeployApp.log</value>
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
    <value>TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{LISA_TC_PATH}}/amxdata.xml,remotePropsFile=C:/Lisa1072/Projects/AMX/Tests/cl/2node_orcl.config,timeout={{timeout}}</value>
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


    <Node name="confLogging" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="f2e92539-confLogging" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="invokeService" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for Response" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>fail</onAbort>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value></value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{LISA_TC_PATH}}/amxbuild.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/confLogging.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>conf.logging</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{LISA_TC_PATH}}/amxdata.xml,remotePropsFile=C:/Lisa1072/Projects/AMX/Tests/cl/2node_orcl.config,timeout={{timeout}}</value>
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


    <Node name="invokeService" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          uid="f2e92539-invokeService" 
          think="500-1000" 
          useFilters="true" 
          quiet="false" 
          next="verifyInfoLog" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for Response" type="com.itko.lisa.test.CheckResultContains">
<log>Look for {{resp}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{resp}}</param>
</CheckResult>

<url>http://{{tibco.amx.rt.httpconnector1.host}}:{{tibco.amx.rt.httpconnector1.port}}/lotteryPort/</url>
<action>GetNumber</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvc29hcC9lbnZlbG9wZS8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAgICA8cGFydDE+e3tpbnB1dDF9fTwvcGFydDE+DQogICA8L3NvYXBlbnY6Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<discardResponse>false</discardResponse>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>
    </Node>


    <Node name="verifyInfoLog" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="f2e92539-verifyInfoLog" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="verifyWarnLog" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for error log" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{errorResp}}&apos; in info log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{errorResp}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for warn log" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{warnResp}}&apos; in info log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{warnResp}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for info log1" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{infoResp1}}&apos; in info log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{infoResp1}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for info log2" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{infoResp2}}&apos; in info log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{infoResp2}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for CBE File Format" type="com.itko.lisa.test.CheckResultContains">
<log>Info Log file isnot CBE Format</log>
<then>continue (quiet)</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{cbeFormat}}</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>fail</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{tibco.test.case.log.dir}}/CL1_3_INFO.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value></value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="verifyWarnLog" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="f2e92539-verifyWarnLog" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="verifyDebugLog" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for error log" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{errorResp}}&apos; in warn log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{errorResp}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for warn log" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{warnResp}}&apos; in warn log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{warnResp}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for CBE File Format" type="com.itko.lisa.test.CheckResultContains">
<log>Trace Log file isnot CBE Format</log>
<then>continue (quiet)</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{cbeFormat}}</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>fail</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{tibco.test.case.log.dir}}/CL1_3_WARN.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value></value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="verifyDebugLog" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="f2e92539-verifyDebugLog" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="verifyErrorLog" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for CBE File Format" type="com.itko.lisa.test.CheckResultContains">
<log>Debug Log file isnot CBE Format</log>
<then>continue (quiet)</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{cbeFormat}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for info log1" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{infoResp1}}&apos; in debug log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{infoResp1}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for info log2" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{infoResp2}}&apos; in debug log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{infoResp2}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for debug log" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{debugResp}}&apos; in debug log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{debugResp}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for warn log" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{warnResp}}&apos; in debug log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{warnResp}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for error log" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{errorResp}}&apos; in debug log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{errorResp}}</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>fail</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{tibco.test.case.log.dir}}/CL1_3_DEBUG.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value></value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="verifyErrorLog" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="f2e92539-verifyErrorLog" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="verifyTraceLog" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for CBE File Format" type="com.itko.lisa.test.CheckResultContains">
<log>Error Log file isnot CBE Format</log>
<then>continue (quiet)</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{cbeFormat}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for error log" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{errorResp}}&apos; in error log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{errorResp}}</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>fail</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{tibco.test.case.log.dir}}/CL1_3_ERROR.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value></value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="verifyTraceLog" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="f2e92539-verifyTraceLog" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="verifyOffLog" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for error log" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{errorResp}}&apos; in trace log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{errorResp}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for warn log" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{warnResp}}&apos; in trace log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{warnResp}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for info log1" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{infoResp1}}&apos; in trace log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{infoResp1}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for info log2" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{infoResp2}}&apos; in trace log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{infoResp2}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for debug log" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{debugResp}}&apos; in trace log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{debugResp}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for trace log" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{traceResp}}&apos; in trace log</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{traceResp}}</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check for CBE File Format" type="com.itko.lisa.test.CheckResultContains">
<log>Trace Log file isnot CBE Format</log>
<then>continue (quiet)</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{cbeFormat}}</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>fail</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{tibco.test.case.log.dir}}/CL1_3_TRACE.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value></value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="verifyOffLog" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="f2e92539-verifyOffLog" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="undeployApp" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="check for off log" type="com.itko.lisa.test.CheckResultAny">
<log>Off logging level doesn&apos;t work</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>fail</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{tibco.test.case.log.dir}}/CL1_3_OFF.log</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value></value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="undeployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="f2e92539-undeployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="wait" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for Response" type="com.itko.lisa.test.CheckResultContains">
<log>Undeployment of Application failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>fail</onAbort>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value></value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{LISA_TC_PATH}}/amxbuild.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antUndeployApp.log</value>
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
    <value>TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{LISA_TC_PATH}}/amxdata.xml,remotePropsFile=C:/Lisa1072/Projects/AMX/Tests/cl/2node_orcl.config,timeout={{timeout}}</value>
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


    <Node name="wait" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="f2e92539-wait" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="DeleteAppender" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>fail</onAbort>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>10</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>10</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="DeleteAppender" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="f2e92539-DeleteAppender" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for Response" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>fail</onAbort>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value></value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{LISA_TC_PATH}}/amxbuild.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/confLogging.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>delete.appender</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{LISA_TC_PATH}}/amxdata.xml,remotePropsFile=C:/Lisa1072/Projects/AMX/Tests/cl/2node_orcl.config,timeout={{timeout}}</value>
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
          uid="31ABCBFC13FD11EE8675506B8DD34562" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="f2e92539-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="f2e92539-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
