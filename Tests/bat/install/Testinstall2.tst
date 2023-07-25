<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Thu May 16 22:28:48 PDT 2013 -->


<TestCase name="Testinstall2" version="2">
<id>98d71d84</id>
<Documentation></Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0xMDMwNzcxNjU1</sig>
<rootNode>killTIBCOHost</rootNode>
<subprocess>false</subprocess>

<initState>
    <Parameter>
    <key>RAND1</key>
    <value>1</value>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.copyHibernateZip.rsp</key>
    <value>Set in Step copyHibernateZip</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyHibernateZip.rsp.time</key>
    <value>Set in Step copyHibernateZip</value>
    </Parameter>
    <Parameter>
    <key>hibernateZip2</key>
    <value>Set in Step copyHibernateZip</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipHibernate.rsp</key>
    <value>Set in Step unzipHibernate</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipHibernate.rsp.time</key>
    <value>Set in Step unzipHibernate</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyHibernateSilentFile.rsp</key>
    <value>Set in Step copyHibernateSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.copyHibernateSilentFile.rsp.time</key>
    <value>Set in Step copyHibernateSilentFile</value>
    </Parameter>
    <Parameter>
    <key>hibernateSilentFile</key>
    <value>Set in Step copyHibernateSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.setTibcoHomeInHibernateSilentFile.rsp</key>
    <value>Set in Step setTibcoHomeInHibernateSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.setTibcoHomeInHibernateSilentFile.rsp.time</key>
    <value>Set in Step setTibcoHomeInHibernateSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.installHibernate.rsp</key>
    <value>Set in Step installHibernate</value>
    </Parameter>
    <Parameter>
    <key>lisa.installHibernate.rsp.time</key>
    <value>Set in Step installHibernate</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoMgntDaemonHomeExists.rsp</key>
    <value>Set in Step verifyTibcoMgntDaemonHomeExists</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyTibcoMgntDaemonHomeExists.rsp.time</key>
    <value>Set in Step verifyTibcoMgntDaemonHomeExists</value>
    </Parameter>
    <Parameter>
    <key>installshieldRegistryOnWindows</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>installshieldRegistryOnUnix</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.killNode2.rsp</key>
    <value>Set in Step killNode2</value>
    </Parameter>
    <Parameter>
    <key>lisa.killNode2.rsp.time</key>
    <value>Set in Step killNode2</value>
    </Parameter>
    <Parameter>
    <key>lisa.killSystemNode.rsp</key>
    <value>Set in Step killSystemNode</value>
    </Parameter>
    <Parameter>
    <key>lisa.killSystemNode.rsp.time</key>
    <value>Set in Step killSystemNode</value>
    </Parameter>
    <Parameter>
    <key>lisa.killNode1.rsp</key>
    <value>Set in Step killNode1</value>
    </Parameter>
    <Parameter>
    <key>lisa.killNode1.rsp.time</key>
    <value>Set in Step killNode1</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipCpp.rsp</key>
    <value>Set in Step unzipCpp</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipCpp.rsp.time</key>
    <value>Set in Step unzipCpp</value>
    </Parameter>
    <Parameter>
    <key>lisa.setTibcoConfigHomeInAmxSilentFile.rsp</key>
    <value>Set in Step setTibcoConfigHomeInAmxSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipAdapter.rsp</key>
    <value>Set in Step unzipAdapter</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipAdapter.rsp.time</key>
    <value>Set in Step unzipAdapter</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipEJB.rsp</key>
    <value>Set in Step unzipEJB</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipEJB.rsp.time</key>
    <value>Set in Step unzipEJB</value>
    </Parameter>
    <Parameter>
    <key>lisa.killTIBCOHost.rsp</key>
    <value>Set in Step killTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.killTIBCOHost.rsp.time</key>
    <value>Set in Step killTIBCOHost</value>
    </Parameter>
    <Parameter>
    <key>lisa.setTibcoHomeInAmxSilentFile.rsp</key>
    <value>Set in Step setTibcoHomeInAmxSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.setTibcoConfigHomeInAmxSilentFile.rsp.time</key>
    <value>Set in Step setTibcoConfigHomeInAmxSilentFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipCLR.rsp</key>
    <value>Set in Step unzipCLR</value>
    </Parameter>
    <Parameter>
    <key>lisa.unzipCLR.rsp.time</key>
    <value>Set in Step unzipCLR</value>
    </Parameter>
    <Parameter>
    <key>lisa.setTibcoHomeInAmxSilentFile.rsp.time</key>
    <value>Set in Step setTibcoHomeInAmxSilentFile</value>
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
    <key>lisa.installCLRITIfWindows.rsp</key>
    <value>Set in Step installCLRITIfWindows</value>
    </Parameter>
    <Parameter>
    <key>lisa.installCLRITIfWindows.rsp.time</key>
    <value>Set in Step installCLRITIfWindows</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkPostInstallTasks.rsp</key>
    <value>Set in Step checkPostInstallTasks</value>
    </Parameter>
    <Parameter>
    <key>lisa.checkPostInstallTasks.rsp.time</key>
    <value>Set in Step checkPostInstallTasks</value>
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
    <key>installShieldRegistryOnWindows</key>
    <value>C:/Program Files/Common Files/InstallShield/Universal</value>
    <name>Name</name>
    </Parameter>
    <Parameter>
    <key>installShieldRegistryOnWindows64</key>
    <value>C:/Program Files (x86)/Common Files/InstallShield/Universal</value>
    <name>Name</name>
    </Parameter>
    <Parameter>
    <key>installShieldRegistryOnUnix</key>
    <value>{{user.home}}/InstallShield/Universal</value>
    <name>Name</name>
    </Parameter>
    <Parameter>
    <key>antTaskBaseError</key>
    <value>anttask_error</value>
    <name>Name</name>
    </Parameter>
</props>
</Configuration>
</Configurations>
    <Node name="killTIBCOHost" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="killSystemNode" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/TestKillProcessByName.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
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


    <Node name="killSystemNode" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="killNode1" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/TestKillProcessByName.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>continue</onFail>
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


    <Node name="killNode1" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="killNode2" > 

<graphx>250</graphx>
<graphy>250</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/TestKillProcessByName.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>continue</onFail>
<Parameters>
    <Parameter>
    <key>processName</key>
    <value>tibamx_QANode1</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="killNode2" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>370</graphx>
<graphy>370</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util/TestKillProcessByName.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>continue</onFail>
<Parameters>
    <Parameter>
    <key>processName</key>
    <value>tibamx_QANode2</value>
    <name>Name of the process to be killed. On windows, .exe is appended by default</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>4090</graphx>
<graphy>4090</graphy>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>4210</graphx>
<graphy>4210</graphy>
    </Node>


</TestCase>
