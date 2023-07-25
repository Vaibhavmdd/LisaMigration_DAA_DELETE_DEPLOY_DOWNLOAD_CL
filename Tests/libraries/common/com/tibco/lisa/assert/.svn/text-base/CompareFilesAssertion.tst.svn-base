<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Tue Dec 09 00:01:05 PST 2008 -->


<TestCase name="CompareFilesAssertion" version="2">
<id>3b0fb75</id>
<Documentation>This assertion compares a golden file and an output file.&#10;Returns a failure with both files content if they do not match.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjAuNSAoNDY5Nykmbm9kZXM9MTUzNjE4NTAzMQ==</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>outputFile</key>
    <value></value>
    <name>Absolute path to the output file</name>
    </Parameter>
    <Parameter>
    <key>goldenFile</key>
    <value></value>
    <name>Absolute path to the golden file</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value></value>
    <name>Encoding to use for reading files, if blank, the encoding is system default encoding</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.readGoldenFile.rsp</key>
    <value>Set in Step readGoldenFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.readGoldenFile.rsp.time</key>
    <value>Set in Step readGoldenFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.SaveGoldenProperty.rsp</key>
    <value>Set in Step SaveGoldenProperty</value>
    </Parameter>
    <Parameter>
    <key>lisa.SaveGoldenProperty.rsp.time</key>
    <value>Set in Step SaveGoldenProperty</value>
    </Parameter>
    <Parameter>
    <key>lisa.readOutputFile.rsp</key>
    <value>Set in Step readOutputFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.readOutputFile.rsp.time</key>
    <value>Set in Step readOutputFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.SaveOutputProperty.rsp</key>
    <value>Set in Step SaveOutputProperty</value>
    </Parameter>
    <Parameter>
    <key>lisa.SaveOutputProperty.rsp.time</key>
    <value>Set in Step SaveOutputProperty</value>
    </Parameter>
    <Parameter>
    <key>lisa.compareProperties.rsp</key>
    <value>Set in Step compareProperties</value>
    </Parameter>
    <Parameter>
    <key>lisa.compareProperties.rsp.time</key>
    <value>Set in Step compareProperties</value>
    </Parameter>
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
    <key>GoldenFile</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>GoldenFileProperty</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>OutputFile</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>OutputFileProperty</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>lisa.endWithFailure.rsp</key>
    <value>Set in Step endWithFailure</value>
    </Parameter>
    <Parameter>
    <key>lisa.endWithFailure.rsp.time</key>
    <value>Set in Step endWithFailure</value>
    </Parameter>
    <Parameter>
    <key>lisa.endWithSuccess.rsp</key>
    <value>Set in Step endWithSuccess</value>
    </Parameter>
    <Parameter>
    <key>lisa.endWithSuccess.rsp.time</key>
    <value>Set in Step endWithSuccess</value>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp</key>
    <value>Set in Step Log</value>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp.time</key>
    <value>Set in Step Log</value>
    </Parameter>
    <Parameter>
    <key>lisa.validateGoldenFile.rsp</key>
    <value>Set in Step validateGoldenFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.validateGoldenFile.rsp.time</key>
    <value>Set in Step validateGoldenFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.validateOutputFile.rsp</key>
    <value>Set in Step validateOutputFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.validateOutputFile.rsp.time</key>
    <value>Set in Step validateOutputFile</value>
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
    <Node name="Log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="validateGoldenFile" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
      <log>Comparing these two files:&#10;Golden: {{goldenFile}}&#10;Output: {{outputFile}}</log>
    </Node>


    <Node name="validateGoldenFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="validateOutputFile" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CheckFileExists.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{goldenFile}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert81" >
<log>Golden file not found</log>
<then>fail</then>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="validateOutputFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="readGoldenFile" > 

<graphx>250</graphx>
<graphy>250</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<Subprocess>{{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/file/CheckFileExists.tst</Subprocess>
<getEvents>0</getEvents>
<sendConfig>true</sendConfig>
<fullyParseProps>true</fullyParseProps>
<sendCommonState>false</sendCommonState>
<getCommonState>false</getCommonState>
<onFail>fail</onFail>
<Parameters>
    <Parameter>
    <key>file</key>
    <value>{{outputFile}}</value>
    <name>File or directory to be checked for existence</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert133" >
<log>Output file not found</log>
<then>fail</then>
        <param>false</param>
</CheckResult>

    </Node>


    <Node name="readGoldenFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="readOutputFile" > 

<graphx>370</graphx>
<graphy>370</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
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
    <value>{{goldenFile}}</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>{{encoding}}</value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>GoldenFileProperty</prop>
      </Filter>

    </Node>


    <Node name="readOutputFile" log=""
          type="com.itko.lisa.utils.ExecSubProcessNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="compareProperties" > 

<graphx>490</graphx>
<graphy>490</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
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
    <value>{{outputFile}}</value>
    <name>File to read</name>
    </Parameter>
    <Parameter>
    <key>encoding</key>
    <value>{{encoding}}</value>
    <name>encoding to use for a file, if blank, the encoding is system default encoding</name>
    </Parameter>
</Parameters>
<SaveProps>
</SaveProps>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
              <prop>OutputFileProperty</prop>
      </Filter>

    </Node>


    <Node name="compareProperties" log=""
          type="com.itko.lisa.test.NoTransNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="endWithSuccess" > 

<graphx>120</graphx>
<graphy>21</graphy>

      <!-- Result Elements -->
<CheckResult assertTrue="false" type="com.itko.lisa.test.AssertPropsEqual" name="Comparison" >
<log>Output file does not match golden file</log>
<then>endWithFailure</then>
        <prop1>GoldenFileProperty</prop1>
        <prop2>OutputFileProperty</prop2>
</CheckResult>

    </Node>


    <Node name="endWithFailure" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="fail" > 

<graphx>305</graphx>
<graphy>21</graphy>
<onerror>fail</onerror>
<script>return &quot;File Assertion Failed. Expected:\n\n&quot; + GoldenFileProperty + &quot;\n\nBut got:\n\n&quot; + OutputFileProperty;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Any Exception Then Fail" >
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="endWithSuccess" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>420</graphx>
<graphy>165</graphy>
<onerror>fail</onerror>
<script>return &quot;Success! Output file matches Golden file&quot;;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.dynexec.CheckInvocationEx" name="Any Exception Then Fail" >
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>379</graphx>
<graphy>345</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>213</graphx>
<graphy>426</graphy>
    </Node>


</TestCase>
