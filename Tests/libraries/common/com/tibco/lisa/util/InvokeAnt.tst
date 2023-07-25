<?xml version="1.0" ?>

<TestCase name="InvokeAnt" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/04/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="03/09/2023" host="na2devasgaks01" />
</meta>

<id>d879a86d</id>
<Documentation>Invokes the ant command using the build file and target specified. &#13;&#10;This subprocess takes either property file or propertyList and passes it to the ant command invocation.&#13;&#10;&#13;&#10;Make sure the ant jars (ant.jar and ant-launcher.jar) and other required jars are in the LISA classpath.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9LTY1MjY2MzE0MA==</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>projectBaseDirName</key>
    <value></value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value></value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/ant.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value></value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value></value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value></value>
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
    <value>300</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>JBOSSServerForEJBBT</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>adapterZip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keyalias</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keypassword</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorelocation</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorepassword</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystoretype</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.admpwd</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.admusr</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.host</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.password</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.port</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.sid</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.url</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.db.username</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.env.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>admin.instance.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amx.sv.queuePrefix</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amxHF2Zip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amxHFZip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>amxZip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>antArgs</key>
    <value></value>
    <name>antArgs</name>
    </Parameter>
    <Parameter>
    <key>antCmdLineArgs</key>
    <value></value>
    <name>antCmdLineArgs</name>
    </Parameter>
    <Parameter>
    <key>bwhost1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>bwport1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>bwportssl1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>clrZip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>compiler</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>cppZip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>db.feature.version</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>db.shell.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>db.shell.version</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>db.source.jar.location</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>dbDriver</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>dbPwd</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>dbUrl</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>dbUser</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>ejbZip</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emshost</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emshost2</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emsport2</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emsport_tcp</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emspwd</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emssecure</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>emsuser</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>enableMCR</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>env.node1.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>env.node2.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>hibernateDialect</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host.instance</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host.jmx.port</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host.name</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host.prefix</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>host1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>httpConnectionTimeout</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>installJavaHome</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>installTempDir</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jmshost</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jmsport</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jmspwd</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jmsuser</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndiconnectionfactory</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndicontexturl</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndicontexturlSSL</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndihost</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndiport</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndipwd</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>jndiuser</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>keystore.location</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>lisa.checkCondition.rsp</key>
    <value></value>
    <name>lisa.checkCondition.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.checkCondition.rsp.time</key>
    <value></value>
    <name>lisa.checkCondition.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.command.exit.code</key>
    <value></value>
    <name>lisa.command.exit.code</name>
    </Parameter>
    <Parameter>
    <key>lisa.command.pid_handle</key>
    <value></value>
    <name>lisa.command.pid_handle</name>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp</key>
    <value></value>
    <name>lisa.continue.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp.time</key>
    <value></value>
    <name>lisa.continue.rsp.time</name>
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
    <key>lisa.getProjectBaseDir.rsp</key>
    <value></value>
    <name>lisa.getProjectBaseDir.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getProjectBaseDir.rsp.time</key>
    <value></value>
    <name>lisa.getProjectBaseDir.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.invokeAntFromCommandLine.rsp</key>
    <value></value>
    <name>lisa.invokeAntFromCommandLine.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.invokeAntFromCommandLine.rsp.time</key>
    <value></value>
    <name>lisa.invokeAntFromCommandLine.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp</key>
    <value></value>
    <name>Set 1st in log</name>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value></value>
    <name>Set 1st in log</name>
    </Parameter>
    <Parameter>
    <key>lisa.preInvokeAntCmdLine.rsp</key>
    <value></value>
    <name>Set 1st in preInvokeAntCmdLine</name>
    </Parameter>
    <Parameter>
    <key>lisa.preInvokeAntCmdLine.rsp.time</key>
    <value></value>
    <name>Set 1st in preInvokeAntCmdLine</name>
    </Parameter>
    <Parameter>
    <key>lisa.returnResponse.rsp</key>
    <value></value>
    <name>lisa.returnResponse.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.returnResponse.rsp.time</key>
    <value></value>
    <name>lisa.returnResponse.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.timeout.rsp.time</key>
    <value></value>
    <name>lisa.timeout.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.verifyAntInClasspath.rsp</key>
    <value></value>
    <name>lisa.verifyAntInClasspath.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.verifyAntInClasspath.rsp.time</key>
    <value></value>
    <name>lisa.verifyAntInClasspath.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.verifyAntVersion.rsp</key>
    <value></value>
    <name>lisa.verifyAntVersion.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.verifyAntVersion.rsp.time</key>
    <value></value>
    <name>lisa.verifyAntVersion.rsp.time</name>
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
    <Parameter>
    <key>logappender.file.location</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>port1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>port2</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>port3</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>port4</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>portssl1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>prefix1</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>projectBaseDirectory</key>
    <value></value>
    <name>projectBaseDirectory</name>
    </Parameter>
    <Parameter>
    <key>projectloc</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>queueConnectionfactory</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>regenerateDAA</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.datafile.template</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.connectionFactory</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.providerURL</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.host</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.port</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>tmpDir</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="d879a86d-log" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="verifyAntInClasspath" > 

