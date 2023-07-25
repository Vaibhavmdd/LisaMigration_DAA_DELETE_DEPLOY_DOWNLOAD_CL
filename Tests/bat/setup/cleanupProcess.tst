<?xml version="1.0" ?>

<TestCase name="cleanupProcess" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="11/13/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="02/02/2023" host="na2devasgaks01" />
</meta>

<id>30e183e0</id>
<Documentation>Kill tibcohost, SystemNode,DevNode, QANode1 , QANode2 before running test case. This step is useful for multiple TIBCO_HOME purpose.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9MjA4NzIxNTI3OQ==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Kill-tibcohost" log="Stop TIBCO Host with Mode=abort and Wait=true"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-Kill-tibcohost" 
          think="0" 
          useFilters="true" 
          quiet="false" 
          next="Kill-SystemNode" > 

<Documentation>Stop TIBCO Host in abort mode with wait set to true (synchronized call):&#13;&#10;TIBCO Host is supposed to wait for all the nodes to shutdown before it terminates.</Documentation>

      <!-- Data Sets -->
<readrec>AdminPropertyValues</readrec>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
<Parameters>
    <Parameter>
    <key>processName</key>
    <value>tibcohost</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="Kill-SystemNode" log="Stop TIBCO Host with Mode=abort and Wait=true"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-Kill-SystemNode" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Kill-DevNode" > 

<Documentation>Stop TIBCO Host in abort mode with wait set to true (synchronized call):&#13;&#10;TIBCO Host is supposed to wait for all the nodes to shutdown before it terminates.</Documentation>

      <!-- Data Sets -->
<readrec>AdminPropertyValues</readrec>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
<Parameters>
    <Parameter>
    <key>processName</key>
    <value>tibamx_SystemNode</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="Kill-DevNode" log="Stop TIBCO Host with Mode=abort and Wait=true"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-Kill-DevNode" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Kill-Node1" > 

<Documentation>Stop TIBCO Host in abort mode with wait set to true (synchronized call):&#13;&#10;TIBCO Host is supposed to wait for all the nodes to shutdown before it terminates.</Documentation>

      <!-- Data Sets -->
<readrec>AdminPropertyValues</readrec>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
<Parameters>
    <Parameter>
    <key>processName</key>
    <value>tibamx_DevNode</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="Kill-Node1" log="Stop TIBCO Host with Mode=abort and Wait=true"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-Kill-Node1" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="Kill-Node2" > 

<Documentation>Stop TIBCO Host in abort mode with wait set to true (synchronized call):&#13;&#10;TIBCO Host is supposed to wait for all the nodes to shutdown before it terminates.</Documentation>

      <!-- Data Sets -->
<readrec>AdminPropertyValues</readrec>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
<Parameters>
    <Parameter>
    <key>processName</key>
    <value>tibamx_{{env.node1.name}}</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="Kill-Node2" log="Stop TIBCO Host with Mode=abort and Wait=true"
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          uid="30e183e0-Kill-Node2" 
          think="0-0" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<Documentation>Stop TIBCO Host in abort mode with wait set to true (synchronized call):&#13;&#10;TIBCO Host is supposed to wait for all the nodes to shutdown before it terminates.</Documentation>

      <!-- Data Sets -->
<readrec>AdminPropertyValues</readrec>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/KillProcessByName.tst</Subprocess>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onAbort>continue</onAbort>
<Parameters>
    <Parameter>
    <key>processName</key>
    <value>tibamx_{{env.node2.name}}</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
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


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="63359F1763F111EDB639506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="end" > 

    </Node>


    <DataSet type="com.itko.lisa.test.DataSheet" name="AdminPropertyValues" atend="stopTIBCOHost" local="false" random="false" maxItemsToFetch="1" >
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
