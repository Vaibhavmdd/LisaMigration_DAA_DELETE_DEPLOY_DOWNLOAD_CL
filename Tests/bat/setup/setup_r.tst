<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Tue Mar 19 07:11:00 PDT 2019 -->


<TestCase name="tctSilentSetup_Remote" version="2">
<id>30e183e0</id>
<Documentation>Create TPShell and Provision DB driver if Oracle/SQLServer/DB2&#13;&#10;Bootstrap TIBCOHost &#13;&#10;Bootstrap Admin SystemNode&#13;&#10;Setup Nodes (osgi console port 1129 and 1139)&#13;&#10;Set Node Loggers&#13;&#10;Install Resources Instances&#13;&#10;Deploy Dashboard&#13;&#10;Deploy MCR (optional) &#13;&#10;Deploy Log Service (optional)&#13;&#10;Deploy Payload Service (optional)&#13;&#10;Deploy Mediation</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0xNjg0MjE2NTk=</sig>
<rootNode>createAdminPropFile</rootNode>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
    <Parameter>
    <key>TIBCO_EMS_CONFIG_PATH</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step1.rsp</key>
    <value>Set in Step Step1</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step1.rsp.time</key>
    <value>Set in Step Step1</value>
    </Parameter>
    <Parameter>
    <key>tenDataSor</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>smtpPort</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>connFacName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tenInhMap</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.node2.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>ldapPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hibDataSor</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>connFacConfName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwportssl1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port2</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.datafile.template</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hibSchemaGen</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>ldapProUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>smtpHost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jdbcUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jdbcUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>ldapUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jdbcPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tenSchemaGen</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>smtpPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tenDialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jdbcDriver</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>destConfName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>destName</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>smtpUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hibDialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.prefix</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkAdminUp.rsp</key>
    <value>Set in Step checkAdminUp</value>
    </Parameter>
    <Parameter>
    <key>lisa.setupRI.rsp</key>
    <value>Set in Step setupRI</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployMediationApp.rsp</key>
    <value>Set in Step deployMediationApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkAdminUp.rsp.time</key>
    <value>Set in Step checkAdminUp</value>
    </Parameter>
    <Parameter>
    <key>lisa.setupRI.rsp.time</key>
    <value>Set in Step setupRI</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployMediationApp.rsp.time</key>
    <value>Set in Step deployMediationApp</value>
    </Parameter>
    <Parameter>
    <key>db.shell.version</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>db.feature.version</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>db.shell.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>db.source.jar.location</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>compiler</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndicontexturlSSL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>keystore.location</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmspwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSServerForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.instance</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.connectionFactory</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndihost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>cppZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>httpConnectionTimeout</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.env.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.db.url</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndipwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.host</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.createAdminPropFile.rsp.time</key>
    <value>Set in Step createAdminPropFile</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystoretype</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.setupNodes.rsp</key>
    <value>Set in Step setupNodes</value>
    </Parameter>
    <Parameter>
    <key>lisa.setupNodes.rsp.time</key>
    <value>Set in Step setupNodes</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.replaceInAdminPropFile.rsp</key>
    <value>Set in Step replaceInAdminPropFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.replaceInAdminPropFile.rsp.time</key>
    <value>Set in Step replaceInAdminPropFile</value>
    </Parameter>
    <Parameter>
    <key>value</key>
    <value>Set in Step replaceInAdminPropFile</value>
    </Parameter>
    <Parameter>
    <key>property</key>
    <value>Set in Step replaceInAdminPropFile</value>
    </Parameter>
    <Parameter>
    <key>AdminPropertyValues_RowNum</key>
    <value>Set in Step replaceInAdminPropFile</value>
    </Parameter>
    <Parameter>
    <key>bwport1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiconnectionfactory</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>installTempDir</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>logappender.file.location</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwhost1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.jmx.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbDriver</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>portssl1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hibernateDialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port4</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port3</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>clrZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>ejbZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.sv.queuePrefix</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.instance.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmsuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.node1.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amxZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emspwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tmpDir</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>enableMCR</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>adapterZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>installJavaHome</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndicontexturl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amxHFZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.providerURL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keyalias</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keypassword</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorepassword</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>regenerateDAA</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>projectloc</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorelocation</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.createAdminPropFile.rsp</key>
    <value>Set in Step createAdminPropFile</value>
    </Parameter>
    <Parameter>
    <key>adminPropFile</key>
    <value>Set in Step createAdminPropFile</value>
    </Parameter>