<log>Invoking ant with following variables:&#13;&#10;buildFileName={{buildFileName}}&#13;&#10;logFileName={{logFileName}}&#13;&#10;propertyFileName={{propertyFileName}}&#13;&#10;propertyList={{propertyList}}&#13;&#10;targetName={{targetName}}&#13;&#10;projectBaseDirName={{projectBaseDirName}}&#13;&#10;antOpts={{antOpts}}&#13;&#10;additionalAntCmdLineArgs={{additionalAntCmdLineArgs}}&#13;&#10;waitforCompletion={{waitForCompletion}}</log>
    </Node>


    <Node name="verifyAntInClasspath" log="This step verifies the input variables for the invokeAnt subprocess."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="d879a86d-verifyAntInClasspath" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="verifyAntVersion" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert147" type="com.itko.lisa.test.CheckResultRegEx">
<log>Verifying the input variables step failed.</log>
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
<script>import java.net.URL;&#13;&#10;import java.lang.ClassLoader;&#13;&#10;import java.net.URLClassLoader;&#13;&#10;/*&#9;&#13;&#10;String verifyAntInClasspath1() {&#13;&#10;&#9;&#9;String response = &quot;Fail: ant is not found in classpath.&quot;;&#13;&#10;&#9;&#9;try {&#13;&#10;&#9;&#9;&#9;ClassLoader classLoader = ClassLoader.getSystemClassLoader();&#13;&#10;&#9;&#9;&#9;URL url = classLoader.getResource(&quot;org/apache/tools/ant/Project.class&quot;); &#13;&#10;&#9;&#9;&#9;if (url == null) {&#13;&#10;&#9;&#9;&#9;&#9;return response+&quot; null url&quot;;&#13;&#10;&#9;&#9;&#9;}&#9;&#9;&#9;&#13;&#10;&#9;&#9;} catch(Exception e) {&#9;&#9;&#9;  &#13;&#10;&#9;&#9;&#9;&#9;return response+&quot; Exception is: &quot;+e.getMessage();&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;response =&quot;pass: ant is found in classpath.&quot;;&#13;&#10;&#9;&#9;return response;&#13;&#10;&#9;}&#13;&#10;&#13;&#10;&#9;&#13;&#10;&#13;&#10;&#9;String verifyAntInClasspath3() {&#13;&#10;&#9;&#9;String response = &quot;Fail: ant is not found in classpath.&quot;;&#13;&#10;&#9;&#9;try {&#13;&#10;&#9;&#9;&#9;ClassLoader classLoader = com.itko.util.cpdlg.JavaUtils.getClassLoader();&#13;&#10;&#9;&#9;&#9;URL[] urls = ((URLClassLoader)classLoader).getURLs();&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;for(int i = 0; i &lt; urls.length; i++) {&#13;&#10;&#9;&#9;&#9;&#9;response=&quot;\n&quot;+urls[i].getPath();&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;} catch(Exception e) {&#9;&#9;&#9;  &#13;&#10;&#9;&#9;&#9;&#9;return response;&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;// response =&quot;pass: ant is found in classpath.&quot;;&#13;&#10;&#9;&#9;return response;&#13;&#10;&#9;}&#13;&#10;&#13;&#10;&#9;String verifyAntInClasspath4() {&#13;&#10;&#9;&#9;String response = &quot;Fail: ant is not found in classpath.&quot;;&#13;&#10;&#9;&#9;try {&#13;&#10;&#9;&#9;&#9;String[] rl = com.itko.util.cpdlg.JavaUtils.getClasspath();&#13;&#10;&#9;&#9;&#9;for(int i = 0; i &lt; rl.length; i++) {&#13;&#10;&#9;&#9;&#9;&#9;response=response+&quot;\n&quot;+rl[i];&#13;&#10;&#9;&#9;&#9;}&#9;&#9;&#13;&#10;&#9;&#9;} catch(Exception e) {&#9;&#9;&#9;  &#13;&#10;&#9;&#9;&#9;&#9;return response;&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;// response =&quot;pass: ant is found in classpath.&quot;;&#13;&#10;&#9;&#9;return response;&#13;&#10;&#9;}&#13;&#10;&#13;&#10;&#13;&#10;&#9;String verifyAntInClasspath2() {&#13;&#10;&#9;&#9;String response = &quot;Fail: ant is not found in classpath.&quot;;&#13;&#10;&#9;&#9;try {&#13;&#10;&#9;&#9;&#9;ClassLoader classLoader = com.itko.lisa.test.Environment.getClassLoader();&#13;&#10;&#9;&#9;&#9;URL url = classLoader.getResource(&quot;org/apache/tools/ant/Project.class&quot;); &#13;&#10;&#9;&#9;&#9;if (url == null) {&#13;&#10;&#9;&#9;&#9;&#9;return response;&#13;&#10;&#9;&#9;&#9;}&#9;&#9;&#9;&#13;&#10;&#9;&#9;} catch(Exception e) {&#9;&#9;&#9;  &#13;&#10;&#9;&#9;&#9;&#9;return response+&quot; Exception is: &quot;+e.getMessage();&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;response =&quot;Pass: ant is found in classpath.&quot;;&#13;&#10;&#9;&#9;return response;&#13;&#10;&#9;}&#13;&#10;&#13;&#10;&#9;static String verifyAntInClasspath() {&#13;&#10;&#9;&#9;String response = &quot;Fail: ant is not found in classpath.&quot;;&#13;&#10;&#9;&#9;try {&#13;&#10;&#9;&#9;&#9;com.itko.lisa.test.TestExec.class.forName(&quot;org.apache.tools.ant.Project&quot;);&#9;&#13;&#10;&#9;&#9;}catch(Exception e) {&#13;&#10;&#9;&#9;&#9;return response+e.getMessage();&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;response =&quot;pass: ant is found in classpath.&quot;;&#13;&#10;&#9;&#9;return response;&#13;&#10;&#9;&#13;&#10;&#9;}&#13;&#10;&#13;&#10;*/&#13;&#10;&#13;&#10;&#9;String verifyAntInClasspath() {&#13;&#10;&#9;&#9;String response = &quot;Fail: ant is not found in classpath.&quot;;&#13;&#10;&#9;&#9;try {&#13;&#10;&#9;&#9;&#9;// com.itko.util.cpdlg.JavaUtils.getClassLoader();&#13;&#10;&#9;&#9;&#9;ClassLoader classLoader = com.itko.lisa.test.Environment.getClassLoader();&#13;&#10;&#9;&#9;&#9;URL url = classLoader.getResource(&quot;org/apache/tools/ant/Project.class&quot;); &#13;&#10;&#9;&#9;&#9;if (url == null) {&#13;&#10;&#9;&#9;&#9;&#9;return response;&#13;&#10;&#9;&#9;&#9;}&#9;&#9;&#9;&#13;&#10;&#9;&#9;} catch(Exception e) {&#9;&#9;&#9;  &#13;&#10;&#9;&#9;&#9;&#9;return response;&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;response =&quot;Pass: ant is found in classpath.&quot;;&#13;&#10;&#9;&#9;return response;&#13;&#10;&#9;}&#13;&#10;&#9;&#13;&#10;&#13;&#10;return verifyAntInClasspath();</script>
    </Node>


    <Node name="verifyAntVersion" log="This step verifies the input variables for the invokeAnt subprocess."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="d879a86d-verifyAntVersion" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="verifyInputVariables" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert147" type="com.itko.lisa.test.CheckResultRegEx">
