<?xml version="1.0" ?>

<TestCase name="JVMWrapper518" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/19/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="04/11/2023" host="na2devasgaks01" />
</meta>

<id>C4619AE1BBE111EDA4C8506B8D8BDEB5</id>
<Documentation>Call the TIBCO Wrapper.&#13;&#10;Syntax: &lt;wrapperName&gt; &lt;command&gt; --propFile &lt;propFile&gt; &lt;extraCommand&gt;&#13;&#10;where &#13;&#10;&lt;wrapperName&gt; the absolute path to the wrapper application. Required&#13;&#10;&lt;propFile&gt; the absolute path to the tra file used to launch the wrapper (optional).&#13;&#10;&lt;command&gt; can be one of the following command switches (optional):&#13;&#10;   --install, installs the wrapped application as a windows service&#13;&#10;   --uninstall, uninstalls a previously installed Windows service&#13;&#10;   --update, updates a previously installed wrapped application or installs if non-existing&#13;&#10;   --start, starts a previously installed Windows service&#13;&#10;   --stop, stops a running Windows service&#13;&#10;   --run, runs the wrapped application as a console application&#13;&#10;&lt;extraCommand&gt; Extra command needed by specific wrapper (optional). For instance BW needs the repository path.&#13;&#10;&#13;&#10;For optional input, use &lt;&lt;null&gt;&gt; as value in order no to pass the input parameter</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9LTc0MTIxMjU4MA==</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>wrapperName</key>
    <value></value>
    <name>Absolute path to the wrapper application</name>
    </Parameter>
    <Parameter>
    <key>command</key>
    <value>&lt;&lt;null&gt;&gt;</value>
    <name>One of the following command switches: --install, --uninstall, --update, --start, --stop, --run</name>
    </Parameter>
    <Parameter>
    <key>propFile</key>
    <value></value>
    <name>Absolute path to the tra file used to launch the wrapper</name>
    </Parameter>
    <Parameter>
    <key>extraCommand</key>
    <value>&lt;&lt;null&gt;&gt;</value>
    <name>Extra command a specific wrapper might need</name>
    </Parameter>
    <Parameter>
    <key>startInDir</key>
    <value>{{user.home}}</value>
    <name>Execute from directory</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>false</value>
    <name>Wait for the command to complete (true or false)</name>
    </Parameter>
    <Parameter>
    <key>waitBeforeOnWindows</key>
    <value>0</value>
    <name>Number of seconds to sleep on Windows platforms before starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitBeforeOnUnix</key>
    <value>0</value>
    <name>Number of seconds to sleep on Unix platforms before starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitAfterOnWindows</key>
    <value>10</value>
    <name>Number of seconds to sleep on Windows platforms after starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitAfterOnUnix</key>
    <value>20</value>
    <name>Number of seconds to sleep on Unix platforms after starting the JVM wrapper</name>
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
    <key>baseErrorMsg</key>
    <value></value>
    <name>baseErrorMsg</name>
    </Parameter>
    <Parameter>
    <key>baseSuccessMsg</key>
    <value></value>
    <name>baseSuccessMsg</name>
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
    <key>command</key>
    <value></value>
    <name>command</name>
    </Parameter>
    <Parameter>
    <key>commandProp</key>
    <value></value>
    <name>commandProp</name>
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
    <key>extraCommandProp</key>
    <value></value>
    <name>extraCommandProp</name>
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
    <key>lisa.Log.rsp</key>
    <value></value>
    <name>lisa.Log.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp.time</key>
    <value></value>
    <name>lisa.Log.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.callWrapper.rsp</key>
    <value></value>
    <name>lisa.callWrapper.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.callWrapper.rsp.time</key>
    <value></value>
    <name>lisa.callWrapper.rsp.time</name>
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
    <key>lisa.escape command line params.rsp</key>
    <value></value>
    <name>Set 1st in escape command line params</name>
    </Parameter>
    <Parameter>
    <key>lisa.escape command line params.rsp.time</key>
    <value></value>
    <name>Set 1st in escape command line params</name>
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
    <key>lisa.getCommand.rsp</key>
    <value></value>
    <name>lisa.getCommand.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getCommand.rsp.time</key>
    <value></value>
    <name>lisa.getCommand.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.getExtraCommand.rsp</key>
    <value></value>
    <name>lisa.getExtraCommand.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getExtraCommand.rsp.time</key>
    <value></value>
    <name>lisa.getExtraCommand.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.getPropFile.rsp</key>
    <value></value>
    <name>lisa.getPropFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getPropFile.rsp.time</key>
    <value></value>
    <name>lisa.getPropFile.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.getWaitAfterProperty.rsp</key>
    <value></value>
    <name>lisa.getWaitAfterProperty.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getWaitAfterProperty.rsp.time</key>
    <value></value>
    <name>lisa.getWaitAfterProperty.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.timeoutFail.rsp</key>
    <value></value>
    <name>lisa.timeoutFail.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.timeoutFail.rsp.time</key>
    <value></value>
    <name>lisa.timeoutFail.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp</key>
    <value></value>
    <name>lisa.validate.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp.time</key>
    <value></value>
    <name>lisa.validate.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.waitAfter.rsp</key>
    <value></value>
    <name>lisa.waitAfter.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.waitAfter.rsp.time</key>
    <value></value>
    <name>lisa.waitAfter.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.waitBefore.rsp</key>
    <value></value>
    <name>lisa.waitBefore.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.waitBefore.rsp.time</key>
    <value></value>
    <name>lisa.waitBefore.rsp.time</name>
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
    <key>projectloc</key>
    <value></value>
    <name>Set in 2node_orcl.config configuration</name>
    </Parameter>
    <Parameter>
    <key>propFileProp</key>
    <value></value>
    <name>propFileProp</name>
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
    <Parameter>
    <key>waitAfter</key>
    <value></value>
    <name>waitAfter</name>
    </Parameter>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="C4619AE2BBE111EDA4C8506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="getPropFile" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>validate had thrown Exception</log>
