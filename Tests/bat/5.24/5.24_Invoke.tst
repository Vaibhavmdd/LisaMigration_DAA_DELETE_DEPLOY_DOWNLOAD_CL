<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Sun Jul 28 11:10:17 PDT 2013 -->


<TestCase name="5.24_Invoke" version="2">
<id>a1d828a5</id>
<Documentation>Description : ThreadPool - Component Reference Timeout - Single Node deployment&#13;&#10;Scenario &#9;: SOAP BT(HTTP) &lt;-&gt; JAVA (Timeout) &lt;-&gt; JAVA &#13;&#10;MEP         : In-Out&#13;&#10;SOAP Version: 1.1 &#13;&#10;SOAP Style  : Document&#13;&#10;Encoding    : Literal &#13;&#10;</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTY0NTY3MzczNA==</sig>
<rootNode>TestSuccess</rootNode>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>g11n</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.invoke-BW-Service.rsp</key>
    <value>Set in Step invoke-BW-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.invoke-BW-Service.rsp.time</key>
    <value>Set in Step invoke-BW-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.httpconnector1.port</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.DeclaredFault-AMX-Service.rsp</key>
    <value>Set in Step DeclaredFault-AMX-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.DeclaredFault-AMX-Service.rsp.time</key>
    <value>Set in Step DeclaredFault-AMX-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.DeclaredFault-BW-Service.rsp</key>
    <value>Set in Step DeclaredFault-BW-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.DeclaredFault-BW-Service.rsp.time</key>
    <value>Set in Step DeclaredFault-BW-Service</value>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.UnDeclaredFault-BW-Service.rsp</key>
    <value>Set in Step UnDeclaredFault-BW-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.UnDeclaredFault-BW-Service.rsp.time</key>
    <value>Set in Step UnDeclaredFault-BW-Service</value>
    </Parameter>
    <Parameter>
    <key>UnDeclaredFaultCondition</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.httpconnector1.host</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.Consumer-DeclaredFault.rsp</key>
    <value>Set in Step Consumer-DeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.Consumer-DeclaredFault.rsp.time</key>
    <value>Set in Step Consumer-DeclaredFault</value>
    </Parameter>
    <Parameter>
    <key>lisa.UnDeclaredFault-AMX-Service.rsp</key>
    <value>Set in Step UnDeclaredFault-AMX-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.UnDeclaredFault-AMX-Service.rsp.time</key>
    <value>Set in Step UnDeclaredFault-AMX-Service</value>
    </Parameter>
    <Parameter>
    <key>lisa.invoke-HelloWorldService.rsp.time</key>
    <value>Set in Step invoke-HelloWorldService</value>
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
    <key>lisa.Step1 - simpleType WSDL Validation.rsp.time</key>
    <value>Set in Step Step1 - simpleType WSDL Validation</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step2 - SinglePartInOutTypeOperationMyFloat.rsp.time</key>
    <value>Set in Step Step2 - SinglePartInOutTypeOperationMyFloat</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step3 - SinglePartInOutTypeOperationMyUnsignedLong.rsp.time</key>
    <value>Set in Step Step3 - SinglePartInOutTypeOperationMyUnsignedLong</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step4 - SinglePartInOutTypeOperationMyID.rsp.time</key>
    <value>Set in Step Step4 - SinglePartInOutTypeOperationMyID</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step5 - SinglePartInOutTypeOperationMyGYearMonth.rsp.time</key>
    <value>Set in Step Step5 - SinglePartInOutTypeOperationMyGYearMonth</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step6 - SinglePartInOutTypeOperationMyBase64Binary.rsp.time</key>
    <value>Set in Step Step6 - SinglePartInOutTypeOperationMyBase64Binary</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step7 - SinglePartInOutTypeOperationMyGYear.rsp.time</key>
    <value>Set in Step Step7 - SinglePartInOutTypeOperationMyGYear</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step8 - SinglePartInOutTypeOperationMyBoolean.rsp.time</key>
    <value>Set in Step Step8 - SinglePartInOutTypeOperationMyBoolean</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step9 - SinglePartInOutTypeOperationMyUnsignedByte.rsp.time</key>
    <value>Set in Step Step9 - SinglePartInOutTypeOperationMyUnsignedByte</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step10 - SinglePartInOutTypeOperationMyUnsignedShort.rsp.time</key>
    <value>Set in Step Step10 - SinglePartInOutTypeOperationMyUnsignedShort</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step11 - SinglePartInOutTypeOperationMyNormalizedString.rsp.time</key>
    <value>Set in Step Step11 - SinglePartInOutTypeOperationMyNormalizedString</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step12 - SinglePartInOutTypeOperationMyDecimal.rsp.time</key>
    <value>Set in Step Step12 - SinglePartInOutTypeOperationMyDecimal</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step13 - SinglePartInOutTypeOperationMyNMTOKENS.rsp.time</key>
    <value>Set in Step Step13 - SinglePartInOutTypeOperationMyNMTOKENS</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step14 - SinglePartInOutTypeOperationMyGMonthDay.rsp.time</key>
    <value>Set in Step Step14 - SinglePartInOutTypeOperationMyGMonthDay</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step15 - SinglePartInOutTypeOperationMyIDREF.rsp.time</key>
    <value>Set in Step Step15 - SinglePartInOutTypeOperationMyIDREF</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step16 - SinglePartInOutTypeOperationMyLong.rsp.time</key>
    <value>Set in Step Step16 - SinglePartInOutTypeOperationMyLong</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step17 - SinglePartInOutTypeOperationMyUnsignedInt.rsp.time</key>
    <value>Set in Step Step17 - SinglePartInOutTypeOperationMyUnsignedInt</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step18 - SinglePartInOutTypeOperationMyENTITIES.rsp.time</key>
    <value>Set in Step Step18 - SinglePartInOutTypeOperationMyENTITIES</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step19 - SinglePartInOutTypeOperationMyLanguage.rsp.time</key>
    <value>Set in Step Step19 - SinglePartInOutTypeOperationMyLanguage</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step20 - SinglePartInOutTypeOperationMyPositiveInteger.rsp.time</key>
    <value>Set in Step Step20 - SinglePartInOutTypeOperationMyPositiveInteger</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step21 - SinglePartInOutTypeOperationMyGMonth.rsp.time</key>
    <value>Set in Step Step21 - SinglePartInOutTypeOperationMyGMonth</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step22 - SinglePartInOutTypeOperationMyInt.rsp.time</key>
    <value>Set in Step Step22 - SinglePartInOutTypeOperationMyInt</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step23 - SinglePartInOutTypeOperationMyNegativeInteger.rsp.time</key>
    <value>Set in Step Step23 - SinglePartInOutTypeOperationMyNegativeInteger</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step24 - SinglePartInOutTypeOperationMyHexBinary.rsp.time</key>
    <value>Set in Step Step24 - SinglePartInOutTypeOperationMyHexBinary</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step25 - SinglePartInOutTypeOperationMyName.rsp.time</key>
    <value>Set in Step Step25 - SinglePartInOutTypeOperationMyName</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step26 - SinglePartInOutTypeOperationMyIDREFS.rsp.time</key>
    <value>Set in Step Step26 - SinglePartInOutTypeOperationMyIDREFS</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step27 - SinglePartInOutTypeOperationMyNCName.rsp.time</key>
    <value>Set in Step Step27 - SinglePartInOutTypeOperationMyNCName</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step28 - SinglePartInOutTypeOperationMyDateTime.rsp.time</key>
    <value>Set in Step Step28 - SinglePartInOutTypeOperationMyDateTime</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step29 - SinglePartInOutTypeOperationMyDuration.rsp.time</key>
    <value>Set in Step Step29 - SinglePartInOutTypeOperationMyDuration</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step30 - SinglePartInOutTypeOperationMyString.rsp.time</key>
    <value>Set in Step Step30 - SinglePartInOutTypeOperationMyString</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step31 - SinglePartInOutTypeOperationMyENTITY.rsp.time</key>
    <value>Set in Step Step31 - SinglePartInOutTypeOperationMyENTITY</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step32 - SinglePartInOutTypeOperationMyToken.rsp.time</key>
    <value>Set in Step Step32 - SinglePartInOutTypeOperationMyToken</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step33 - SinglePartInOutTypeOperationMyShort.rsp.time</key>
    <value>Set in Step Step33 - SinglePartInOutTypeOperationMyShort</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step34 - SinglePartInOutTypeOperationMyGDay.rsp.time</key>
    <value>Set in Step Step34 - SinglePartInOutTypeOperationMyGDay</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step35 - SinglePartInOutTypeOperationMyTime.rsp.time</key>
    <value>Set in Step Step35 - SinglePartInOutTypeOperationMyTime</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step36 - SinglePartInOutTypeOperationMyDouble.rsp.time</key>
    <value>Set in Step Step36 - SinglePartInOutTypeOperationMyDouble</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step37 - SinglePartInOutTypeOperationMyNonPositiveInteger.rsp.time</key>
    <value>Set in Step Step37 - SinglePartInOutTypeOperationMyNonPositiveInteger</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step38 - SinglePartInOutTypeOperationMyNOTATION.rsp.time</key>
    <value>Set in Step Step38 - SinglePartInOutTypeOperationMyNOTATION</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step39 - SinglePartInOutTypeOperationMyNonNegativeInteger.rsp.time</key>
    <value>Set in Step Step39 - SinglePartInOutTypeOperationMyNonNegativeInteger</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step40 - SinglePartInOutTypeOperationMyNMTOKEN.rsp.time</key>
    <value>Set in Step Step40 - SinglePartInOutTypeOperationMyNMTOKEN</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step41 - SinglePartInOutTypeOperationMyInteger.rsp.time</key>
    <value>Set in Step Step41 - SinglePartInOutTypeOperationMyInteger</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step42 - SinglePartInOutTypeOperationMyByte.rsp.time</key>
    <value>Set in Step Step42 - SinglePartInOutTypeOperationMyByte</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step43 - SinglePartInOutTypeOperationMyDate.rsp.time</key>
    <value>Set in Step Step43 - SinglePartInOutTypeOperationMyDate</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step44 - SinglePartInOutTypeOperationMyQName.rsp.time</key>
    <value>Set in Step Step44 - SinglePartInOutTypeOperationMyQName</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step45.rsp</key>
    <value>Set in Step Step45</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step45.rsp.time</key>
    <value>Set in Step Step45</value>
    </Parameter>
    <Parameter>
    <key>lisa.command.pid_handle</key>
    <value>Set in Step Step45</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step46.rsp</key>
    <value>Set in Step Step46</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step46.rsp.time</key>
    <value>Set in Step Step46</value>
    </Parameter>
    <Parameter>
    <key>WSPORT1</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.command.exit.code</key>
    <value>Set in Step invokeSuite</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployApp_backend.rsp</key>
    <value>Set in Step deployApp_backend</value>
    </Parameter>
    <Parameter>
    <key>lisa.deployApp_backend.rsp.time</key>
    <value>Set in Step deployApp_backend</value>
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
    <key>lisa.undeployApp.rsp</key>
    <value>Set in Step undeployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.undeployApp.rsp.time</key>
    <value>Set in Step undeployApp</value>
    </Parameter>
    <Parameter>
    <key>lisa.TestTimeout.rsp</key>
    <value>Set in Step TestTimeout</value>
    </Parameter>
    <Parameter>
    <key>lisa.TestTimeout.rsp.time</key>
    <value>Set in Step TestTimeout</value>
    </Parameter>
    <Parameter>
    <key>lisa.TestSuccess.rsp</key>
    <value>Set in Step TestSuccess</value>
    </Parameter>
    <Parameter>
    <key>lisa.TestSuccess.rsp.time</key>
    <value>Set in Step TestSuccess</value>
    </Parameter>
    <Parameter>
    <key>lisa.re-deploy.rsp</key>
    <value>Set in Step re-deploy</value>
    </Parameter>
    <Parameter>
    <key>lisa.re-deploy.rsp.time</key>
    <value>Set in Step re-deploy</value>
    </Parameter>
