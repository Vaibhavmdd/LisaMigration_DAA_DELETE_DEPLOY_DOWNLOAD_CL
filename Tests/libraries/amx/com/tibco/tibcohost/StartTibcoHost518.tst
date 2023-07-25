<?xml version="1.0" ?>

<TestCase name="StartTibcoHost518" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/27/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="04/11/2023" host="na2devasgaks01" />
</meta>

<id>A6268074BBE111EDA4C8506B8D8BDEB5</id>
<Documentation>Starts TIBCOHost.&#13;&#10;This sub-process tries to stop the TIBCOHost first (Mode Abort), clean up the logs, then starts it.&#13;&#10;It can be executed on a remote TIBCOHost as well as long as there is a LISA simulator running on the remote host.&#13;&#10;&#13;&#10;Note: LISA simulator port must be 2001 on the remote machine.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9NTY4MDEwODY2</sig>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>host</key>
    <value>localhost</value>
    <name>Host on which the TIBCOHost should be started</name>
    </Parameter>
    <Parameter>
    <key>tibcoHostinstance</key>
    <value>{{TIBCO_HOST_CONFIG}}/&lt;yourTHInstanceFolder&gt;/host</value>
    <name>TIBCOHost instance directory. If host is remote, specify the TIBCOHost instance location on remote host.</name>
    </Parameter>
    <Parameter>
    <key>logFile</key>
    <value>{{tibcoHostinstance}}/logs/tibcohost.log</value>
    <name>TIBCOHost log file to monitor to insure proper start-up</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>60</value>
    <name>Max number of seconds to wait to allow the TIBCOHost to start</name>
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
    <key>lisa.checkLogForErrors.rsp</key>
    <value></value>
    <name>lisa.checkLogForErrors.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.checkLogForErrors.rsp.time</key>
    <value></value>
    <name>lisa.checkLogForErrors.rsp.time</name>
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
    <key>lisa.deleteLogs.rsp.time</key>
    <value></value>
    <name>lisa.deleteLogs.rsp.time</name>
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
    <key>lisa.getSimulator.rsp</key>
    <value></value>
    <name>lisa.getSimulator.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getSimulator.rsp.time</key>
    <value></value>
    <name>lisa.getSimulator.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.getTimeLimit.rsp</key>
    <value></value>
    <name>lisa.getTimeLimit.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getTimeLimit.rsp.time</key>
    <value></value>
    <name>lisa.getTimeLimit.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp</key>
    <value></value>
    <name>lisa.log.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value></value>
    <name>Set 1st in log</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingCheckLogFileExists.rsp</key>
    <value></value>
    <name>lisa.repeatingCheckLogFileExists.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingCheckLogFileExists.rsp.time</key>
    <value></value>
    <name>lisa.repeatingCheckLogFileExists.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingReadLog.rsp</key>
    <value></value>
    <name>lisa.repeatingReadLog.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingReadLog.rsp.time</key>
    <value></value>
    <name>lisa.repeatingReadLog.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingSleep.rsp</key>
    <value></value>
    <name>lisa.repeatingSleep.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.repeatingSleep.rsp.time</key>
    <value></value>
    <name>Set 1st in repeatingSleep</name>
    </Parameter>
    <Parameter>
    <key>lisa.sleep.rsp</key>
    <value></value>
    <name>lisa.sleep.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.sleep.rsp.time</key>
    <value></value>
    <name>lisa.sleep.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.startTibcoHost.rsp</key>
    <value></value>
    <name>lisa.startTibcoHost.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.startTibcoHost.rsp.time</key>
    <value></value>
    <name>lisa.startTibcoHost.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.stopTibcoHost.rsp</key>
    <value></value>
    <name>lisa.stopTibcoHost.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.stopTibcoHost.rsp.time</key>
    <value></value>
    <name>lisa.stopTibcoHost.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.success.rsp</key>
    <value></value>
    <name>lisa.success.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.success.rsp.time</key>
    <value></value>
    <name>lisa.success.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.successWithErrors.rsp</key>
    <value></value>
    <name>lisa.successWithErrors.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.successWithErrors.rsp.time</key>
    <value></value>
    <name>lisa.successWithErrors.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.timeout.rsp</key>
    <value></value>
    <name>lisa.timeout.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.timeout.rsp.time</key>
    <value></value>
    <name>lisa.timeout.rsp.time</name>
    </Parameter>
    <Parameter>
    <key>lisa.validateInputVariables.rsp</key>
    <value></value>
    <name>lisa.validateInputVariables.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.validateInputVariables.rsp.time</key>
    <value></value>
    <name>lisa.validateInputVariables.rsp.time</name>
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
    <key>simulator</key>
    <value></value>
    <name>simulator</name>
    </Parameter>
    <Parameter>
    <key>simulatorPort</key>
    <value></value>
    <name>simulatorPort</name>
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
          uid="A6268075BBE111EDA4C8506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="getSimulator" > 

