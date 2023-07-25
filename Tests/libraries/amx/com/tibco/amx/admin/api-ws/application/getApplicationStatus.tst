<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Wed Aug 27 12:47:05 CST 2014 -->


<TestCase name="getApplicationStatus" version="2">
<id>da67ae82</id>
<Documentation>Get application status by giving application name and environment name</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTk1MDA4NTIyNA==</sig>
<rootNode>getEnvIDByName</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>appName</key>
    <value></value>
    <name>Name for application</name>
    </Parameter>
    <Parameter>
    <key>envName</key>
    <value></value>
    <name>Name for environment</name>
    </Parameter>
    <Parameter>
    <key>expectedStatus</key>
    <value></value>
    <name>ExpectedStatus(Optional)</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.getApplicationFolderID.rsp</key>
    <value>Set in Step getApplicationFolderID</value>
    </Parameter>
    <Parameter>
    <key>lisa.getApplicationFolderID.rsp.time</key>
    <value>Set in Step getApplicationFolderID</value>
    </Parameter>
    <Parameter>
    <key>appfolder.id</key>
    <value>Set in Step getApplicationFolderID</value>
    </Parameter>
    <Parameter>
    <key>env_id</key>
    <value>Set in Step getEnvIDByName</value>
    </Parameter>
    <Parameter>
    <key>lisa.getApplicationIDByName.rsp</key>
    <value>Set in Step getApplicationIDByName</value>
    </Parameter>
    <Parameter>
    <key>lisa.getApplicationIDByName.rsp.time</key>
    <value>Set in Step getApplicationIDByName</value>
    </Parameter>
    <Parameter>
    <key>app_id</key>
    <value>Set in Step getApplicationIDByName</value>
    </Parameter>
    <Parameter>
    <key>lisa.getEnvIDByName.rsp</key>
    <value>Set in Step getEnvIDByName</value>
    </Parameter>
    <Parameter>
    <key>lisa.getEnvIDByName.rsp.time</key>
    <value>Set in Step getEnvIDByName</value>
    </Parameter>
    <Parameter>
    <key>appStatus</key>
    <value>Set in Step getApplicationSummaryById-315</value>
    </Parameter>
    <Parameter>
    <key>lisa.getApplicationSummaryById.rsp</key>
    <value>Set in Step getApplicationSummaryById</value>
    </Parameter>
    <Parameter>
    <key>lisa.getApplicationSummaryById.rsp.time</key>
    <value>Set in Step getApplicationSummaryById</value>
    </Parameter>
    <Parameter>
    <key>lisa.returnResult.rsp</key>
    <value>Set in Step returnResult</value>
    </Parameter>
    <Parameter>
    <key>lisa.returnResult.rsp.time</key>
    <value>Set in Step returnResult</value>
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
    <key>mediation.sample.project.dir</key>
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
    <key>regenerateDAA</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>compiler</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>projectloc</key>
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
    <key>lisa.checkExpectedStatus.rsp</key>
    <value>Set in Step checkExpectedStatus</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkExpectedStatus.rsp.time</key>
    <value>Set in Step checkExpectedStatus</value>
    </Parameter>
    <Parameter>
    <key>lisa.CompareResult(Success/Fail).rsp</key>
    <value>Set in Step CompareResult(Success/Fail)</value>
    </Parameter>
    <Parameter>
    <key>lisa.CompareResult(Success/Fail).rsp.time</key>
    <value>Set in Step CompareResult(Success/Fail)</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
    </Parameter>
</resultState>

