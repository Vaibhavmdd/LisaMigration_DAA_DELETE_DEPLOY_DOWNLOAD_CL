<?xml version="1.0" ?>

<TestCase name="cl_2.11" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="07/12/2023" host="na2devasgora03" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="07/12/2023" host="na2devasgora03" />
</meta>

<id>f2e92539</id>
<Documentation>Description :  &#13;&#10;&#13;&#10;ClearText File Appender Pattern Layout defined by CLI.&#13;&#10;That layout can be used to show the content of LoggerRepositoryEx properties using %R similar to the %X for MDC properties.&#13;&#10;see more for http://wiki.tibco.com:8008/DataIntWiki/logging/Enrichment_3.0&#13;&#10;&#13;&#10;%d{dd MMM yyyy HH:mm:ss,SSS} [%t] [%-5p]&#13;&#10;[%R{_cl.physicalCompId.scheme}]&#13;&#10;[%R{_cl.physicalCompId.matrix.env}]&#13;&#10;[%R{_cl.physicalCompId.matrix.host}]&#13;&#10;[%R{_cl.physicalCompId.matrix.node}]&#13;&#10;[%R{_cl.physicalCompId.matrix.typeadapter}]&#13;&#10;[%R{_cl.logicalCompId.scheme}]&#13;&#10;[%R{_cl.logicalCompId.matrix.application}]&#13;&#10;[%R{_cl.logicalCompId.matrix.component}]&#13;&#10;[%R{_cl.logicalCompId.matrix.component.version}]&#13;&#10;[%R{_cl.logicalCompId.matrix.component.revision}]&#13;&#10;[%X{_cl.correlationId}]&#13;&#10;[%X{_cl.conversationId}]&#13;&#10;[%X{_cl.contextId}]&#13;&#10;[%X{_cl.parentContextId}]&#13;&#10;[%X{_cl.logicalCompId.matrix.service}]&#13;&#10;[%X{_cl.logicalCompId.matrix.reference}]&#13;&#10;[%X{_cl.logicalCompId.matrix.operation}]&#13;&#10;[%X{_cl.securityPrincipal}] %c - %m%n&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;&#9;&#9;&lt;LogAppender&#13;&#10;&#9;&#9;xsi:type=&quot;amxdata:FileLogAppender&quot;&#13;&#10;&#9;&#9;name=&quot;layout_CLI_0211&quot;&#13;&#10;&#9;&#9;description=&quot;QA File LogAppender0211&quot;&#13;&#10;&#9;&#9;filePath=&quot;[[tibco.test.case.log.dir]]/CL2_11.log&quot;&#13;&#10;&#9;&#9;patternLayout=&quot;%d{dd MMM yyyy HH:mm:ss,SSS} [%t] [%-5p] [%R{_cl.physicalCompId.scheme}]&#13;&#10;        [%R{_cl.physicalCompId.matrix.env}] [%R{_cl.physicalCompId.matrix.host}] [%R{_cl.physicalCompId.matrix.node}] &#13;&#10;        [%R{_cl.physicalCompId.matrix.typeadapter}] [%R{_cl.logicalCompId.scheme}] [%R{_cl.logicalCompId.matrix.application}] &#13;&#10;        [%R{_cl.logicalCompId.matrix.component}] [%R{_cl.logicalCompId.matrix.component.version}] &#13;&#10;        [%R{_cl.logicalCompId.matrix.component.revision}] [%X{_cl.correlationId}] [%X{_cl.conversationId}] &#13;&#10;        [%X{_cl.contextId}] [%X{_cl.parentContextId}] [%X{_cl.logicalCompId.matrix.service}] &#13;&#10;        [%X{_cl.logicalCompId.matrix.reference}] [%X{_cl.logicalCompId.matrix.operation}] &#13;&#10;        [%X{_cl.securityPrincipal}] %c - %m%n&quot;&#13;&#10;&#9;&#9;maxSize=&quot;10240&quot;&#13;&#10;&#9;&#9;maxBackupNum=&quot;5&quot;/&gt;&#9;&#13;&#10;&#13;&#10;Configure this file appender to a QAnode and check its logging configuration file &quot; node-log4j.xml &quot;</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPS0xMDYyMTM3Mzk3</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="createAppender" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="f2e92539-createAppender" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="AddAppenderToLogger" > 


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
    <value>{{tibco.test.case.log.dir}}/createAppender.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>createAppender</value>
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


    <Node name="AddAppenderToLogger" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="f2e92539-AddAppenderToLogger" 
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
    <value>{{tibco.test.case.log.dir}}/addappendertoLogger.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>addappendertoLogger</value>
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
          next="PatternLayoutChecking" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for Response" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of QANode failed</log>
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


    <Node name="PatternLayoutChecking" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="f2e92539-PatternLayoutChecking" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="DeleteAppender" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for patternLayout in log configuration File" type="com.itko.lisa.test.CheckResultContains">
<log> patternLayout in log configuration File checking failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>%d{dd MMM yyyy HH:mm:ss,SSS} [%t] [%-5p] [%R{_cl.logicalCompId.matrix.application}] [%X{_cl.correlationId}]] %c - %m%n</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>fail</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{TIBCO_HOST_CONFIG}}/{{host.instance}}/data_3.2.x/nodes/{{env.node2.name}}/configuration/node-log4j.xml</value>
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
    <value>{{tibco.test.case.log.dir}}/deleteAppender.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>deleteAppender</value>
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
          uid="E1FA7F5B209511EEB76D506B8DD34562" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

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


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="f2e92539-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
