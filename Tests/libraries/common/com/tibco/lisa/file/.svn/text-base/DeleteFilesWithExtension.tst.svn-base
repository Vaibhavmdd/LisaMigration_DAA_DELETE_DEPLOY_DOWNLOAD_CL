<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Mon Feb 10 22:02:54 PST 2014 -->


<TestCase name="DeleteFilesWithExtension" version="2">
<id>9cbf4224</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS01MjE4MTI5Nzg=</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>folder</key>
    <value></value>
    <name>required - folder to search</name>
    </Parameter>
    <Parameter>
    <key>extension</key>
    <value></value>
    <name>required - extension of file e.g &quot;.exe&quot;</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.Log.rsp</key>
    <value>Set in Step Log</value>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp.time</key>
    <value>Set in Step Log</value>
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
    <key>lisa.fail.rsp</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.fail.rsp.time</key>
    <value>Set in Step fail</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteFilesWithExtensions.rsp</key>
    <value>Set in Step deleteFilesWithExtensions</value>
    </Parameter>
    <Parameter>
    <key>lisa.deleteFilesWithExtensions.rsp.time</key>
    <value>Set in Step deleteFilesWithExtensions</value>
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
          next="deleteFilesWithExtensions" > 

<graphx>24</graphx>
<graphy>274</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
      <log>Delete file with extension {{extension}} from {{folder}} ...</log>
    </Node>


    <Node name="deleteFilesWithExtensions" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>24</graphx>
<graphy>91</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<onerror>fail</onerror>
<script>import java.io.FilenameFilter;&#13;&#10;import java.io.File;&#13;&#10;&#13;&#10;public String deleteUnwantedUniversalInstallers(){&#13;&#10;&#13;&#10;String folder = folder.replace(&apos;\\&apos;,&apos;/&apos;);&#13;&#10;&#13;&#10;String returnString = &quot;&quot;;&#13;&#10;// Define the filter to get the post-install errors only&#13;&#10;FilenameFilter univeralInstallerFilter = new FilenameFilter() {&#13;&#10; boolean accept(File dir, String name) {&#13;&#10;  return name.toLowerCase().endsWith(extension);&#13;&#10; }&#13;&#10;};&#13;&#10;&#13;&#10;File dir = new File(folder);&#13;&#10;String [] list = dir.list(univeralInstallerFilter);&#13;&#10;&#13;&#10;if (list.length == 0) return &quot;No file with extension &quot; + extension + &quot; found&quot;;&#13;&#10;&#13;&#10;// return (list.length).toString();        &#13;&#10;&#13;&#10;&#13;&#10;File fileDelete;&#13;&#10; &#13;&#10;for (String file : list){&#13;&#10;    String temp = new StringBuffer(folder)&#13;&#10;                      .append(File.separator)&#13;&#10;                      .append(file).toString();&#13;&#10;    fileDelete = new File(temp);&#13;&#10;    boolean isdeleted = fileDelete.delete();&#13;&#10;    if (isdeleted) {&#13;&#10;        returnString = returnString + &quot;deleted: &quot; + fileDelete + &quot;\r&quot;; &#13;&#10;    }&#13;&#10; }&#13;&#10; return returnString;        &#13;&#10;}&#13;&#10;return deleteUnwantedUniversalInstallers();&#13;&#10;&#13;&#10;&#13;&#10;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
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

<graphx>183</graphx>
<graphy>366</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>341</graphx>
<graphy>274</graphy>
    </Node>


</TestCase>
