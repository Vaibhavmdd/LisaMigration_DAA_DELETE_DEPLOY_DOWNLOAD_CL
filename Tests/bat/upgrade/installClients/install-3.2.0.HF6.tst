<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Sat Jul 27 12:55:22 PDT 2013 -->


<TestCase name="install-3.2.0.HF6" version="2">
<id>f65e42e6</id>
<Documentation>installs 3.2.0.HF6 on top of existing tibco home</Documentation>
<sig>ZWQ9MiZ0Y3Y9MSZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTE5MDUxNzg1ODE=</sig>
<rootNode>install-3.2.0.HF6</rootNode>
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
    <key>lisa.install-3.1.5.HF2.rsp</key>
    <value>Set in Step install-3.1.5.HF2</value>
    </Parameter>
    <Parameter>
    <key>lisa.install-3.1.5.HF2.rsp.time</key>
    <value>Set in Step install-3.1.5.HF2</value>
    </Parameter>
    <Parameter>
    <key>lisa.install-3.2.0.HF6.rsp</key>
    <value>Set in Step install-3.2.0.HF6</value>
    </Parameter>
    <Parameter>
    <key>lisa.install-3.2.0.HF6.rsp.time</key>
    <value>Set in Step install-3.2.0.HF6</value>
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
    <Node name="install-3.2.0.HF6" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>0</graphx>
<graphy>121</graphy>
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
    <value>{{amxZip-320HF6}}</value>
    <name>Amx installer zip - required</name>
    </Parameter>
    <Parameter>
    <key>installerBinaryPath</key>
    <value>{{universal_installer_320_v2}}</value>
    <name>TIBCO Universal installer - optional for HF installation</name>
    </Parameter>
    <Parameter>
    <key>amxVersion</key>
    <value>3.2.0.HF6</value>
    <name>amx version - required </name>
    </Parameter>
    <Parameter>
    <key>installerSilentFile</key>
    <value>{{TIBCO_AMX_TEST_FUNC_RT}}/bat/install/TIBCOUniversalInstallerAmxHF.silent.Template</value>
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


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>244</graphx>
<graphy>122</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>122</graphx>
<graphy>244</graphy>
    </Node>


</TestCase>