</resultState>

      <Companion type="com.tibco.lisa.amx.AmxCompanion" >
    <datafile>{{LISA_TC_PATH}}/amxconfig.xml</datafile>
    <clidatafileppty>tibco.amx.datafile.tc</clidatafileppty>
    <buildfile>{{LISA_TC_PATH}}/amxbuild.xml</buildfile>
    <clibuildfileppty>tibco.amx.buildfile.tc</clibuildfileppty>
      </Companion>

<Configurations>
<Configuration>
<name>runtime</name>
<external>true</external>
<doc>{{LISA_TC_PATH}}/../2node_hsql{{g11n}}.config</doc>
</Configuration>
</Configurations>
    <Node name="TestSuccess" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="TestTimeout" > 

<graphx>10</graphx>
<graphy>10</graphy>
<url>http://{{host1}}:{{port2}}/5_24_BAT_TP/</url>
<action>NewOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOm5ldz0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9OZXdX
U0RMRmlsZS8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAg
ICA8bmV3Ok5ld09wZXJhdGlvbj4NCiAgICAgICAgIDxpbj5zdWNjZXNzPC9pbj4NCiAgICAgIDwv
bmV3Ok5ld09wZXJhdGlvbj4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3Bl
Pg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert112" type="com.itko.lisa.xml.AssertXMLValidator">
<log>Assert [Assert112] fired false of type XML Validation</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<XMLValidation>
<Validator>
<dtd>false</dtd>
<schema>false</schema>
<warns>false</warns>
<dschema></dschema>
<wsdl></wsdl>
<schemas>
</schemas>
</Validator>
<prop></prop>
<fragment>false</fragment>
<noneAllowed>false</noneAllowed>
</XMLValidation>
</CheckResult>