<then>continue (quiet)</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert93" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>continue (quiet)</then>
<valueToAssertKey></valueToAssertKey>
        <param>Wrapper Validation Error</param>
</CheckResult>

<onerror>continue (quiet)</onerror>
<script>String baseErrorMsg = &quot;Wrapper Validation Error&quot;;&#13;&#10;String baseSuccessMsg = &quot;Wrapper Validation Success&quot;;&#13;&#10;&#13;&#10;// Check Timeout function&#13;&#10;String checkTimeout(String timeout) {&#13;&#10; if (timeout.equals(&quot;&quot;) || timeout.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10;  return baseErrorMsg + &quot;: Timeout is required.&quot;;&#13;&#10; try {&#13;&#10;  int t = Integer.parseInt(timeout);&#13;&#10;  return baseSuccessMsg;&#13;&#10; }&#13;&#10; catch (NumberFormatException nfe) {&#13;&#10;  return baseErrorMsg + &quot;: Timeout format Exception: &quot; + nfe.getMessage();&#13;&#10; }&#13;&#10;}&#13;&#10;&#13;&#10;// Check wrapper exists&#13;&#10;wrapperName = testExec.parseInState(wrapperName).replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;if (com.itko.util.Utilities.isWindows() &amp;&amp; !wrapperName.endsWith(&quot;.exe&quot;))&#13;&#10; wrapperName = wrapperName + &quot;.exe&quot;;&#13;&#10;File f = new File(wrapperName);&#13;&#10;if (!f.exists()) &#13;&#10; return baseErrorMsg + &quot;: Wrapper (&quot; + wrapperName + &quot;) does not exist.&quot;;&#13;&#10;&#13;&#10;// Check working directory exists&#13;&#10;startInDir = testExec.parseInState(startInDir).replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;f = new File(startInDir);&#13;&#10;if (!f.exists())&#13;&#10; return baseErrorMsg + &quot;: Start-In directory (&quot; + startInDir + &quot;) does not exist.&quot;;&#13;&#10;&#13;&#10;// Check prop file&#13;&#10;propFile = testExec.parseInState(propFile).replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;&#13;&#10;// all the timeout parameters&#13;&#10;checkTimeout(testExec.parseInState(waitBeforeOnWindows.toString()));&#13;&#10;checkTimeout(testExec.parseInState(waitAfterOnWindows.toString()));&#13;&#10;checkTimeout(testExec.parseInState(waitBeforeOnUnix.toString()));&#13;&#10;checkTimeout(testExec.parseInState(waitAfterOnUnix.toString()));&#13;&#10;&#13;&#10;// Ok&#13;&#10;return baseSuccessMsg;</script>
    </Node>


    <Node name="getPropFile" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="C4619AE3BBE111EDA4C8506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="getCommand" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getPropFile.rsp</valueToFilterKey>
      <prop>propFileProp</prop>
      </Filter>