<log>Verifying the input variables step failed.</log>
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
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.FileReader;&#13;&#10;import java.io.InputStream;&#13;&#10;import java.io.OutputStream;&#13;&#10;import java.io.PrintStream;&#13;&#10;import java.util.Enumeration;&#13;&#10;import java.util.Properties;&#13;&#10;import java.util.Set;&#13;&#10;&#13;&#10;&#13;&#10;String verifyAnt() {&#13;&#10;&#9;&#9;String response = &quot;Fail:&quot;;&#13;&#10;&#9;&#9;String version = null;&#13;&#10;&#9;&#9;try {&#13;&#10;&#9;&#9;&#9;version = org.apache.tools.ant.Main.getAntVersion();&#13;&#10;&#9;&#9;&#9;// version = &quot;Apache Ant version 1.7.1 compiled on June 27&quot;;&#13;&#10;&#9;&#9;}catch(Exception e) {&#13;&#10;&#9;&#9;&#9;if ( e instanceof ClassNotFoundException) {&#13;&#10;&#9;&#9;&#9;&#9;response = response+&quot; Did not find ant in classpath!&quot;;&#13;&#10;&#9;&#9;&#9;&#9;return response;&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;response = response+&quot; Could not get the version of ant&quot;;&#13;&#10;&#9;&#9;&#9;return response;&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;&#13;&#10;&#9;&#9;String [] versionArray = version.split(&quot; &quot;);&#13;&#10;&#9;&#9;if (versionArray.length != 9) {&#13;&#10;&#9;&#9;&#9;try {&#13;&#10;&#9;&#9;&#9;&#9;Properties props = new Properties();&#13;&#10;&#9;&#9;&#9;&#9;  InputStream in = org.apache.tools.ant.Main.class.getResourceAsStream(&quot;/org/apache/tools/ant/version.txt&quot;);&#13;&#10;&#9;&#9;&#9;&#9;  props.load(in);&#13;&#10;&#9;&#9;&#9;&#9;  in.close();&#13;&#10;&#9;&#9;&#9;&#9;  version = props.getProperty(&quot;VERSION&quot;);&#13;&#10;&#9;&#9;&#9;}catch(Exception e) {&#13;&#10;&#9;&#9;&#9;&#9;response = response+&quot; Could not verify the version of ant. the version returned is: &quot;+version;&#13;&#10;&#9;&#9;&#9;&#9;return response;&#13;&#10;&#9;&#9;&#9;}&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;}else {&#13;&#10;&#9;&#9;&#9;version = versionArray[3];&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;&#13;&#10;&#9;&#9;versionArray = version.split(&quot;\\.&quot;);&#13;&#10;&#9;&#9;if (versionArray.length != 3) {&#13;&#10;&#9;&#9;&#9;response = response+&quot; Could not verify the version of ant. the version returned is: &quot;+version;&#13;&#10;&#9;&#9;&#9;// response = response+&quot;\n&quot;+&quot; Expected version format is: x.y.z&quot;;&#13;&#10;&#9;&#9;&#9;return response;&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;&#13;&#10;&#9;&#9;version = versionArray[0]+&quot;.&quot;+versionArray[1];&#13;&#10;&#9;&#9;&#13;&#10;&#9;&#9;if (Double.parseDouble(version) &lt; 1.7) {&#13;&#10;&#9;&#9;&#9;response = response+&quot;The version of ant should be at least 1.7.x. Current Version is: &quot;+versionArray[0]+&quot;.&quot;+versionArray[1];&#13;&#10;&#9;&#9;&#9;return response;&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;response = &quot;Pass: ant verified successfully.&quot;;&#13;&#10;&#9;&#9;return response;&#13;&#10;&#9;}&#13;&#10;&#13;&#10;return verifyAnt();</script>
    </Node>


    <Node name="verifyInputVariables" log="This step verifies the input variables for the invokeAnt subprocess."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="d879a86d-verifyInputVariables" 
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
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.FileReader;&#13;&#10;import java.io.InputStream;&#13;&#10;import java.io.OutputStream;&#13;&#10;import java.io.PrintStream;&#13;&#10;import java.util.Enumeration;&#13;&#10;import java.util.Properties;&#13;&#10;import java.util.Set;&#13;&#10;&#13;&#10;String checkInputVariables() {&#13;&#10;&#9;&#9;String response = &quot;Fail:&quot;;&#13;&#10;&#9;&#9;try {&#13;&#10;&#9;&#9;&#9;if ((buildFileName == null) || (buildFileName.equals(&quot;&quot;)) ) {&#13;&#10;&#9;&#9;&#9;&#9;throw new Exception(&quot;buildFileName cannot be null.&quot;);&#13;&#10;&#9;&#9;&#9;}&#13;&#10;           &#13;&#10;&#9;&#9;&#9;File buildFile = new File(testExec.parseInState(buildFileName).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;&#9;&#9;&#9;if (!buildFile.canRead()) {&#13;&#10;&#9;&#9;&#9;&#9;throw new Exception(&quot;Build file not found/cannot read it. &quot;+buildFileName);&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;if (!buildFile.isFile()) {&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;throw new Exception(&quot;build file is not a normal file. &quot;+buildFileName);&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;File propertyFile = null;&#13;&#10;&#9;&#9;&#9;if ((propertyFileName != null) &amp;&amp; (!propertyFileName.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;&#9;&#9;propertyFile = new File(testExec.parseInState(propertyFileName).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;&#9;&#9;&#9;&#9;if (!propertyFile.canRead()) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;throw new Exception(&quot;Property file not found/cannot read it. &quot;+propertyFileName);&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;if (!propertyFile.isFile()) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;throw new Exception(&quot;property file is not a normal file. &quot;+propertyFileName);&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#13;&#10;&#9;&#9;&#9;File projectBaseDir = null;&#13;&#10;&#9;&#9;&#9;if ((projectBaseDirName != null) &amp;&amp; (!projectBaseDirName.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;&#9;&#9;projectBaseDir = new File(testExec.parseInState(projectBaseDirName).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;&#9;&#9;&#9;&#9;if((!projectBaseDir.exists()) || (!projectBaseDir.isDirectory())) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;throw new Exception(&quot;The project base directory is not valid. &quot;+projectBaseDirName);&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#13;&#10;            // Let&apos;s also verify if TIBCO_JAVA_HOME exists since we use that to launch Ant&#13;&#10;            File javaHome = new File(testExec.parseInState(TIBCO_JAVA_HOME).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;            if (!javaHome.exists()) {&#13;&#10;                throw new Exception(&quot;Java home directory is not valid: &quot; + TIBCO_JAVA_HOME);&#13;&#10;            }&#13;&#10;&#13;&#10;&#9;&#9;&#9;response = &quot;Pass: Input variables are valid.&quot;;&#13;&#10;&#13;&#10;&#9;&#9;}catch(Exception e) {&#13;&#10;&#9;&#9;&#9;response = &quot;Fail: &quot;+e.getLocalizedMessage();&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;return response;&#13;&#10;&#9;}&#13;&#10;&#13;&#10;return checkInputVariables();</script>
    </Node>


    <Node name="getAntArguments" log="This step gets the arguments to be passed to the ant invocation."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="d879a86d-getAntArguments" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="getProjectBaseDir" > 


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