<CheckResult assertTrue="false" name="Assert113" type="com.itko.lisa.test.CheckResultContains">
<log>Fail if incorrect response string</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>success</param>
</CheckResult>

    </Node>


    <Node name="TestTimeout" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="undeployApp" > 

<graphx>130</graphx>
<graphy>130</graphy>
<url>http://{{host1}}:{{port2}}/5_24_BAT_TP/</url>
<action>NewOperation</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOm5ldz0iaHR0cDovL3d3dy5leGFtcGxlLm9yZy9OZXdX
U0RMRmlsZS8iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQogICAg
ICA8bmV3Ok5ld09wZXJhdGlvbj4NCiAgICAgICAgIDxpbj50aW1lb3V0PC9pbj4NCiAgICAgIDwv
bmV3Ok5ld09wZXJhdGlvbj4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3Bl
Pg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
</customHTTPHeaderInfo>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Assert112" type="com.itko.lisa.xml.AssertXMLValidator">
<log>Assert [Assert112] fired false of type XML Validation</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
<XMLValidation>
<Validator>
<dtd>false</dtd>
<schema>false</schema>
<warns>false</warns>
<dschema></dschema>
<wsdl></wsdl>
<schemas>
</schemas>
</Validator>
<prop></prop>
<fragment>false</fragment>
<noneAllowed>false</noneAllowed>
</XMLValidation>
</CheckResult>