<Configurations>
<Configuration>
<name>default</name>
<external>false</external>
<props>
    <Parameter>
    <key>username</key>
    <value>root</value>
    </Parameter>
    <Parameter>
    <key>jndiport</key>
    <value>7222</value>
    </Parameter>
    <Parameter>
    <key>adapterZip</key>
    <value>{{adapterZipLoc}}</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.providerURL</key>
    <value>ldap://192.168.72.56:13317</value>
    </Parameter>
    <Parameter>
    <key>installJavaHome</key>
    <value>{{installerJavaHome}}</value>
    </Parameter>
    <Parameter>
    <key>host.name</key>
    <value>SystemHost_{{LISA_HOST}}</value>
    </Parameter>
    <Parameter>
    <key>port4</key>
    <value>8778</value>
    </Parameter>
    <Parameter>
    <key>port3</key>
    <value>8891</value>
    </Parameter>
    <Parameter>
    <key>port2</key>
    <value>8890</value>
    </Parameter>
    <Parameter>
    <key>port1</key>
    <value>8120</value>
    </Parameter>
    <Parameter>
    <key>admin.instance.name</key>
    <value>admin1</value>
    </Parameter>
    <Parameter>
    <key>adminURL</key>
    <value>http://192.168.72.94:8120</value>
    </Parameter>
    <Parameter>
    <key>jndiuser</key>
    <value>admin</value>
    </Parameter>
    <Parameter>
    <key>bwport1</key>
    <value>8898</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keyalias</key>
    <value>AMXAdminCli</value>
    </Parameter>
    <Parameter>
    <key>emshost</key>
    <value>localhost</value>
    </Parameter>
    <Parameter>
    <key>enableMCR</key>
    <value>true</value>
    </Parameter>
    <Parameter>
    <key>hibernateDialect</key>
    <value>org.hibernate.dialect.HSQLDialect</value>
    </Parameter>
    <Parameter>
    <key>logappender.file.location</key>
    <value>{{tibco.test.case.log.dir}}</value>
    </Parameter>
    <Parameter>
    <key>admin.db.url</key>
    <value>hsql</value>
    </Parameter>
    <Parameter>
    <key>amxZip</key>
    <value>{{amxZipLoc}}</value>
    </Parameter>
    <Parameter>
    <key>host.jmx.port</key>
    <value>6051</value>
    </Parameter>
    <Parameter>
    <key>admin.env.name</key>
    <value>SystemEnvironment_{{LISA_HOST}}</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.port</key>
    <value>25</value>
    </Parameter>
    <Parameter>
    <key>JBOSSServerForEJBBT</key>
    <value>192.168.68.171</value>
    </Parameter>
    <Parameter>
    <key>amxHFZip</key>
    <value>{{amxHFZipLoc}}</value>
    </Parameter>
    <Parameter>
    <key>keystore.location</key>
    <value>{{TIBCO_AMX_TEST_FUNC_RT}}/bat/keystore</value>
    </Parameter>
    <Parameter>
    <key>jmshost</key>
    <value>localhost</value>
    </Parameter>
    <Parameter>
    <key>dbPwd</key>
    <value></value>
    </Parameter>
    <Parameter>
    <key>host.prefix</key>
    <value>tibamx_</value>
    </Parameter>
    <Parameter>
    <key>dbDriver</key>
    <value>org.hsqldb.jdbcDriver</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.datafile.template</key>
    <value>{{TIBCO_AMX_TEST_FUNC_RT}}/bat/amxdata_2node_hsql.template.xml</value>
    </Parameter>
    <Parameter>
    <key>JBOSSPortForEJBBT</key>
    <value>1099</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keypassword</key>
    <value>#!e0Br49sVAB0c1+H2cxVMtZj1VxM0J+1J2OivXSpZ3hods7yIoKEaxQ==</value>
    </Parameter>
    <Parameter>
    <key>env.node1.name</key>
    <value>QANode1</value>
    </Parameter>
    <Parameter>
    <key>jndicontexturl</key>
    <value>tibjmsnaming://localhost:7222</value>
    </Parameter>
    <Parameter>
    <key>bwportssl1</key>
    <value>6767</value>
    </Parameter>
    <Parameter>
    <key>mediation.sample.project.dir</key>
    <value>{{TIBCO_HOME}}/amx_it_mediation/3.4/samples</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorepassword</key>
    <value>#!F2vplsUatM3B6+lsDcSbWpgO5i5cfznNQAD3anjhExnDL6tQPzKdmw==</value>
    </Parameter>
    <Parameter>
    <key>emsport</key>
    <value>7222</value>
    </Parameter>
    <Parameter>
    <key>clrZip</key>
    <value>{{clrZipLoc}}</value>
    </Parameter>
    <Parameter>
    <key>host1</key>
    <value>{{LISA_HOST}}</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystoretype</key>
    <value>jceks</value>
    </Parameter>
    <Parameter>
    <key>jndiconnectionfactory</key>
    <value>GenericConnectionFactory</value>
    </Parameter>
    <Parameter>
    <key>bwhost1</key>
    <value>192.168.72.65</value>
    </Parameter>
    <Parameter>
    <key>jmspwd</key>
    <value></value>
    </Parameter>
    <Parameter>
    <key>jndicontexturlSSL</key>
    <value>tibjmsnaming://AMX-BACKEND.na.tibco.com:7632</value>
    </Parameter>
    <Parameter>
    <key>jndihost</key>
    <value>localhost</value>
    </Parameter>
    <Parameter>
    <key>env.node2.name</key>
    <value>QANode2</value>
    </Parameter>
    <Parameter>
    <key>regenerateDAA</key>
    <value>false</value>
    </Parameter>
    <Parameter>
    <key>compiler</key>
    <value>{{cppCompiler}}</value>
    </Parameter>
    <Parameter>
    <key>projectloc</key>
    <value></value>
    </Parameter>
    <Parameter>
    <key>tmpDir</key>
    <value>{{installPackageTempDir}}</value>
    </Parameter>
    <Parameter>
    <key>jmsport</key>
    <value>7222</value>
    </Parameter>
    <Parameter>
    <key>admin.cli.ssl.keystorelocation</key>
    <value>{{TIBCO_AMXADMIN_CONFIG}}/samples/adminCliKeystore.jceks</value>
    </Parameter>
    <Parameter>
    <key>emsuser</key>
    <value>admin</value>
    </Parameter>
    <Parameter>
    <key>dbUser</key>
    <value>sa</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.ldap1.connectionFactory</key>
    <value>com.sun.jndi.ldap.LdapCtxFactory</value>
    </Parameter>
    <Parameter>
    <key>httpConnectionTimeout</key>
    <value>360000</value>
    </Parameter>
    <Parameter>
    <key>jndipwd</key>
    <value></value>
    </Parameter>
    <Parameter>
    <key>host.instance</key>
    <value>QA-BAT-Host</value>
    </Parameter>
    <Parameter>
    <key>env.name</key>
    <value>QAEnvironment_{{LISA_HOST}}</value>
    </Parameter>
    <Parameter>
    <key>cppZip</key>
    <value>{{cppZipLoc}}</value>
    </Parameter>
    <Parameter>
    <key>amxHF2Zip</key>
    <value>{{amxHF2ZipLoc}}</value>
    </Parameter>
    <Parameter>
    <key>admin.group.name</key>
    <value>AMXAdmin_{{LISA_HOST}}</value>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value>t</value>
    </Parameter>
    <Parameter>
    <key>jmsuser</key>
    <value>admin</value>
    </Parameter>
    <Parameter>
    <key>emspwd</key>
    <value></value>
    </Parameter>
    <Parameter>
    <key>installTempDir</key>
    <value>{{installerTempDir}}</value>
    </Parameter>
    <Parameter>
    <key>ejbZip</key>
    <value>{{ejbZipLoc}}</value>
    </Parameter>
    <Parameter>
    <key>tibco.amx.rt.smtp1.host</key>
    <value>AMX-BACKEND.na.tibco.com</value>
    </Parameter>
    <Parameter>
    <key>amx.sv.queuePrefix</key>
    <value>AMX_SV_{{LISA_HOST}}</value>
    </Parameter>
    <Parameter>
    <key>portssl1</key>
    <value>6765</value>
    </Parameter>
    <Parameter>
    <key>dbUrl</key>
    <value>jdbc:hsqldb:hsql://localhost:1235/mediationsamples</value>
    </Parameter>
    <Parameter>
    <key>tibco.test.suite.config.path</key>
    <value>{{TIBCO_AMX_TEST_FUNC_RT}}/bat/2node_hsql_cdc.config</value>
    </Parameter>
