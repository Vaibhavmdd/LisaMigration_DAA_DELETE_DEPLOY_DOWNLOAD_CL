<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Wed Aug 11 16:15:09 IST 2021 -->


<TestCase name="cl_3.24" version="2">
<id>f2e92539</id>
<Documentation>Description :  Test Case For Defect CL-2188&#13;&#10;&#13;&#10;Scenario:      SOAP HTTP &lt;-&gt; Java&#13;&#10;Use Java IT to generate String Message and Map Message To Mock MED IT and BWSE &#13;&#10;IT Message.&#13;&#10;&#13;&#10;MEP: In-Out &#13;&#10;SOAP Version: 1.1 &#13;&#10;SOAP Style/Encoding: Document/Literal</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTYyNjgwNDA1MA==</sig>
<rootNode>purgeCLQueue</rootNode>
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
    <key>port4</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>httpConnectionTimeout</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwport1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hsql-dbDriver</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwhost1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.node2.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmshost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.jmx.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
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
    <key>tibco.amx.datafile.template</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.instance</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>orcl-dbUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>orcl-dbPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hsql-dbUrl</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmsuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emspwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>admin.env.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndipwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndiconnectionfactory</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>orcl-dbUser</key>
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
    <key>hsql-dbUser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmspwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>orcl-dbDriver</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>port2</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.prefix</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndihost</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amx.sv.queuePrefix</key>
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
    <key>emsuser</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>env.node1.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>hsql-dbPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jmsport</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>host.name</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndicontexturl</key>
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
    <key>cppZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>amxZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tmpDir</key>
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
    <key>lisa.copyDBData1.rsp.time</key>
    <value>Set in Step copyDBData1</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyDBData2.rsp</key>
    <value>Set in Step copyDBData2</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyDBData1.rsp</key>
    <value>Set in Step copyDBData1</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyDBData2.rsp.time</key>
    <value>Set in Step copyDBData2</value>
    </Parameter>
    <Parameter>
    <key>lisa.createDirectory.rsp.time</key>
    <value>Set in Step copyDBData1</value>
    </Parameter>
    <Parameter>
    <key>lisa.DeleteDBData.rsp.time</key>
    <value>Set in Step DeleteDBData</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyDBData3.rsp</key>
    <value>Set in Step copyDBData3</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyDBData3.rsp.time</key>
    <value>Set in Step copyDBData3</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyDBData4.rsp.time</key>
    <value>Set in Step copyDBData4</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyDBData4.rsp</key>
    <value>Set in Step copyDBData4</value>
    </Parameter>
    <Parameter>
    <key>lisa.VerifyDBLog2.rsp</key>
    <value>Set in Step VerifyDBLog2</value>
    </Parameter>
    <Parameter>
    <key>lisa.VerifyDBLog2.rsp.time</key>
    <value>Set in Step VerifyDBLog2</value>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp</key>
    <value>Set in Step continue</value>
    </Parameter>
    <Parameter>
    <key>lisa.continue.rsp.time</key>
    <value>Set in Step continue</value>
    </Parameter>
    <Parameter>
    <key>lisa.CheckCLQueue.rsp</key>
    <value>Set in Step CheckCLQueue</value>
    </Parameter>
    <Parameter>
    <key>lisa.CheckCLQueue.rsp.time</key>
    <value>Set in Step CheckCLQueue</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployApp.rsp</key>
    <value>Set in Step deployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployApp.rsp.time</key>
    <value>Set in Step deployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.confLogging.rsp</key>
    <value>Set in Step confLogging</value>
    </Parameter>
    <Parameter>
    <key>lisa.confLogging.rsp.time</key>
    <value>Set in Step confLogging</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeService1.rsp</key>
    <value>Set in Step invokeService1</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeService1.rsp.time</key>
    <value>Set in Step invokeService1</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeService2.rsp</key>
    <value>Set in Step invokeService2</value>
    </Parameter>
    <Parameter>
    <key>lisa.invokeService2.rsp.time</key>
    <value>Set in Step invokeService2</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployApp.rsp</key>
    <value>Set in Step undeployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployApp.rsp.time</key>
    <value>Set in Step undeployApp</value>
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
    <key>WSSERVER</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>WSPORT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>payloadDataURL</key>
    <value>Set in Step getPayloadURL</value>
    </Parameter>
    <Parameter>
    <key>lisa.setCLAppProp.rsp</key>
    <value>Set in Step setCLAppProp</value>
    </Parameter>
    <Parameter>
    <key>lisa.setCLAppProp.rsp.time</key>
    <value>Set in Step setCLAppProp</value>
    </Parameter>
    <Parameter>
    <key>lisa.getPayloadURL1.rsp</key>
    <value>Set in Step getPayloadURL1</value>
    </Parameter>
    <Parameter>
    <key>lisa.getPayloadURL1.rsp.time</key>
    <value>Set in Step getPayloadURL1</value>
    </Parameter>
    <Parameter>
    <key>lisa.readPayloadData1.rsp</key>
    <value>Set in Step readPayloadData1</value>
    </Parameter>
    <Parameter>
    <key>lisa.readPayloadData1.rsp.time</key>
    <value>Set in Step readPayloadData1</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyFileLog.rsp</key>
    <value>Set in Step verifyFileLog</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyFileLog.rsp.time</key>
    <value>Set in Step verifyFileLog</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.providerURL</key>
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
    <key>dbPwd</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>commonlogging.db.url</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>dbDriver</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>commonlogging.db.password</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>commonlogging.payload.emsqueue</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>bwportssl1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>commonlogging.db.username</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>clrZip</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>commonlogging.db.jdbcDriver</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>jndicontexturlSSL</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>commonlogging.logservice.emsqueue</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>compiler</key>
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
    <key>tibco.amx.rt.smtp1.host</key>
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
    <key>lisa.VerifyDBMsg1.rsp</key>
    <value>Set in Step VerifyDBMsg1</value>
    </Parameter>
    <Parameter>
    <key>lisa.VerifyDBMsg1.rsp.time</key>
    <value>Set in Step VerifyDBMsg1</value>
    </Parameter>
    <Parameter>
    <key>payloadKey</key>
    <value>Set in Step getPayloadKey</value>
    </Parameter>
    <Parameter>
    <key>lisa.VerifyDBMsg2.rsp</key>
    <value>Set in Step VerifyDBMsg2</value>
    </Parameter>
    <Parameter>
    <key>lisa.VerifyDBMsg2.rsp.time</key>
    <value>Set in Step VerifyDBMsg2</value>
    </Parameter>
    <Parameter>
    <key>lisa.getPayloadKey2.rsp</key>
    <value>Set in Step getPayloadKey2</value>
    </Parameter>
    <Parameter>
    <key>lisa.getPayloadKey2.rsp.time</key>
    <value>Set in Step getPayloadKey2</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait1.rsp</key>
    <value>Set in Step wait1</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait1.rsp.time</key>
    <value>Set in Step wait1</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait2.rsp</key>
    <value>Set in Step wait2</value>
    </Parameter>
    <Parameter>
    <key>lisa.wait2.rsp.time</key>
    <value>Set in Step wait2</value>
    </Parameter>
    <Parameter>
    <key>lisa.purgeCLQueue.rsp</key>
    <value>Set in Step purgeCLQueue</value>
    </Parameter>
    <Parameter>
    <key>lisa.purgeCLQueue.rsp.time</key>
    <value>Set in Step purgeCLQueue</value>
    </Parameter>
    <Parameter>
    <key>lisa.getPayloadKey1.rsp</key>
    <value>Set in Step getPayloadKey1</value>
    </Parameter>
    <Parameter>
    <key>lisa.getPayloadKey1.rsp.time</key>
    <value>Set in Step getPayloadKey1</value>
    </Parameter>
    <Parameter>
    <key>lisa.getPayloadURL2.rsp</key>
    <value>Set in Step getPayloadURL2</value>
    </Parameter>
    <Parameter>
    <key>lisa.getPayloadURL2.rsp.time</key>
    <value>Set in Step getPayloadURL2</value>
    </Parameter>
    <Parameter>
    <key>lisa.readPayloadData2.rsp</key>
    <value>Set in Step readPayloadData2</value>
    </Parameter>
    <Parameter>
    <key>lisa.readPayloadData2.rsp.time</key>
    <value>Set in Step readPayloadData2</value>
    </Parameter>
    <Parameter>
    <key>lisa.getEMSAdminObject.rsp</key>
    <value>Set in Step getEMSAdminObject</value>
    </Parameter>
    <Parameter>
    <key>lisa.getEMSAdminObject.rsp.time</key>
    <value>Set in Step getEMSAdminObject</value>
    </Parameter>
    <Parameter>
    <key>EMSAdmin</key>
    <value>Set in Step getEMSAdminObject</value>
    </Parameter>