</resultState>

<Configurations>
<Configuration>
<name>2node</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_hsql{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>CDC</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_hsql_cdc.config</doc>
</Configuration>
<Configuration>
<name>1node</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../1node_hsql{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>2node_oracle</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_orcl{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>2node_sqlserver</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_sqlsvr{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>2node_db2</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_db2{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>2node_ssl_orcl_ldap_form</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_ssl_orcl_ldap_form.config</doc>
</Configuration>
<Configuration>
<name>2node_ldap</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_ldap{{g11n}}.config</doc>
</Configuration>
</Configurations>
    <Node name="createAdminPropFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="replaceInAdminPropFile" > 

<graphx>970</graphx>
<graphy>970</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CopyFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>fileIn</key>
    <value>{{LISA_TC_PATH}}/admin.properties.template</value>
    <name>Source file</name>
    </Parameter>
    <Parameter>
    <key>fileOut</key>
    <value>{{tibco.test.suite.log.dir}}/admin.properties</value>
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

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.createAdminPropFile.rsp</valueToFilterKey>
      <prop>adminPropFile</prop>
      </Filter>

    </Node>


    <Node name="replaceInAdminPropFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="replaceInAdminPropFile" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/SetNameValuePairInFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{adminPropFile}}</value>
    <name>File where to set the Name-Value pair</name>
    </Parameter>
    <Parameter>
    <key>name</key>
    <value>{{property}}</value>
    <name>Name</name>
    </Parameter>
    <Parameter>
    <key>value</key>
    <value>{{value}}</value>
    <name>Value</name>
    </Parameter>
    <Parameter>
    <key>assignChar</key>
    <value>=</value>
    <name>Character utilized for assignment: equal (&apos;=&apos;), white space (&apos; &apos;), ...</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Data Sets -->
<readrec>AdminPropertyValues</readrec>
    </Node>


    <Node name="checkAdminUp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="setupNodes" > 

<graphx>350</graphx>
<graphy>755</graphy>
<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/amx/admin/IsAdminUp.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>{{adminURL}}</value>
    <name>Admin url. If provided 3 parameters below (host, port, secure) are ignored.</name>
    </Parameter>
    <Parameter>
    <key>host</key>
    <value></value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value></value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>secure</key>
    <value></value>
    <name>Use SSL to connect to Admin server</name>
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
    <key>timeout</key>
    <value>10</value>
    <name>Wait for a number of seconds before giving up on Admin server</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Admin failed to start on time</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="setupNodes" log="create, start Nodes"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="setupRI" > 

<graphx>916</graphx>
<graphy>245</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value>{{TIBCO_AMXADMIN_HOME}}/scripts</value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.test.suite.log.dir}}/amxbuild.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antSetupNodes.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>setup-node</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>startTimeout=900,amx.sv.queuePrefix={{amx.sv.queuePrefix}},node1.tra={{TIBCO_HOST_CONFIG}}/{{host.instance}}{{=(testExec.getStateObject(&quot;nodeFolder&quot;) == null)?&quot;&quot;:nodeFolder;}}/nodes/{{env.node1.name}}/bin/{{host.prefix}}{{env.node1.name}}.tra,node2.tra={{TIBCO_HOST_CONFIG}}/{{host.instance}}{{=(testExec.getStateObject(&quot;nodeFolder&quot;) == null)?&quot;&quot;:nodeFolder;}}/nodes/{{env.node2.name}}/bin/{{host.prefix}}{{env.node2.name}}.tra,TIBCO_AMX_LIBRARY={{=TIBCO_AMX_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOME={{=TIBCO_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_CONFIG={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_HOME={{=TIBCO_AMXADMIN_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOST_HOME={{=TIBCO_HOST_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},tibco.config.mgmt.home={{=TIBCO_CONFIG_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},admin.enterprise.name={{tibco.amx.admin.configuration1.name}},admin.instance.name={{admin.instance.name}},admin.enterprise.dir={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},envt.data.file={{tibco.amx.datafile}},tibcohost.properties.file={{thPropFile}},instance.properties.file={{adminPropFile}},tibco_rv_home={{=TIBCO_RV_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{=TIBCO_JAVA_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}}/jre/lib</value>
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
    <value>910</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert142" type="com.itko.lisa.test.CheckResultContains">
<log>Setup Nodes failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="setupRI" log="setup Resources Instances"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deployMediationApp" > 

<graphx>1641</graphx>
<graphy>10</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value>{{TIBCO_AMXADMIN_HOME}}/scripts</value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.test.suite.log.dir}}/amxbuild.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antSetupRI.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>setupRI</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>riTimeout=600,TIBCO_AMX_LIBRARY={{=TIBCO_AMX_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOME={{=TIBCO_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_CONFIG={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_HOME={{=TIBCO_AMXADMIN_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOST_HOME={{=TIBCO_HOST_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},tibco.config.mgmt.home={{=TIBCO_CONFIG_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},admin.enterprise.name={{tibco.amx.admin.configuration1.name}},admin.instance.name={{admin.instance.name}},admin.enterprise.dir={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},envt.data.file={{tibco.amx.datafile}},tibcohost.properties.file={{thPropFile}},instance.properties.file={{adminPropFile}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{=TIBCO_JAVA_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}}/jre/lib</value>
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
    <value>610</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert142" type="com.itko.lisa.test.CheckResultContains">
<log>Setup Nodes failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="deployMediationApp" log="deploy Mediation "
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>2399</graphx>
<graphy>89</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/InvokeAnt.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>projectBaseDirName</key>
    <value>{{TIBCO_AMXADMIN_HOME}}/scripts</value>
    <name>Absolute path of the project base Directory. Optional.</name>
    </Parameter>
    <Parameter>
    <key>buildFileName</key>
    <value>{{tibco.test.suite.log.dir}}/amxbuild.xml</value>
    <name>Absolute path of the Ant build file. Required.</name>
    </Parameter>
    <Parameter>
    <key>logFileName</key>
    <value>{{tibco.test.case.log.dir}}/antMediationApp.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>deploy-mediation</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>deployTimeout=600,TIBCO_AMX_LIBRARY={{=TIBCO_AMX_LIBRARY.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOME={{=TIBCO_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_CONFIG={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_AMXADMIN_HOME={{=TIBCO_AMXADMIN_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},TIBCO_HOST_HOME={{=TIBCO_HOST_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},tibco.config.mgmt.home={{=TIBCO_CONFIG_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}},admin.enterprise.name={{tibco.amx.admin.configuration1.name}},admin.instance.name={{admin.instance.name}},admin.enterprise.dir={{=TIBCO_AMXADMIN_CONFIG.replace(&quot;\\&quot;,&quot;/&quot;)}},envt.data.file={{tibco.amx.datafile}},tibcohost.properties.file={{thPropFile}},instance.properties.file={{adminPropFile}}</value>
    <name>Name value pairs seperated by comma. ex: name1=value1,name2=value2,.. etc. This can be used in addition to passing property file. Optional</name>
    </Parameter>
    <Parameter>
    <key>antOpts</key>
    <value>-Djava.classes.dir=/{{=TIBCO_JAVA_HOME.replace(&quot;\\&quot;,&quot;/&quot;)}}/jre/lib</value>
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
    <value>700</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert178" type="com.itko.lisa.test.CheckResultContains">
<log>Deploy Mediation failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>3625</graphx>
<graphy>1451</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>3655</graphx>
<graphy>1641</graphy>
    </Node>


    <DataSet type="com.itko.lisa.test.DataSheet" name="AdminPropertyValues" atend="checkAdminUp" local="false" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVz
aG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAAFdmFsdWV0ABlodHRwOi8vMTAuMTA4LjgwLjE0MTo4
MTIwdAAIcHJvcGVydHl0AAhhZG1pblVSTHQAGkFkbWluUHJvcGVydHlWYWx1ZXNfUm93TnVtdAAB
MXg=</sample>
<table>
<col>property</col>
<col>value</col>
<tr>
<td>adminURL</td>
<td>{{adminURL}}</td>
</tr>
<tr>
<td>username</td>
<td>{{username}}</td>
</tr>
<tr>
<td>password</td>
<td>{{password}}</td>
</tr>
<tr>
<td>httpAuthType</td>
<td>{{=(testExec.getStateObject(&quot;httpAuthType&quot;) == null || testExec.getStateObject(&quot;httpAuthType&quot;).equals(&quot;&quot;))?&quot;basic&quot;:httpAuthType;}}</td>
</tr>
<tr>
<td>javax.net.ssl.trustStore</td>
<td>{{=(testExec.getStateObject(&quot;javax.net.ssl.trustStore&quot;) == null)?&quot;&quot;:testExec.parseInState(javax_net_ssl_trustStore).replace(&quot;\\&quot;,&quot;/&quot;);}}</td>
</tr>
<tr>
<td>javax.net.ssl.trustStoreType</td>
<td>{{=(testExec.getStateObject(&quot;javax.net.ssl.trustStoreType&quot;) == null)?&quot;&quot;:javax_net_ssl_trustStoreType;}}</td>
</tr>
<tr>
<td>javax.net.ssl.trustStorePassword</td>
<td>{{=(testExec.getStateObject(&quot;javax.net.ssl.trustStorePassword&quot;) == null)?&quot;&quot;:javax_net_ssl_trustStorePassword;}}</td>
</tr>
<tr>
<td>admin.cli.ssl.keystorelocation</td>
<td>{{=testExec.parseInState(admin_cli_ssl_keystorelocation).replace(&quot;\\&quot;,&quot;/&quot;);}}</td>
</tr>
<tr>
<td>admin.cli.ssl.keystorepassword</td>
<td>{{admin.cli.ssl.keystorepassword}}</td>
</tr>
<tr>
<td>admin.cli.ssl.keystoretype</td>
<td>{{admin.cli.ssl.keystoretype}}</td>
</tr>
<tr>
<td>admin.cli.ssl.keyalias</td>
<td>{{admin.cli.ssl.keyalias}}</td>
</tr>
<tr>
<td>admin.cli.ssl.keypassword</td>
<td>{{admin.cli.ssl.keypassword}}</td>
</tr>
<tr>
<td>serverconnsetting.enablessl</td>
<td>{{=(testExec.getStateObject(&quot;serverconnsetting.enablessl&quot;) == null)?&quot;&quot;:serverconnsetting_enablessl;}}</td>
</tr>
<tr>
<td>serverconnsetting.keystorelocation</td>
<td>{{=(testExec.getStateObject(&quot;serverconnsetting.keystorelocation&quot;) == null)?&quot;&quot;:testExec.parseInState(serverconnsetting_keystorelocation).replace(&quot;\\&quot;,&quot;/&quot;);}}</td>
</tr>
<tr>
<td>serverconnsetting.keystoretype</td>
<td>{{=(testExec.getStateObject(&quot;serverconnsetting.keystoretype&quot;) == null)?&quot;&quot;:serverconnsetting_keystoretype;}}</td>
</tr>
<tr>
<td>serverconnsetting.keystorepassword</td>
<td>{{=(testExec.getStateObject(&quot;serverconnsetting.keystorepassword&quot;) == null)?&quot;&quot;:serverconnsetting_keystorepassword;}}</td>
</tr>
<tr>
<td>serverconnsetting.keyalias</td>
<td>{{=(testExec.getStateObject(&quot;serverconnsetting.keyalias&quot;) == null)?&quot;&quot;:serverconnsetting_keyalias;}}</td>
</tr>
</table>
    </DataSet>

</TestCase>
