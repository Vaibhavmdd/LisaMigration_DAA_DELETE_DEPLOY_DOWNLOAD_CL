<?xml version="1.0" ?>

<TestCase name="5.11" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/16/2023" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="01/19/2023" host="na2devasgaks01" />
</meta>

<id>ab353239</id>
<Documentation>Scenario: WebApp - Java with Hibernate Shared Resource&#13;&#10;Import the RTs from DAA&#13;&#10;Overwrite RTs by merging with previously imported RTs&#13;&#10;MEP: In-Out</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9LTc5NzQyNTc2OQ==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/amxdata.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/amxbuild.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

    <Node name="PropReaderStep" log=""
          type="com.itko.lisa.test.PropReaderNode" 
          version="1" 
          uid="444177D797B111ED8E7C506B8D8BDEB5" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="deployApp" > 

<file>{{LISA_TC_PATH}}\data_g11n.txt</file>
<charset>UTF-8</charset>
<type>Name-Value-Pairs</type>
<onError>abort</onError>
    </Node>


    <Node name="deployApp" log="Deployment creates the WEATHERREPORT table with two rows"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="ab353239-deployApp" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="sqlDeleteRows" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
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
    <value>{{tibco.test.case.log.dir}}/ant_deploy.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>setup.app</value>
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
    <name>waitForCompletion</name>
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


    <Node name="sqlDeleteRows" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="ab353239-sqlDeleteRows" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="invokeWebappAndaddRow" > 

<driver>{{dbDriver}}</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>{{dbUrl}}</connect>
<user>{{dbUser}}</user>
<password_enc>ldb105d7f37a18c765fb0d887370c5de83c5536eca7e9029d433d7f360d8e6f6c4d29fbd646085b6986</password_enc>
<onSQLError>abort</onSQLError>
<resultSet>false</resultSet>
<maxRows>10</maxRows>
<keepOpen>true</keepOpen>
<usePool>false</usePool>
<sql>{{sqlDeleteRows}}</sql>
<IsStoredProc>false</IsStoredProc>
    </Node>


    <Node name="invokeWebappAndaddRow" log=""
          type="com.itko.lisa.test.URLTrans" 
          version="2" 
          uid="ab353239-invokeWebappAndaddRow" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="sqlQueryDB" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for &apos;{{resp}}&apos;" type="com.itko.lisa.test.CheckResultContains">
<log>Result did not contain {{resp}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>{{resp}}</param>
</CheckResult>

<url>
<proto>http</proto>
<host>{{host1}}</host>
<port>{{port3}}</port>
<path>/Webapp1/Webapp1</path>
<query>city={{city}}&amp;state={{state}}&amp;zip={{zip}}&amp;forecast={{forecast}}&amp;high={{high}}&amp;low={{low}}</query>
</url>
<images>false</images>
<sslInfo>
</sslInfo>
<encoding>UTF-8</encoding>
<params-saved-as-unicode>false</params-saved-as-unicode>
    </Node>


    <Node name="sqlQueryDB" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          uid="ab353239-sqlQueryDB" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="undeployApp" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Check for &apos;{{zip}}&apos;" type="com.itko.lisa.resultset.AssertResultSetValue">
<log>Did not find {{zip}} in result set</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <column>4</column>
        <regEx>{{zip}}</regEx>
</CheckResult>

<driver>{{dbDriver}}</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>{{dbUrl}}</connect>
<user>{{dbUser}}</user>
<password_enc>l9eb26719967203d345b7b0bc12caa7bcb9c41cf7d1bc02fd0aaaec1ab8679834ee45422cdd0162773b9f</password_enc>
<onSQLError>abort</onSQLError>
<resultSet>true</resultSet>
<maxRows>10</maxRows>
<keepOpen>true</keepOpen>
<usePool>false</usePool>
<sql>{{sqlQueryDB}}</sql>
<IsStoredProc>false</IsStoredProc>
    </Node>


    <Node name="undeployApp" log="Undeployment deletes the WEATHERREPORT table"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="ab353239-undeployApp" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Re-Deploy" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert145] fired false of type Result as String Contains Given String</log>
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
    <value>{{tibco.test.case.log.dir}}/ant_undeploy.log</value>
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
    <value>600</value>
    <name>Timeout in seconds for ant command. Required only if waitForCompletion is true</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="Re-Deploy" log="Deployment creates the WEATHERREPORT table with two rows"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="ab353239-Re-Deploy" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
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
    <value>{{tibco.test.case.log.dir}}/ant_deploy.log</value>
    <name>Absolute path to the Ant log file. Optional.</name>
    </Parameter>
    <Parameter>
    <key>targetName</key>
    <value>setup.app</value>
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
    <name>waitForCompletion</name>
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


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="ab353239-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="ab353239-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="E44277A1958A11EDA13F506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


</TestCase>