<log>Starting TIBCOHost on host {{host}} at {{tibcoHostinstance}} ...</log>
    </Node>


    <Node name="getSimulator" log="get the simulator for the host on which tibcohost should be started."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="A6268076BBE111EDA4C8506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="true" 
          next="validateInputVariables" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getSimulator.rsp</valueToFilterKey>
      <prop>simulator</prop>
      </Filter>


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Getting Simulators has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>if (host == null || host.equals(&quot;&quot;))&#13;&#10; throw new Exception(&quot;host is empty!&quot;);&#13;&#10;&#13;&#10;if (host.equalsIgnoreCase(LISA_HOST) || host.equals(&quot;localhost&quot;) || host.equals(&quot;127.0.0.1&quot;))&#13;&#10; return &quot;local&quot;;&#13;&#10;else&#13;&#10; return &quot;rmi://&quot; + host + &quot;:&quot; + simulatorPort + &quot;/&quot; + host;</script>
    </Node>


    <Node name="validateInputVariables" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="A6268077BBE111EDA4C8506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="stopTibcoHost" > 

<remoteServer>{{simulator}}</remoteServer>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert215" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>TIBCOHost Start-up Error</param>
</CheckResult>

<onerror>abort</onerror>
<script>import java.io.File;&#13;&#10;&#13;&#10;String errorMsg = &quot;TIBCOHost Start-up Error&quot;;&#13;&#10;&#13;&#10;String checkInputVariables() {&#13;&#10;&#9;File thFile = null;&#13;&#10;&#13;&#10;    if ((tibcoHostinstance == null) || (tibcoHostinstance.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;return errorMsg + &quot;: tibcoHostinstance is required&quot;;&#13;&#10;&#9;}&#13;&#10;&#9;if ((host == null) || (host.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;return errorMsg + &quot;: host is required&quot;;&#13;&#10;&#9;}&#13;&#10;    if ((logFile == null) || (logFile.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;return errorMsg + &quot;: logFile is required&quot;;&#13;&#10;&#9;}&#13;&#10;&#9;if ((timeout == null) || (timeout.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;return errorMsg + &quot;: timeout is required&quot;;&#13;&#10;&#9;}&#13;&#10;&#13;&#10;    thFile = new File(testExec.parseInState(tibcoHostinstance).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;&#13;&#10;&#9;if (!thFile.exists()) {&#13;&#10;&#9;&#9;return errorMsg + &quot;: tibcoHostinstance is not found/cannot read it: &quot; + testExec.parseInState(tibcoHostinstance);&#13;&#10;&#9;}&#13;&#10;&#9;if (!thFile.isDirectory()) {&#13;&#10;&#9;&#9;return errorMsg + &quot;tibcoHostinstance is not a directory: &quot; + testExec.parseInState(tibcoHostinstance);&#13;&#10;&#9;}&#13;&#10;&#13;&#10;&#9;return &quot;TIBCOHost Start-up Validation Success&quot;;&#13;&#10;}&#13;&#10;&#13;&#10;return checkInputVariables();</script>
    </Node>


    <Node name="stopTibcoHost" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="A6268078BBE111EDA4C8506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="sleep" > 