<CheckResult assertTrue="false" name="Assert148" type="com.itko.lisa.test.CheckResultContains">
<log>Assert [Assert148] fired false of type Result as String Contains Given String</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>com.tibco.amf.platform.runtime.extension.exception.TimeoutException</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert113" type="com.itko.lisa.test.CheckResultContains">
<log>Fail if RuntimeException</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>java.lang.RuntimeException:</param>
</CheckResult>

    </Node>


    <Node name="undeployApp" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="re-deploy" > 

<graphx>550</graphx>
<graphy>0</graphy>
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
    <value>{{tibco.test.case.log.dir}}/ant.log</value>
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
    <value>TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application on host finished.....</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>BUILD SUCCESSFUL</param>
</CheckResult>

    </Node>


    <Node name="re-deploy" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>361</graphx>
<graphy>1066</graphy>
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
    <value>{{tibco.test.case.log.dir}}/ant.log</value>
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
    <value>TIBCO_HOME={{TIBCO_HOME}},TIBCO_AMXADMIN_HOME={{TIBCO_AMXADMIN_HOME}},TIBCO_AMX_LIBRARY={{TIBCO_AMX_LIBRARY}},amxConfigFile={{tibco.amx.datafile.tc}},remotePropsFile={{tibco.test.suite.config.path}}</value>
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
<CheckResult assertTrue="false" name="Assert145" type="com.itko.lisa.test.CheckResultContains">
<log>Configuration and Deployment of Application on host finished.....</log>
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

<graphx>903</graphx>
<graphy>128</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>1026</graphx>
<graphy>275</graphy>
    </Node>


</TestCase>