</props>
</Configuration>
</Configurations>
    <Node name="getEnvIDByName" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getApplicationFolderID" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<url>{{adminURL}}/amxadministrator.httpbasic/services/EnvService.EnvServiceHttpSoap11Endpoint/</url>
<action>urn:getId</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmVudj0iaHR0cDovL2Vudi5hbXguYXBpLmFkbWluLmFt
Zi50aWJjby5jb20iPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52OkJvZHk+DQog
ICAgICA8ZW52OmdldElkPg0KICAgICAgICAgPCEtLU9wdGlvbmFsOi0tPg0KICAgICAgICAgPGVu
djpwYXJhbTA+e3tlbnZOYW1lfX08L2VudjpwYXJhbTA+DQogICAgICA8L2VudjpnZXRJZD4NCiAg
IDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
    <Parameter>
    <key>Authorization</key>
    <value>Basic cm9vdDp0</value>
    </Parameter>
</customHTTPHeaderInfo>

      <!-- Filters -->
      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.getEnvIDByName.rsp</valueToFilterKey>
<prop>env_id</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getIdResponse&apos;]/*[local-name()=&apos;return&apos;])</xpathq>
      </Filter>

    </Node>


    <Node name="getApplicationFolderID" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getApplicationIDByName" > 

<graphx>1802</graphx>
<graphy>10</graphy>
<url>{{adminURL}}/amxadministrator.httpbasic/services/ApplicationFolderService.ApplicationFolderServiceHttpSoap11Endpoint/</url>
<action>urn:getRootFolder</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmFwcD0iaHR0cDovL2FwcGZvbGRlci5hbXguYXBpLmFk
bWluLmFtZi50aWJjby5jb20iIHhtbG5zOnhzZD0iaHR0cDovL3R5cGVzLmNvcmUuYXBpLmFkbWlu
LmFtZi50aWJjby5jb20veHNkIj4NCiAgIDxzb2FwZW52OkhlYWRlci8+DQogICA8c29hcGVudjpC
b2R5Pg0KICAgICAgPGFwcDpnZXRSb290Rm9sZGVyPg0KICAgICAgICAgPCEtLU9wdGlvbmFsOi0t
Pg0KICAgICAgICAgPGFwcDpwYXJhbTA+DQogICAgICAgICAgICA8IS0tT3B0aW9uYWw6LS0+DQog
ICAgICAgICAgICA8eHNkOmlkPnt7ZW52X2lkfX08L3hzZDppZD4NCiAgICAgICAgICAgIDwhLS1P
cHRpb25hbDotLT4NCiAgICAgICAgICAgIDx4c2Q6bmFtZT4/PC94c2Q6bmFtZT4NCiAgICAgICAg
IDwvYXBwOnBhcmFtMD4NCiAgICAgIDwvYXBwOmdldFJvb3RGb2xkZXI+DQogICA8L3NvYXBlbnY6
Qm9keT4NCjwvc29hcGVudjpFbnZlbG9wZT4=</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
    <Parameter>
    <key>Authorization</key>
    <value>Basic cm9vdDp0</value>
    </Parameter>
</customHTTPHeaderInfo>

      <!-- Filters -->
      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.getApplicationFolderID.rsp</valueToFilterKey>
<prop>appfolder.id</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getRootFolderResponse&apos;]/*[local-name()=&apos;return&apos;]/*[local-name()=&apos;id&apos;])</xpathq>
      </Filter>

    </Node>


    <Node name="getApplicationIDByName" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getApplicationSummaryById" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<url>{{adminURL}}/amxadministrator.httpbasic/services/ApplicationService</url>
<action>urn:getApplicationIDByNames</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmFwcD0iaHR0cDovL2FwcGxpY2F0aW9uLmFteC5hcGku
YWRtaW4uYW1mLnRpYmNvLmNvbSIgeG1sbnM6eHNkPSJodHRwOi8vdHlwZXMuY29yZS5hcGkuYWRt
aW4uYW1mLnRpYmNvLmNvbS94c2QiPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52
OkJvZHk+DQogICAgICA8YXBwOmdldEFwcGxpY2F0aW9uSURCeU5hbWU+DQogICAgICAgICA8IS0t
T3B0aW9uYWw6LS0+DQogICAgICAgICA8YXBwOnBhcmFtMD4NCiAgICAgICAgICAgIDwhLS1PcHRp
b25hbDotLT4NCiAgICAgICAgICAgIDx4c2Q6aWQ+e3thcHBmb2xkZXIuaWR9fTwveHNkOmlkPg0K
ICAgICAgICAgICAgPCEtLU9wdGlvbmFsOi0tPg0KICAgICAgICAgICAgPHhzZDpuYW1lPj88L3hz
ZDpuYW1lPg0KICAgICAgICAgPC9hcHA6cGFyYW0wPg0KICAgICAgICAgPCEtLU9wdGlvbmFsOi0t
Pg0KICAgICAgICAgPGFwcDpwYXJhbTE+e3thcHBOYW1lfX08L2FwcDpwYXJhbTE+DQogICAgICA8
L2FwcDpnZXRBcHBsaWNhdGlvbklEQnlOYW1lPg0KICAgPC9zb2FwZW52OkJvZHk+DQo8L3NvYXBl
bnY6RW52ZWxvcGU+</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
    <Parameter>
    <key>Authorization</key>
    <value>Basic cm9vdDp0</value>
    </Parameter>
</customHTTPHeaderInfo>

      <!-- Filters -->
      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.getApplicationIDByName.rsp</valueToFilterKey>
<prop>app_id</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getApplicationIDByNameResponse&apos;]/*[local-name()=&apos;return&apos;])</xpathq>
      </Filter>

    </Node>


    <Node name="getApplicationSummaryById" log=""
          type="com.itko.lisa.ws.RawSOAPNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="checkExpectedStatus" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<url>{{adminURL}}/amxadministrator.httpbasic/services/ApplicationService</url>
<action>urn:getApplicationSummaryById</action>
<soapRequest itko_enc="base64">PHNvYXBlbnY6RW52ZWxvcGUgeG1sbnM6c29hcGVudj0iaHR0cDovL3NjaGVtYXMueG1sc29hcC5v
cmcvc29hcC9lbnZlbG9wZS8iIHhtbG5zOmFwcD0iaHR0cDovL2FwcGxpY2F0aW9uLmFteC5hcGku
YWRtaW4uYW1mLnRpYmNvLmNvbSIgeG1sbnM6eHNkPSJodHRwOi8vdHlwZXMuY29yZS5hcGkuYWRt
aW4uYW1mLnRpYmNvLmNvbS94c2QiPg0KICAgPHNvYXBlbnY6SGVhZGVyLz4NCiAgIDxzb2FwZW52
OkJvZHk+DQogICAgICA8YXBwOmdldEFwcGxpY2F0aW9uU3VtbWFyeUJ5SWQ+DQogICAgICAgICA8
IS0tT3B0aW9uYWw6LS0+DQogICAgICAgICA8YXBwOnBhcmFtMD4NCiAgICAgICAgICAgIDwhLS1P
cHRpb25hbDotLT4NCiAgICAgICAgICAgIDx4c2Q6aWQ+e3thcHBfaWR9fTwveHNkOmlkPg0KICAg
ICAgICAgICAgPCEtLU9wdGlvbmFsOi0tPg0KICAgICAgICAgICAgPHhzZDpuYW1lPj88L3hzZDpu
YW1lPg0KICAgICAgICAgPC9hcHA6cGFyYW0wPg0KICAgICAgPC9hcHA6Z2V0QXBwbGljYXRpb25T
dW1tYXJ5QnlJZD4NCiAgIDwvc29hcGVudjpCb2R5Pg0KPC9zb2FwZW52OkVudmVsb3BlPg==</soapRequest>
<contentType>text/xml; charset=UTF-8</contentType>
<onError>fail</onError>
<customHTTPHeaderInfo>
    <Parameter>
    <key>Authorization</key>
    <value>cm9vdDp0</value>
    </Parameter>
</customHTTPHeaderInfo>

      <!-- Filters -->
      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.getApplicationSummaryById.rsp</valueToFilterKey>
<prop>appStatus</prop>
<xpathq>string(/soapenv:Envelope/soapenv:Body/*[local-name()=&apos;getApplicationSummaryByIdResponse&apos;]/*[local-name()=&apos;return&apos;]/*[local-name()=&apos;runtimeState&apos;])</xpathq>
      </Filter>

    </Node>


    <Node name="checkExpectedStatus" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="true" 
          next="CompareResult(Success/Fail)" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
      <log>{{expectedStatus}}</log>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check expectedStatus is not empty" type="com.itko.lisa.test.CheckResultAny">
<log>Check expectedStatus is not empty</log>
<then>returnResult</then>
</CheckResult>

    </Node>


    <Node name="returnResult" log=""
          type="com.itko.lisa.dynexec.NodeConvertPropToLastResponse" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="true" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<Property>appStatus</Property>
    </Node>


    <Node name="CompareResult(Success/Fail)" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="true" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
      <log>{{appStatus}}</log>

      <!-- Result Elements -->
<CheckResult assertTrue="false" name="Check expectedStatus matched actualStatus or not" type="com.itko.lisa.test.CheckResultContains">
<log>Check expectedStatus matched actualStatus or not</log>
<then>fail</then>
        <param>{{expectedStatus}}</param>
</CheckResult>

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
    </Node>


</TestCase>