<remoteServer>{{simulator}}</remoteServer>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/tibcohost/StopTibcoHost.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue (quiet)</onAbort>
<Parameters>
    <Parameter>
    <key>host</key>
    <value>{{host}}</value>
    <name>Host on which to stop the TIBCOHost</name>
    </Parameter>
    <Parameter>
    <key>tibcoHostinstance</key>
    <value>{{tibcoHostinstance}}</value>
    <name>TIBCOHost instance directory</name>
    </Parameter>
    <Parameter>
    <key>mode</key>
    <value>abort</value>
    <name>Stop mode used for stopping the node (normal - immediate - abort). Default is normal.</name>
    </Parameter>
    <Parameter>
    <key>wait</key>
    <value>true</value>
    <name>If set to true the wait becomes synchronous and only returns when all node processes were stopped. Default is false</name>
    </Parameter>
    <Parameter>
    <key>timeout</key>
    <value>{{timeout}}</value>
    <name>Max number of seconds to wait to allow the TIBCOHost to stop</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="sleep" log="Sleep few seconds to allow tibcohost to stop gracefully."
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="A6268079BBE111EDA4C8506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="startTibcoHost" > 

<Documentation>Sleep a little bit to allow the release of the logs folder so that we can delete it.</Documentation>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>4</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>5</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="startTibcoHost" log="Start the tibcohost."
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="A626807ABBE111EDA4C8506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="getTimeLimit" > 

<remoteServer>{{simulator}}</remoteServer>
<Subprocess>{{LISA_RELATIVE_PROJ_ROOT}}/Tests/libraries/common/com/tibco/lisa/util/JVMWrapper518.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>wrapperName</key>
    <value>{{tibcoHostinstance}}/bin/tibcohost</value>
    <name>Absolute path to the wrapper application</name>
    </Parameter>
    <Parameter>
    <key>command</key>
    <value>&lt;&lt;null&gt;&gt;</value>
    <name>One of the following command switches: --install, --uninstall, --update, --start, --stop, --run</name>
    </Parameter>
    <Parameter>
    <key>propFile</key>
    <value>{{tibcoHostinstance}}/bin/tibcohost.tra</value>
    <name>Absolute path to the tra file used to launch the wrapper</name>
    </Parameter>
    <Parameter>
    <key>extraCommand</key>
    <value>start -clearCache</value>
    <name>Extra command a specific wrapper might need</name>
    </Parameter>
    <Parameter>
    <key>startInDir</key>
    <value>{{tibcoHostinstance}}/bin</value>
    <name>Execute from directory</name>
    </Parameter>
    <Parameter>
    <key>waitForCompletion</key>
    <value>true</value>
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
    <value>1200</value>
    <name>Number of seconds to sleep on Windows platforms after starting the JVM wrapper</name>
    </Parameter>
    <Parameter>
    <key>waitAfterOnUnix</key>
    <value>0</value>
    <name>Number of seconds to sleep on Unix platforms after starting the JVM wrapper</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="getTimeLimit" log="get the timelimit"
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="A626807BBBE111EDA4C8506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="true" 
          next="repeatingSleep" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>getTimeLimit step has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>Calendar future = Calendar.getInstance();&#13;&#10;future.add(Calendar.SECOND, timeout.intValue());&#13;&#10;testExec.setStateValue(&quot;future&quot;, future);</script>
    </Node>


    <Node name="repeatingSleep" log="repeat sleep"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="A626807CBBE111EDA4C8506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="repeatingCheckLogFileExists" > 

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>5</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>5</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="repeatingCheckLogFileExists" log="check if log file got created"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="A626A78DBBE111EDA4C8506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="repeatingReadLog" > 

<remoteServer>{{simulator}}</remoteServer>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert67" type="com.itko.lisa.test.AssertByScript">
<log>TIBCOHost did not start on time</log>
<then>timeout</then>
<valueToAssertKey></valueToAssertKey>
        <script>future.before(Calendar.getInstance());</script>
        <language>beanshell</language>
        <copyprops>TestExecPropsAndSystemProps</copyprops>
</CheckResult>

<CheckResult assertTrue="true" name="Assert95" type="com.itko.lisa.test.CheckResultContains">
<log>TIBCOHost log file not found yet...</log>
<then>repeatingSleep</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CheckFileExists.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{logFile}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="repeatingReadLog" log="read log and look for tibcohost started message"
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          uid="A626A78EBBE111EDA4C8506B8D8BDEB5" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="repeatingSleep" > 