<CheckResult assertTrue="true" name="Assert147" type="com.itko.lisa.test.CheckResultRegEx">
<log>Verifying the input variables step failed.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Fail:.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.FileReader;&#13;&#10;import java.io.InputStream;&#13;&#10;import java.io.OutputStream;&#13;&#10;import java.io.PrintStream;&#13;&#10;import java.util.Enumeration;&#13;&#10;import java.util.Properties;&#13;&#10;import java.util.Set;&#13;&#10;&#13;&#10;import org.apache.tools.ant.DefaultLogger;&#13;&#10;import org.apache.tools.ant.Project;&#13;&#10;import org.apache.tools.ant.ProjectHelper;&#13;&#10;&#13;&#10;&#9;&#13;&#10;&#9;&#9;&#9;String getAntArgs() {&#13;&#10;&#9;&#9;&#9;String response = &quot;&quot;;&#13;&#10;&#9;&#9;&#9;FileInputStream fis = null;&#13;&#10;&#9;&#9;&#9;try {&#13;&#10;&#9;&#9;&#9;&#9;File propertyFile = null;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;Properties props = null;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;if ((propertyFileName != null) &amp;&amp; (!propertyFileName.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;response = response+&quot; -propertyfile &quot;+propertyFileName.replace(&quot;\\&quot;,&quot;/&quot;);&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;if ((propertyList != null) &amp;&amp; (!propertyList.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;String [] propArray = propertyList.split(&quot;,&quot;);&#13;&#10;&#9;&#9;&#9;&#9;&#9;for (int i =0; i &lt; propArray.length; i++) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;String [] keyPair = propArray[i].split(&quot;=&quot;);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;if (keyPair.length == 1) continue;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;//should we trim empty spaces?&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;response = response+&quot; -D&quot;+(String)keyPair[0]+&quot;=&quot;+(String)keyPair[1];&#13;&#10;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;                if ((projectBaseDirName != null) &amp;&amp; (!projectBaseDirName.equals(&quot;&quot;))) {&#13;&#10;                    response = response+&quot; -D&quot;+&quot;basedir=\&quot;&quot;+(String)projectBaseDirName.replace(&quot;\\&quot;,&quot;/&quot;) + &quot;\&quot;&quot;;&#13;&#10;                }&#13;&#10;                else {&#13;&#10;                    response = response+&quot; -D&quot;+&quot;basedir=\&quot;&quot;+(String)LISA_TC_PATH.replace(&quot;\\&quot;,&quot;/&quot;) + &quot;\&quot;&quot;;&#13;&#10;                }&#13;&#10;&#9;            &#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;}catch(Exception e) {&#13;&#10;&#9;&#9;&#9;&#9;response = &quot;Fail: &quot;+e;&#13;&#10;&#9;&#9;&#9;}finally {&#13;&#10;&#9;&#9;&#9;&#9;try {&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;if (fis != null) fis.close();&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;}catch(Exception ioe) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;//ignore.&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;//System.out.println(&quot;response is:&quot;+response);&#13;&#10;&#9;&#9;&#9;return response;&#13;&#10;&#9;&#9;}&#13;&#10;return getAntArgs();</script>
    </Node>


    <Node name="getProjectBaseDir" log="This step gets the arguments to be passed to the ant invocation."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="d879a86d-getProjectBaseDir" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="invokeAntFromCommandLine" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getProjectBaseDir.rsp</valueToFilterKey>
      <prop>projectBaseDirectory</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert147" type="com.itko.lisa.test.CheckResultRegEx">