<onerror>continue (quiet)</onerror>
<script>String propFileStr = &quot;&quot;;&#13;&#10;if (!propFile.equals(&quot;&lt;&lt;null&gt;&gt;&quot;)) {&#13;&#10;  if (com.itko.util.Utilities.isWindows()) {&#13;&#10;    // Support for blank space in path on Windows&#13;&#10;    propFileStr = &quot;--propFile \&quot;&quot; + propFile + &quot;\&quot;&quot;; // that does not work on Unix (tried on solaris)&#13;&#10;  }&#13;&#10;  else { // Unix. No support for blank space&#13;&#10;    propFileStr = &quot;--propFile &quot; + propFile;&#13;&#10;  }&#13;&#10;}&#13;&#10;return propFileStr.replace(&apos;\\&apos;,&apos;/&apos;);</script>
    </Node>


    <Node name="getCommand" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="C4619AE4BBE111EDA4C8506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="getExtraCommand" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>commandProp</prop>
      </Filter>

<onerror>continue (quiet)</onerror>
<script>String commandStr = &quot;&quot;;&#13;&#10;if (!command.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10;  commandStr = command;&#13;&#10;&#13;&#10;return commandStr;</script>
    </Node>


    <Node name="getExtraCommand" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="C4619AE5BBE111EDA4C8506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="waitBefore" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>extraCommandProp</prop>
      </Filter>

<onerror>continue (quiet)</onerror>
<script>String extraCommandStr = &quot;&quot;;&#13;&#10;if (!extraCommand.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10;  extraCommandStr = extraCommand;&#13;&#10;&#13;&#10;return extraCommandStr;</script>
    </Node>


    <Node name="waitBefore" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="C4619AE6BBE111EDA4C8506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="Log" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue (quiet)</onAbort>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>{{waitBeforeOnWindows}}</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>{{waitBeforeOnUnix}}</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="Log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="C4619AE7BBE111EDA4C8506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="getWaitAfterProperty" > 

<log>Executing &quot;{{wrapperName}} {{commandProp}} {{propFileProp}} {{extraCommandProp}}&quot;...</log>
    </Node>


    <Node name="getWaitAfterProperty" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="C461C1F8BBE111EDA4C8506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="escape command line params" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>waitAfter</prop>
      </Filter>

<onerror>continue (quiet)</onerror>
<script>if (com.itko.util.Utilities.isWindows())&#13;&#10;  return waitAfterOnWindows;&#13;&#10;else&#13;&#10;  return waitAfterOnUnix;</script>
    </Node>


    <Node name="escape command line params" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="C461C1F9BBE111EDA4C8506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="callWrapper" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>continue (quiet)</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>continue (quiet)</onerror>
<script>commandProp = commandProp.replaceAll(&quot;\\\\&quot;, &quot;\\\\\\\\&quot;);&#13;&#10;propFileProp = propFileProp.replaceAll(&quot;\\\\&quot;, &quot;\\\\\\\\&quot;);&#13;&#10;extraCommandProp = extraCommandProp.replaceAll(&quot;\\\\&quot;, &quot;\\\\\\\\&quot;);</script>
    </Node>


    <Node name="callWrapper" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="C461C1FABBE111EDA4C8506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert165" type="com.itko.lisa.test.CheckResultPropRegEx">
<log>Assert [Assert165] fired true of type Property Value Expression</log>
<then>waitAfter</then>
<valueToAssertKey></valueToAssertKey>
        <prop>waitForCompletion</prop>
        <param>false</param>
</CheckResult>

<cmd>{{wrapperName}} {{commandProp}} {{propFileProp}} {{extraCommandProp}}</cmd>
<basedir>{{startInDir}}</basedir>
<toNode>continue (quiet)</toNode>
<exceptionNode>continue (quiet)</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>false</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node name="waitAfter" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="C461C1FBBBE111EDA4C8506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue (quiet)</onAbort>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>{{waitAfterOnWindows}}</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>{{waitAfterOnUnix}}</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="timeoutFail" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="C461C1FCBBE111EDA4C8506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="fail" > 

<onerror>continue (quiet)</onerror>
<script>return &quot;Timeout! the command did not complete within {{waitAfter}} seconds&quot;;</script>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="C461C1FFBBE111EDA4C8506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="C461C1FEBBE111EDA4C8506B8D8BDEB5" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="C461C1FDBBE111EDA4C8506B8D8BDEB5" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