</resultState>

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{LISA_TC_PATH}}/config.txt</file>
      </Companion>

      <Companion type="com.itko.lisa.test.PropReaderCompanion" >
<type>Name-Value-Pairs</type>
<file>{{LISA_TC_PATH}}/data{{g11n}}.txt</file>
      </Companion>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/amxdata.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/amxbuild.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

<Configurations>
<Configuration>
<name>default</name>
<external>true</external>
<doc>E:\trunk_331\tests\func\runtime\cl\2node_orcl.config</doc>
</Configuration>
<Configuration>
<name>CDC</name>
<external>true</external>
<doc>{{TIBCO_AMX_TEST_FUNC_RT}}/cl/1machine_2node_cdc{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>2node_SQLServer</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../1machine_2node_sqlsvr{{g11n}}.config</doc>
</Configuration>
<Configuration>
<name>2node_oracle</name>
<external>true</external>
<doc>D:\Automation\3.0\tests\func\runtime\cl\2node_orcl_patched.config</doc>
</Configuration>
</Configurations>
    <Node name="purgeCLQueue" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="setCLAppProp" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/PurgeQueue.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>continue</onFail>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>tcp://{{emshost}}:{{emsport}}</value>
    <name>Url to connect to.</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{emsuser}}</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{emspwd}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>queueName</key>
    <value>{{commonlogging.logservice.emsqueue}}</value>
    <name>Queue name to be purged</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="setCLAppProp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="deployApp" > 