<remoteServer>{{simulator}}</remoteServer>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert148" type="com.itko.lisa.test.CheckResultContains">
<log>TIBCO ActiveMatrix Foundation HPA instance located at {{tibcoHostinstance}} has been started Successfully.</log>
<then>checkLogForErrors</then>
<valueToAssertKey></valueToAssertKey>
        <param>TIBCO ActiveMatrix Foundation HPA instance has been started</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert150" type="com.itko.lisa.test.AssertByScript">
<log>tibcohost located at &quot;{{tibcoHostinstance}}&quot; did not start on time</log>
<then>timeout</then>
<valueToAssertKey></valueToAssertKey>
        <script>future.before(Calendar.getInstance());</script>
        <language>beanshell</language>
        <copyprops>TestExecPropsAndSystemProps</copyprops>
</CheckResult>

<CheckResult assertTrue="true" name="Assert171" type="com.itko.lisa.test.CheckResultRegEx">
<log>TIBCO ActiveMatrix Foundation HPA instance located at {{tibcoHostinstance}}  has been started Successfully.</log>
<then>checkLogForErrors</then>
<valueToAssertKey></valueToAssertKey>
        <param>TIBCO ActiveMatrix host .* started</param>
</CheckResult>

<Loc>{{logFile}}</Loc>
<charset>DEFAULT</charset>
<PropKey></PropKey>
<onFail>abort</onFail>
    </Node>


    <Node name="timeout" log="fail with timeout"
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="A626A78FBBE111EDA4C8506B8D8BDEB5" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="fail" > 

<remoteServer>{{simulator}}</remoteServer>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>return &quot;TIBCOHost located at &apos;&quot; + testExec.parseInState(tibcoHostinstance) + &quot;&apos; on host &apos;&quot;+testExec.parseInState(host) + &quot;&apos; did not start on time&quot;;</script>
    </Node>


    <Node name="checkLogForErrors" log="check if there are any errors in the log file"
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          uid="A626A790BBE111EDA4C8506B8D8BDEB5" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="success" > 

<remoteServer>{{simulator}}</remoteServer>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="Assert202" type="com.itko.lisa.test.CheckResultContains">
<log>TIBCOHost started with errors/warnings</log>
<then>successWithErrors</then>
<valueToAssertKey></valueToAssertKey>
        <param>ERROR</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert228" type="com.itko.lisa.test.CheckResultContains">
<log>TIBCOHost started with errors/warnings</log>
<then>successWithErrors</then>
<valueToAssertKey></valueToAssertKey>
        <param>WARN</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert254" type="com.itko.lisa.test.CheckResultContains">
<log>TIBCOHost started with errors/warnings</log>
<then>successWithErrors</then>
<valueToAssertKey></valueToAssertKey>
        <param>SEVERE</param>
</CheckResult>

<Loc>{{logFile}}</Loc>
<charset>DEFAULT</charset>
<PropKey>logFileContent</PropKey>
<onFail>abort</onFail>
    </Node>


    <Node name="success" log="return success"
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="A626A791BBE111EDA4C8506B8D8BDEB5" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<remoteServer>{{simulator}}</remoteServer>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>return &quot;TIBCOHost located at &apos;&quot; + testExec.parseInState(tibcoHostinstance) + &quot;&apos; on host &apos;&quot; + testExec.parseInState(host) + &quot;&apos; started successfully&quot;;</script>
    </Node>


    <Node name="successWithErrors" log="return success with errors"
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          uid="A626A792BBE111EDA4C8506B8D8BDEB5" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<remoteServer>{{simulator}}</remoteServer>

      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<script>return &quot;TibcoHost located at &apos;&quot; + testExec.parseInState(tibcoHostinstance) + &quot;&apos; on host &apos;&quot;+testExec.parseInState(host) + &quot;&apos; has started with Errors/Warnings. See log below \n\n&quot; + logFileContent;</script>
    </Node>


    <Node name="deleteLogs" log="delete the tibcohost logs folder"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="A626A793BBE111EDA4C8506B8D8BDEB5" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="startTibcoHost" > 

<remoteServer>{{simulator}}</remoteServer>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/DeleteFile.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{logFile}}</value>
    <name>File or directory to be deleted</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="A626CEA4BBE111EDA4C8506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="A626CEA5BBE111EDA4C8506B8D8BDEB5" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="A626CEA6BBE111EDA4C8506B8D8BDEB5" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
