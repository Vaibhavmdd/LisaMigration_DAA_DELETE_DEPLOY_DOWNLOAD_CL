<?xml version="1.0" ?>


<!-- TestCase created by LISA Test Editor -->
<!-- On: Mon Jul 30 18:06:04 PDT 2007 -->


<TestCase name="GetNameValuePairFromFile" version="2">
<id>d14c15fc</id>
<Documentation>Get the Name-Value pair from a file.&#10;File can have any extension.&#10;Pass a key name and get the value associated with it. Value is returned as &quot;&lt;&lt;null&gt;&quot; if key name is not found in the file.&#10;If you need to pass the character backslash (&apos;\&apos;) in the Name, escape it by passing &apos;\\&apos;.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj0zLjZjICg0MDkyKSZub2Rlcz0tOTEzMTQ0ODEy</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>file</key>
    <value></value>
    <name>File where to get value from</name>
    </Parameter>
    <Parameter>
    <key>name</key>
    <value></value>
    <name>Name</name>
    </Parameter>
    <Parameter>
    <key>assignChar</key>
    <value>=</value>
    <name>Character utilized for assignment: equal (&apos;=&apos;), white space (&apos; &apos;), ...</name>
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
    <key>lisa.getNameValuePairFromFile.rsp</key>
    <value>Set in Step getNameValuePairFromFile</value>
    <name>lisa.getNameValuePairFromFile.rsp</name>
    </Parameter>
    <Parameter>
    <key>lisa.getNameValuePairFromFile.rsp.time</key>
    <value>Set in Step getNameValuePairFromFile</value>
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
    <key>lisa.Log.rsp</key>
    <value>Set in Step Log</value>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp.time</key>
    <value>Set in Step Log</value>
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
          next="getNameValuePairFromFile" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
      <log>Looking for {{name}} in {{file}} ...</log>
    </Node>


    <Node name="getNameValuePairFromFile" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>13</graphx>
<graphy>49</graphy>
<script>import java.io.File;&#10;import java.io.RandomAccessFile;&#10;&#10;getNameValuePairFromFile(String fileName, String name, String assignChar) {&#10; try {&#10;  File file = new File(fileName);&#10;  String value = &quot;&lt;&lt;null&gt;&gt;&quot;;&#10;  &#10;  // Check if file exists&#10;  if(!file.exists())&#10;   return errorMsg + &quot;: File &quot; + fileName + &quot; does not exist&quot;;&#10;&#10;  // If fileName is a directory, we fail.&#10;  if(file.isDirectory())&#10;   return errorMsg + &quot;: File passed is a directory! It must be a file.&quot;;&#10;&#10;  // Name cannot be empty&#10;  if(name.equals(&quot;&quot;))&#10;   return errorMsg + &quot;: Name cannot be empty&quot;;&#10;&#10;  // Assignment character cannot be empty&#10;  if(assignChar.equals(&quot;&quot;))&#10;   return errorMsg + &quot;: Assign character cannot be empty&quot;;&#10;&#10;  RandomAccessFile raf = new RandomAccessFile(file, &quot;r&quot;);&#10;  String lineData = &quot;&quot;;&#10;&#10;  // Read file line by line&#10;  while((lineData = raf.readLine()) != null) {&#10;   // If we find the Name and it&apos;s not commented out&#10;   //if(lineData.indexOf(name + assignchar) &gt;= 0 &amp;&amp; !lineData.trim().startsWith(&quot;#&quot;)) {&#10;   if(lineData.matches(name + &quot;.*&quot; + assignChar + &quot;.*&quot;) &amp;&amp; !lineData.trim().startsWith(&quot;#&quot;)) {&#10;    value = lineData.substring(lineData.indexOf(assignChar) + 1).trim();&#10;    break;&#10;   }&#10;  }&#10;  raf.close();&#10;  return value;&#10; }&#10; catch(Exception e){&#10;  return errorMsg + &quot;: &quot; + e.getMessage();&#10; }&#10;}&#10;&#10;// Main&#10;final String errorMsg = &quot;Error getting Name-Value pair&quot;;&#10;file = testExec.parseInState(file).replace(&apos;\\&apos;,&apos;/&apos;);&#10;name = testExec.parseInState(name);&#10;assignChar = testExec.parseInState(assignChar);&#10;return getNameValuePairFromFile(file, name, assignChar);&#10; </script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" type="com.itko.lisa.test.CheckResultContains" name="Assert100" >
<log>{{lisa.getNameValuePairFromFile.rsp}}</log>
<then>fail</then>
        <param>Error getting Name-Value pair</param>
</CheckResult>

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>186</graphx>
<graphy>50</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>100</graphx>
<graphy>200</graphy>
    </Node>


</TestCase>