<graphx>1885</graphx>
<graphy>4145</graphy>
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
    <value>{{tibco.test.case.log.dir}}/setCLAppProp.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>set.largeMessagesToPayloadProperty</value>
    <name>Name of the build target to be invoked. Optional.</name>
    </Parameter>
    <Parameter>
    <key>propertyFileName</key>
    <value></value>
    <name>Absolute path of the file which contains the property name/value pairs. Optional</name>
    </Parameter>
    <Parameter>
    <key>propertyList</key>
    <value>TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}},timeout={{timeout}}</value>
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

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for Response" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="deployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="confLogging" > 

<graphx>1885</graphx>
<graphy>4145</graphy>
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
    <value>TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}},timeout={{timeout}}</value>
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

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for Response" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="confLogging" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="invokeService1" > 

<graphx>1885</graphx>
<graphy>4145</graphy>
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
    <value>TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}},timeout={{timeout}}</value>
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

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for Response" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="invokeService1" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="wait1" > 

<graphx>10</graphx>
<graphy>10</graphy>
<url>http://{{tibco.amx.rt.httpconnector1.host}}:{{tibco.amx.rt.httpconnector1.port}}/logMessage/</url>
<action>logStringMessage</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmxvZz0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9sb2dN
ZXNzYWdlLyI+DQogICA8c29hcGVudjpIZWFkZXIvPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICAg
IDxsb2c6bG9nU3RyaW5nTWVzc2FnZT4NCiAgICAgICAgIDxtZXNzYWdlU2l6ZT57e2lucHV0fX08
L21lc3NhZ2VTaXplPg0KICAgICAgPC9sb2c6bG9nU3RyaW5nTWVzc2FnZT4NCiAgIDwvc29hcGVu
djpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for Response" type="com.itko.lisa.test.CheckResultContains">
<log>Look for {{resp}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{resp}}</param>
</CheckResult>

    </Node>


    <Node name="wait1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="VerifyDBMsg1" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>6</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>6</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="VerifyDBMsg1" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="getPayloadKey1" > 

<graphx>250</graphx>
<graphy>250</graphy>
<driver>{{commonlogging.db.jdbcDriver}}</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>{{commonlogging.db.url}}</connect>
<user>{{commonlogging.db.username}}</user>
<password>{{commonlogging.db.password}}</password>
<onSQLError>fail</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<sql>SELECT MSG  FROM  &quot;BASEEVENTFORMAT&quot; WHERE MSG like &apos;%StringMessage%&apos;</sql>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Check the MSG in database" type="com.itko.lisa.test.CheckResultContains">
<log>Whole message store to databse</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{infoResp1}}</param>
</CheckResult>

    </Node>


    <Node name="getPayloadKey1" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="getPayloadURL1" > 

<graphx>250</graphx>
<graphy>250</graphy>
<driver>{{commonlogging.db.jdbcDriver}}</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>{{commonlogging.db.url}}</connect>
<user>{{commonlogging.db.username}}</user>
<password>{{commonlogging.db.password}}</password>
<onSQLError>fail</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<sql>SELECT ELT FROM &quot;BASEEVENTFORMAT_PAYLOADIDS&quot; WHERE BASEEVENTFORMAT_PAYLOADIDS_ID in (SELECT E_ID  FROM  &quot;BASEEVENTFORMAT&quot; WHERE MSG like &apos;%StringMessage%&apos;) ORDER BY BASEEVENTFORMAT_PAYLOADIDS_ID DESC</sql>

      <!-- Filters -->
      <Filter type="com.itko.lisa.jdbc.JDBCValueFilter">
        <valueToFilterKey>lisa.getPayloadKey1.rsp</valueToFilterKey>
      <col>1</col>
      <row>0</row>
      <prop>payloadKey</prop>
      </Filter>

    </Node>


    <Node name="getPayloadURL1" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="readPayloadData1" > 

