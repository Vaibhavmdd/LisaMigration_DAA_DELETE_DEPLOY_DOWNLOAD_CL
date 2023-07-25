<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Wed Feb 19 08:33:24 PST 2014 -->


<TestCase name="install-hf" version="2">
<id>f65e42e6</id>
<Documentation>installs hf on top of existing tibco home</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0xMjY1OTI0MzAw</sig>
<rootNode>install-hf</rootNode>
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
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step2.rsp</key>
    <value>Set in Step Step2</value>
    </Parameter>
    <Parameter>
    <key>lisa.Step2.rsp.time</key>
    <value>Set in Step Step2</value>
    </Parameter>
    <Parameter>
    <key>lisa.install-3.1.3.rsp</key>
    <value>Set in Step install-3.1.3</value>
    </Parameter>
    <Parameter>
    <key>lisa.install-3.1.3.rsp.time</key>
    <value>Set in Step install-3.1.3</value>
    </Parameter>
    <Parameter>
    <key>lisa.install-hf.rsp</key>
    <value>Set in Step install-hf</value>
    </Parameter>
    <Parameter>
    <key>lisa.install-hf.rsp.time</key>
    <value>Set in Step install-hf</value>
    </Parameter>
</resultState>

<Configurations>
<Configuration>
<name>default</name>
<external>false</external>
<props>
</props>
</Configuration>
</Configurations>
    <Node name="install-hf" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/install/Install-upgrade.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>amxZip2</key>
    <value>{{amxHFZipLoc}}</value>
    <name>Amx installer zip - required</name>
    </Parameter>
    <Parameter>
    <key>installerBinaryPath</key>
    <value>{{amxHFInstaller}}</value>
    <name>TIBCO Universal installer - optional for HF installation</name>
    </Parameter>
    <Parameter>
    <key>amxVersion</key>
    <value>{{targetUpgradeVersion}}</value>
    <name>amx version - required </name>
    </Parameter>
    <Parameter>
    <key>installerSilentFile</key>
    <value>{{TIBCO_AMX_TEST_FUNC_RT}}/bat/install/TIBCOUniversalInstallerAmxHF.silent.template</value>
    <name>installer silent file - optional</name>
    </Parameter>
    <Parameter>
    <key>installerLogPath</key>
    <value>{{tibco.test.case.log.dir}}</value>
    <name>installer log path - optional</name>
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

<graphx>-1</graphx>
<graphy>-1</graphy>
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


</TestCase>