<log>Verifying the input variables step failed.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Fail:.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.FileReader;&#13;&#10;import java.io.InputStream;&#13;&#10;import java.io.OutputStream;&#13;&#10;import java.io.PrintStream;&#13;&#10;import java.util.Enumeration;&#13;&#10;import java.util.Properties;&#13;&#10;import java.util.Set;&#13;&#10;&#9;&#13;&#10;&#9;&#9;String getProjectbaseDir() {&#13;&#10;&#9;&#9;&#9;String baseDir = &quot;&quot;;&#13;&#10;            if ((projectBaseDirName != null) &amp;&amp; (!projectBaseDirName.equals(&quot;&quot;))) {&#13;&#10;                baseDir=(String)projectBaseDirName;&#13;&#10;            }&#13;&#10;            else {&#13;&#10;                baseDir=(String)LISA_TC_PATH;&#13;&#10;            }&#13;&#10;&#9;&#9;&#9;//System.out.println(&quot;baseDir is:&quot;+baseDir);&#13;&#10;&#9;&#9;&#9;return baseDir;&#13;&#10;&#9;&#9;}&#13;&#10;return getProjectbaseDir();</script>
    </Node>


    <Node name="invokeAntFromCommandLine" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="d879a86d-invokeAntFromCommandLine" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="checkCondition" > 

