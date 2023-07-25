<?xml version="1.0" ?>

<TestCase name="UpdateJavaSecurity" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/07/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/07/2022" host="na2devasgaks01" />
</meta>

<id>30e183e0</id>
<Documentation>This is about the AMX-18474&#13;&#10;Open java.security file overwrite &#13;&#10;updated value is working with &quot;DH keySize &lt; 758&quot; (JAVA 8 U311)&#13;&#10;jdk.tls.disabledAlgorithms=SSLv3, TLSv1, TLSv1.1, RC4, DES, MD5withRSA, DH keySize &lt; 758, EC keySize &lt; 224, 3DES_EDE_CBC, anon, NULL,include jdk.disabled.namedCurves&#13;&#10;Original value is not working&#13;&#10;jdk.tls.disabledAlgorithms=SSLv3, TLSv1, TLSv1.1, RC4, DES, MD5withRSA, DH keySize &lt; 1024, EC keySize &lt; 224, 3DES_EDE_CBC, anon, NULL,include jdk.disabled.namedCurves</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9MiZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYpJm5vZGVzPTE1NDIzMTA3MzI=</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="SetJavaSerurityParam" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-SetJavaSerurityParam" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<Subprocess>{{TIBCO_AMX_LIBRARY}}/com/tibco/amx/UpdateJavaSecurityParam.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>abort</onAbort>
<Parameters>
    <Parameter>
    <key>key</key>
    <value>jdk.tls.disabledAlgorithms</value>
    <name>Key for property</name>
    </Parameter>
    <Parameter>
    <key>value</key>
    <value>SSLv3, TLSv1, TLSv1.1, RC4, DES, MD5withRSA, DH keySize &lt; 768, EC keySize &lt; 224, 3DES_EDE_CBC, anon, NULL, include jdk.disabled.namedCurves</value>
    <name>Value for property</name>
    </Parameter>
    <Parameter>
    <key>TIBCO_JAVA_HOME</key>
    <value>{{TIBCO_JAVA_HOME}}</value>
    <name>TIBCO_JAVA_HOME</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="5325B98776B611ED94AD506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="30e183e0-end" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="30e183e0-fail" 
          think="0-0" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <DataSet type="com.itko.lisa.test.DataSheet" name="AdminPropertyValues" atend="bootstrapAdmin" local="false" random="false" maxItemsToFetch="1" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAAaQWRtaW5Qcm9wZXJ0eVZhbHVlc19Sb3dOdW10AAExdAAIcHJvcGVydHl0AAhhZG1pblVSTHQABXZhbHVldAAVaHR0cDovL2xvY2FsaG9zdDo4MTIweA==</sample>
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
