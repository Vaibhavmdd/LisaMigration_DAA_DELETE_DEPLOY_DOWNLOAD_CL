<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Tue Dec 11 11:13:51 PST 2012 -->


<TestCase name="postsetup" version="2">
<id>dcba153c</id>
<Documentation>Description: Clean up and create prerequisites to run automation.(root / t)&#13;&#10;&#13;&#10;1. Delete test superuser if there&apos;s any.&#13;&#10;2. Delete test group if there&apos;s any.&#13;&#10;3. Delete test users if there&apos;s any.&#13;&#10;4. Create users (User1/t, User2/t, User3/t, User4/t).&#13;&#10;5. Create group (group1.1_1, group1.1_2, group1.1_3).&#13;&#10;6. Create Superuser (root1).&#13;&#10;7. Assign top level permissions to the users and groups. (User4 and group1.1_2 will have all the permissions)&#13;&#10;</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTM0MjI3OTc1Mg==</sig>
<rootNode>createEnvironment-Root</rootNode>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>adapterZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.providerURL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>installJavaHome</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.name</key>
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
    <key>port2</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.instance.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwport1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keyalias</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>enableMCR</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hibernateDialect</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>logappender.file.location</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.db.url</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amxZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.jmx.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.env.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSServerForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amxHFZip</key>
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
    <key>dbPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.prefix</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbDriver</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.datafile.template</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keypassword</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.node1.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndicontexturl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwportssl1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorepassword</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>clrZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystoretype</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiconnectionfactory</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwhost1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmspwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndicontexturlSSL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndihost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.node2.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>compiler</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tmpDir</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorelocation</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.connectionFactory</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>httpConnectionTimeout</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndipwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.instance</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>cppZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amxHF2Zip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmsuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emspwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>installTempDir</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>ejbZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.host</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.sv.queuePrefix</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>portssl1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteEntSVars-Root.rsp</key>
    <value>Set in Step deleteEntSVars-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteEntSVars-Root.rsp.time</key>
    <value>Set in Step deleteEntSVars-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteApp-Root.rsp</key>
    <value>Set in Step deleteApp-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteApp-Root.rsp.time</key>
    <value>Set in Step deleteApp-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteEnvironmentNew-Root.rsp</key>
    <value>Set in Step deleteEnvironmentNew-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteEnvironmentNew-Root.rsp.time</key>
    <value>Set in Step deleteEnvironmentNew-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.deletesuperUser-Root.rsp</key>
    <value>Set in Step deletesuperUser-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.deletesuperUser-Root.rsp.time</key>
    <value>Set in Step deletesuperUser-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteGroup-Root.rsp</key>
    <value>Set in Step deleteGroup-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteGroup-Root.rsp.time</key>
    <value>Set in Step deleteGroup-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteUsers-Root.rsp</key>
    <value>Set in Step deleteUsers-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteUsers-Root.rsp.time</key>
    <value>Set in Step deleteUsers-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.createUsers-Root.rsp</key>
    <value>Set in Step createUsers-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.createUsers-Root.rsp.time</key>
    <value>Set in Step createUsers-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.createGroup-Root.rsp</key>
    <value>Set in Step createGroup-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.createGroup-Root.rsp.time</key>
    <value>Set in Step createGroup-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.createSuperuser-Root.rsp</key>
    <value>Set in Step createSuperuser-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.createSuperuser-Root.rsp.time</key>
    <value>Set in Step createSuperuser-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.topLevelPermissions-Root.rsp</key>
    <value>Set in Step topLevelPermissions-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.topLevelPermissions-Root.rsp.time</key>
    <value>Set in Step topLevelPermissions-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.createEnvironment-Root.rsp.time</key>
    <value>Set in Step createEnvironment-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.createNode-Root.rsp</key>
    <value>Set in Step createNode-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.createNode-Root.rsp.time</key>
    <value>Set in Step createNode-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.createApp-Root.rsp</key>
    <value>Set in Step createApp-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.createApp-Root.rsp.time</key>
    <value>Set in Step createApp-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.hostPermissions-Root.rsp</key>
    <value>Set in Step hostPermissions-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.hostPermissions-Root.rsp.time</key>
    <value>Set in Step hostPermissions-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.envPermissions-Root.rsp</key>
    <value>Set in Step envPermissions-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.envPermissions-Root.rsp.time</key>
    <value>Set in Step envPermissions-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteNodeSvars-Root.rsp</key>
    <value>Set in Step deleteNodeSvars-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteNodeSvars-Root.rsp.time</key>
    <value>Set in Step deleteNodeSvars-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteHostSvars-Root.rsp</key>
    <value>Set in Step deleteHostSvars-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteHostSvars-Root.rsp.time</key>
    <value>Set in Step deleteHostSvars-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteLoggerAppender-Root.rsp</key>
    <value>Set in Step deleteLoggerAppender-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteLoggerAppender-Root.rsp.time</key>
    <value>Set in Step deleteLoggerAppender-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.createResourceTemplate-Root.rsp</key>
    <value>Set in Step createResourceTemplate-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.createResourceTemplate-Root.rsp.time</key>
    <value>Set in Step createResourceTemplate-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.createResourceInstance-Root.rsp</key>
    <value>Set in Step createResourceInstance-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.createResourceInstance-Root.rsp.time</key>
    <value>Set in Step createResourceInstance-Root</value>
    </Parameter>
    <Parameter>
    <key>lisa.createEnvironment-Root.rsp</key>
    <value>Set in Step createEnvironment-Root</value>
    </Parameter>
</resultState>

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{LISA_TC_PATH}}/config.txt</file>
      </Companion>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/amxconfig.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/amxbuild.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

<Configurations>
<Configuration>
<name>default</name>
<external>true</external>
<doc>C:\svn\tests\func\admin\lisatest\2node_hsql.config</doc>
</Configuration>
</Configurations>
    <Node name="createEnvironment-Root" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="createNode-Root" > 

<graphx>0</graphx>
<graphy>121</graphy>
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
    <value>create.env</value>
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
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="createNode-Root" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="createResourceTemplate-Root" > 

<graphx>0</graphx>
<graphy>121</graphy>
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
    <value>create.node</value>
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
    <value>800</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="createResourceTemplate-Root" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="createResourceInstance-Root" > 

<graphx>0</graphx>
<graphy>121</graphy>
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
    <value>create.rt</value>
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
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="createResourceInstance-Root" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="unknown" > 

<graphx>0</graphx>
<graphy>121</graphy>
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
    <value>setup.ri</value>
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
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="end" > 

<graphx>130</graphx>
<graphy>130</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>10</graphx>
<graphy>10</graphy>
    </Node>


</TestCase>