<graphx>10</graphx>
<graphy>10</graphy>
<url>{{adminURL}}/payloadService/</url>
<action>GetPayloadURL</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnBheT0iaHR0cDovL3BheWxvYWQudGliY28uY29tL1Bh
eWxvYWRTZXJ2aWNlLyI+DQogICA8c29hcGVudjpIZWFkZXIvPg0KICAgPHNvYXBlbnY6Qm9keT4N
CiAgICAgIDxwYXk6UmV0cmlldmVQYXlsb2FkS2V5Pg0KICAgICAgICAgPGtleT57e3BheWxvYWRL
ZXl9fTwva2V5Pg0KICAgICAgPC9wYXk6UmV0cmlldmVQYXlsb2FkS2V5Pg0KICAgPC9zb2FwZW52
OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterXMLGetChildText">
        <valueToFilterKey>lisa.getPayloadURL1.rsp</valueToFilterKey>
      <tag>url</tag>
      <tagn>1</tagn>
      <prop>payloadDataURL</prop>
      </Filter>

    </Node>


    <Node name="readPayloadData1" log=""
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="true" 
          next="invokeService2" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Loc>{{payloadDataURL}}</Loc>
<PropKey></PropKey>
<onFail>fail</onFail>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for info log1" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{infoResp1}}&apos;</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{infoResp1}}</param>
</CheckResult>

    </Node>


    <Node name="invokeService2" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="wait2" > 

<graphx>10</graphx>
<graphy>10</graphy>
<url>http://{{tibco.amx.rt.httpconnector1.host}}:{{tibco.amx.rt.httpconnector1.port}}/logMessage/</url>
<action>logMapMessage</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmxvZz0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9sb2dN
ZXNzYWdlLyI+DQogICA8c29hcGVudjpIZWFkZXIvPg0KICAgPHNvYXBlbnY6Qm9keT4NCiAgICAg
IDxsb2c6bG9nTWFwTWVzc2FnZT4NCiAgICAgICAgIDxtZXNzYWdlU2l6ZT57e2lucHV0fX08L21l
c3NhZ2VTaXplPg0KICAgICAgPC9sb2c6bG9nTWFwTWVzc2FnZT4NCiAgIDwvc29hcGVudjpCb2R5
Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for Response" type="com.itko.lisa.test.CheckResultContains">
<log>Look for {{resp}} in response</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{resp}}</param>
</CheckResult>

    </Node>


    <Node name="wait2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="VerifyDBMsg2" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/Sleep.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>windowsSleep</key>
    <value>6</value>
    <name>Number of seconds to sleep on Windows platforms</name>
    </Parameter>
    <Parameter>
    <key>unixSleep</key>
    <value>6</value>
    <name>Number of seconds to sleep on Unix platforms</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="VerifyDBMsg2" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="getPayloadKey2" > 

<graphx>250</graphx>
<graphy>250</graphy>
<driver>{{commonlogging.db.jdbcDriver}}</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>{{commonlogging.db.url}}</connect>
<user>{{commonlogging.db.username}}</user>
<password>{{commonlogging.db.password}}</password>
<onSQLError>fail</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<sql>SELECT MSG  FROM  &quot;BASEEVENTFORMAT&quot; WHERE MSG like &apos;%mapMessage%&apos;</sql>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Check the MSG in database" type="com.itko.lisa.test.CheckResultContains">
<log>Whole message store to databse</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{infoResp2}}</param>
</CheckResult>

    </Node>


    <Node name="getPayloadKey2" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="getPayloadURL2" > 

<graphx>250</graphx>
<graphy>250</graphy>
<driver>{{commonlogging.db.jdbcDriver}}</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>{{commonlogging.db.url}}</connect>
<user>{{commonlogging.db.username}}</user>
<password>{{commonlogging.db.password}}</password>
<onSQLError>fail</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>false</keepOpen>
<sql>SELECT ELT FROM &quot;BASEEVENTFORMAT_PAYLOADIDS&quot; WHERE BASEEVENTFORMAT_PAYLOADIDS_ID in (SELECT E_ID  FROM  &quot;BASEEVENTFORMAT&quot; WHERE MSG like &apos;%mapMessage%&apos;) ORDER BY BASEEVENTFORMAT_PAYLOADIDS_ID DESC</sql>

      <!-- Filters -->
      <Filter type="com.itko.lisa.jdbc.JDBCValueFilter">
        <valueToFilterKey>lisa.getPayloadKey2.rsp</valueToFilterKey>
      <col>1</col>
      <row>0</row>
      <prop>payloadKey</prop>
      </Filter>

    </Node>


    <Node name="getPayloadURL2" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="readPayloadData2" > 