<cmd>{{=TIBCO_JAVA_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}}/bin/java {{antOpts}} -cp {{additionalClasspath}}{{path.separator}}{{=TIBCO_COMMON_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}}/lib/ant-launcher.jar{{path.separator}}{{=TIBCO_COMMON_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}}/lib/ant-trax.jar{{path.separator}}{{=TIBCO_COMMON_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}}/lib/ant.jar{{path.separator}}{{=TIBCO_COMMON_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}}/lib/ant-contrib.jar{{path.separator}}{{=TIBCO_COMMON_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}}/lib/ant-nodeps.jar org.apache.tools.ant.launch.Launcher {{additionalAntCmdLineArgs}} {{antCmdLineArgs}}  {{=logFileName.equals(&quot;&quot;)?&quot;&quot;:&quot;-logfile \&quot;&quot; + logFileName.replace(&quot;\\&quot;,&quot;/&quot;) + &quot;\&quot;&quot;}} -buildfile &quot;{{=buildFileName.replace(&quot;\\&quot;,&quot;/&quot;)}}&quot; {{targetName}}</cmd>
<basedir>{{LISA_RELATIVE_PROJ_PATH}}/reports</basedir>
<toNode>abort</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>3000</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node name="checkCondition" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="d879a86d-checkCondition" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="check for waitForCompletion and logFileName flag" type="com.itko.lisa.test.CheckResultContains">
<log>waitForCompletion is {{waitForCompletion}} &amp; logFileName is {{=logFileName.equals(&quot;&quot;)?&quot;not specified&quot; : &quot;&quot; +  logFileName.replace(&quot;\\&quot;,&quot;/&quot;)}}</log>
<then>returnResponse</then>
<valueToAssertKey></valueToAssertKey>
        <param>true</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.io.*;&#13;&#10;&#13;&#10;/* check for waitForCompletion flag and logFile flag&#13;&#10;   return true only when both are true&#13;&#10;   if true is returned then - ant log file is being read and output is&#13;&#10;   sent to the console&#13;&#10;   if false is returned then - test case ends &#13;&#10;*/&#13;&#10;&#13;&#10;if ( (waitForCompletion) &amp;&amp;&#13;&#10;     ((logFileName != null) &amp;&amp; (!logFileName.equals(&quot;&quot;)) ) )  &#13;&#10;{&#13;&#10;       return &quot;true&quot;; &#13;&#10;}else {  &#13;&#10;    return &quot;&quot;; &#13;&#10;}</script>
    </Node>


    <Node name="returnResponse" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="d879a86d-returnResponse" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}\com\tibco\lisa\file\ReadFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{logFileName}}</value>
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


    <Node name="preInvokeAntCmdLine" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="A9664DF27B6911ED8AB7506B8D8BDEB5" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="invokeAntFromCommandLine" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSavePropToFile">
        <valueToFilterKey>lisa.preInvokeAntCmdLine.rsp</valueToFilterKey>
      <file>{{LISA_RELATIVE_PROJ_ROOT}}/Tests/antcmd.bat</file>
      <append>false</append>
      </Filter>

<log>{{=TIBCO_JAVA_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}}/bin/java {{antOpts}} -cp {{additionalClasspath}}{{path.separator}}{{=TIBCO_COMMON_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}}/lib/ant-launcher.jar{{path.separator}}{{=TIBCO_COMMON_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}}/lib/ant-trax.jar{{path.separator}}{{=TIBCO_COMMON_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}}/lib/ant.jar{{path.separator}}{{=TIBCO_COMMON_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}}/lib/ant-contrib.jar{{path.separator}}{{=TIBCO_COMMON_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}}/lib/ant-nodeps.jar org.apache.tools.ant.launch.Launcher {{additionalAntCmdLineArgs}} {{antCmdLineArgs}}  {{=logFileName.equals(&quot;&quot;)?&quot;&quot;:&quot;-logfile \&quot;&quot; + logFileName.replace(&quot;\\&quot;,&quot;/&quot;) + &quot;\&quot;&quot;}} -buildfile &quot;{{=buildFileName.replace(&quot;\\&quot;,&quot;/&quot;)}}&quot; {{targetName}}</log>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="9B4D7623746411ED90AF506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="d879a86d-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="d879a86d-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