<graphx>10</graphx>
<graphy>10</graphy>
<url>{{adminURL}}/payloadService/</url>
<action>GetPayloadURL</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOnBheT0iaHR0cDovL3BheWxvYWQudGliY28uY29tL1Bh
eWxvYWRTZXJ2aWNlLyI+DQogICA8c29hcGVudjpIZWFkZXIvPg0KICAgPHNvYXBlbnY6Qm9keT4N
CiAgICAgIDxwYXk6UmV0cmlldmVQYXlsb2FkS2V5Pg0KICAgICAgICAgPGtleT57e3BheWxvYWRL
ZXl9fTwva2V5Pg0KICAgICAgPC9wYXk6UmV0cmlldmVQYXlsb2FkS2V5Pg0KICAgPC9zb2FwZW52
OkJvZHk+DQo8L3NvYXBlbnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterXMLGetChildText">
        <valueToFilterKey>lisa.getPayloadURL2.rsp</valueToFilterKey>
      <tag>url</tag>
      <tagn>1</tagn>
      <prop>payloadDataURL</prop>
      </Filter>

    </Node>


    <Node name="readPayloadData2" log=""
          type="com.itko.lisa.test.FileNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="true" 
          next="verifyFileLog" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Loc>{{payloadDataURL}}</Loc>
<PropKey></PropKey>
<onFail>fail</onFail>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for info log2" type="com.itko.lisa.test.CheckResultContains">
<log>Did not contain &apos;{{infoResp2}}&apos;</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{infoResp2}}</param>
</CheckResult>

    </Node>


    <Node name="verifyFileLog" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="undeployApp" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/ReadFile.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>false</sendConfig>
<fullyParseProps>false</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{tibco.test.case.log.dir}}/App0324.log</value>
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

      <!-- Result Elements -->
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

    </Node>


    <Node name="undeployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getEMSAdminObject" > 

<graphx>3328</graphx>
<graphy>419</graphy>
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
    <value>TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}},timeout={{timeout}}</value>
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

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check for Response" type="com.itko.lisa.test.CheckResultContains">
<log>Undeployment of Application failed</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="getEMSAdminObject" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="checkCLQueue" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/ems/GetEMSAdminObject.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>url</key>
    <value>tcp://{{emshost}}:{{emsport}}</value>
    <name>Url to connect to: tcp or ssl</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value>{{emsuser}}</value>
    <name>User name to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>{{emspwd}}</value>
    <name>User password to connect to server.</name>
    </Parameter>
    <Parameter>
    <key>trustedCertificate</key>
    <value>{{TIBCO_EMS_HOME}}/samples/certs/server_root.cert.pem</value>
    <name>Trusted certificates to connect with ssl.</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getEMSAdminObject.rsp</valueToFilterKey>
      <prop>EMSAdmin</prop>
      </Filter>

    </Node>


    <Node name="checkCLQueue" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>import com.tibco.tibjms.admin.*;&#13;&#10;&#13;&#10;String errorMsg = &quot;EMS Error&quot;; // Do not modify, assertions on this string might exist.&#13;&#10;long MsgCount = -1;&#13;&#10;try {&#13;&#10;    QueueInfo Qinfo = EMSAdmin.getQueue(queueName);  &#13;&#10;    MsgCount = Qinfo.getPendingMessageCount();&#13;&#10;}&#13;&#10;catch (Exception e) {&#13;&#10;    msg = errorMsg + &quot;: &quot; + e.getClass().getName() + &quot;. &quot; + e.getMessage();&#13;&#10;}&#13;&#10;finally {&#13;&#10;    EMSAdmin.close();&#13;&#10;    return MsgCount;&#13;&#10;}</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Check log service queue has thrown Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert120" type="com.itko.lisa.test.CheckResultContains">
<log>{{LASTRESPONSE}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>EMS Error</param>
</CheckResult>

<CheckResult assertTrue="false" name="Check log service queue" type="com.itko.lisa.test.CheckResultContains">
<log>message has blocked in logging service queue</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>0</param>
</CheckResult>

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

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
