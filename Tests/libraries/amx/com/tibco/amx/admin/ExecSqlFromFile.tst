<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Fri Jan 04 17:31:46 PST 2013 -->


<TestCase name="ExecSqlFromFile" version="2">
<id>a90ad36d</id>
<Documentation>This subprocess reads and executes sql statements from the file. This is used by DDL automation.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS0xNTIyNzE2ODgz</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>filePath</key>
    <value></value>
    <name>provide full file path with file name</name>
    </Parameter>
    <Parameter>
    <key>dbType</key>
    <value>Oracle</value>
    <name>database vendor  - values are : SqlServer, Oracle, Db2</name>
    </Parameter>
    <Parameter>
    <key>jdbcUrl</key>
    <value></value>
    <name>jdbcUrl for the database on which execution will happen</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value></value>
    <name>db username</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value></value>
    <name>db password</name>
    </Parameter>
    <Parameter>
    <key>schemaUserName</key>
    <value></value>
    <name>schema user - Optional</name>
    </Parameter>
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
    <key>lisa.log.rsp</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.log.rsp.time</key>
    <value>Set in Step log</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyInputVariables.rsp</key>
    <value>Set in Step verifyInputVariables</value>
    </Parameter>
    <Parameter>
    <key>lisa.verifyInputVariables.rsp.time</key>
    <value>Set in Step verifyInputVariables</value>
    </Parameter>
    <Parameter>
    <key>lisa.executeSqlFromFile.rsp</key>
    <value>Set in Step executeSqlFromFile</value>
    </Parameter>
    <Parameter>
    <key>lisa.executeSqlFromFile.rsp.time</key>
    <value>Set in Step executeSqlFromFile</value>
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
    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="verifyInputVariables" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
      <log>Executing Sql statements from {{filePath}} with dbuser &quot;{{username}}&quot; &#13;&#10;on database {{dbType}} : {{jdbcUrl}} within schema &quot;{{schemaUserName}}&quot;&#13;&#10;</log>
    </Node>


    <Node name="verifyInputVariables" log="This step verifies the input variables for the invokeAnt subprocess."
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="executeSqlFromFile" > 

<graphx>778</graphx>
<graphy>10</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<onerror>fail</onerror>
<script>import java.io.File;&#13;&#10;import java.io.FileInputStream;&#13;&#10;import java.io.FileOutputStream;&#13;&#10;import java.io.FileReader;&#13;&#10;import java.io.InputStream;&#13;&#10;import java.io.OutputStream;&#13;&#10;import java.io.PrintStream;&#13;&#10;import java.util.Enumeration;&#13;&#10;import java.util.Properties;&#13;&#10;import java.util.Set;&#13;&#10;&#13;&#10;String checkInputVariables() {&#13;&#10;&#9;&#9;String response = &quot;Fail:&quot;;&#13;&#10;&#9;&#9;try {&#13;&#10;&#13;&#10;            if (filePath.equals(&quot;&quot;))&#13;&#10;                return errorMsg + &quot;: filePath is required.&quot;;&#13;&#10;&#13;&#10;            if (dbType.equals(&quot;&quot;))&#13;&#10;                return errorMsg + &quot;: dbType is required.&quot;;&#13;&#10;&#13;&#10;            if (jdbcUrl.equals(&quot;&quot;))&#13;&#10;                return errorMsg + &quot;: jdbcUrl is required.&quot;;&#13;&#10;&#13;&#10;            if (username.equals(&quot;&quot;))&#13;&#10;                return errorMsg + &quot;: db username is required.&quot;;&#13;&#10;                &#13;&#10;&#13;&#10;            if (    (!dbType.equals(&quot;Oracle&quot;)) &amp;&amp;&#13;&#10;                    (!dbType.equals(&quot;SqlServer&quot;)) &amp;&amp; &#13;&#10;                    (!dbType.equals(&quot;Db2&quot;)) &#13;&#10;                ) &#13;&#10;            {&#13;&#10;                return errorMsg + &quot;: dbType value should be either Oracle, SqlServer or Db2.&quot;;&#13;&#10;            }&#13;&#10;&#13;&#10;&#9;&#9;&#9;File sqlScriptsPath = null;&#13;&#10;&#9;&#9;&#9;if ((sqlScriptsPath != null) &amp;&amp; (!sqlScriptsPath.equals(&quot;&quot;))) {&#13;&#10;&#9;&#9;&#9;&#9;sqlScriptsPath = new File(testExec.parseInState(filePath).replace(&apos;\\&apos;, &apos;/&apos;));&#13;&#10;&#9;&#9;&#9;&#9;if((!sqlScriptsPath.exists()) ) {&#13;&#10;&#9;&#9;&#9;&#9;&#9;throw new Exception(&quot;The file does not exist : &quot;+ filePath);&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#13;&#10;&#9;&#9;&#9;response = &quot;Pass: Input variables are valid.&quot;;&#13;&#10;&#13;&#10;&#9;&#9;}catch(Exception e) {&#13;&#10;&#9;&#9;&#9;response = &quot;Fail: &quot;+e.getLocalizedMessage();&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;return response;&#13;&#10;&#9;}&#13;&#10;&#13;&#10;return checkInputVariables();</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert147" type="com.itko.lisa.test.CheckResultRegEx">
<log>Incorrect input parameters...</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Fail:.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="executeSqlFromFile" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="500-1000" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<onerror>fail</onerror>
<script>import java.io.*;&#13;&#10;import java.util.*;&#13;&#10;import java.sql.*;&#13;&#10;&#13;&#10;String executeSqlFromFile() {&#13;&#10;&#13;&#10;&#9;&#9;String ddlfilepath = filePath;&#13;&#10;        String dbType = dbType;&#13;&#10;&#9;&#9;String jdbcurl = jdbcUrl;&#13;&#10;&#9;&#9;String username = username;&#13;&#10;&#9;&#9;String password = password;&#13;&#10;&#9;&#9;String schemausername = schemaUserName;&#13;&#10;&#13;&#10;        String line = new String();&#13;&#10;&#9;&#9;String cmd = new String();&#13;&#10;&#9;&#9;String altercmd = new String();&#13;&#10;        String altercmd1 = new String();&#13;&#10;&#9;&#9;String altercmd2 = new String();&#13;&#10;&#9;&#9;String altercmd3 = new String();&#13;&#10;&#9;&#9;&#13;&#10;&#9;&#9;// DB Variables&#13;&#10;&#9;&#9;Connection con = null;&#13;&#10;&#9;&#9;Statement stm = null;&#13;&#10;&#9;&#9;boolean res = false;&#13;&#10;&#9;&#9;&#13;&#10;&#9;&#9;try{&#13;&#10;&#9;&#9;&#9;&#13;&#10;            if (dbType.equals(&quot;Oracle&quot;)) {&#13;&#10;                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());&#13;&#10;            } else if (dbType.equals(&quot;SqlServer&quot;)) {&#13;&#10;                Class.forName(&quot;com.microsoft.sqlserver.jdbc.SQLServerDriver&quot;);&#13;&#10;            }else if (dbType.equals(&quot;Db2&quot;)) {&#13;&#10;                Class.forName(&quot;com.ibm.db2.jcc.DB2Driver&quot;);&#13;&#10;            }&#13;&#10;&#9;&#9;&#13;&#10;&#9;&#9;&#9;BufferedReader in = new BufferedReader(new FileReader(ddlfilepath));&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;while(in.ready())&#13;&#10;&#9;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;&#9;line = line + in.readLine();&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;StringTokenizer st = new StringTokenizer(line, &quot;;&quot;);&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;// Connecting DB &#13;&#10;&#9;&#9;&#9;con = DriverManager.getConnection(jdbcurl, username, password);&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;// Executing DDL statement&#13;&#10;&#9;&#9;&#9;stm = con.createStatement();&#13;&#10;&#13;&#10;&#13;&#10;            if (    (!(schemausername == null))  || &#13;&#10;                    (!(schemausername.equals(&quot;&quot;))) &#13;&#10;                )&#13;&#10;&#9;&#9;&#9;{&#13;&#10;                if (dbType.equals(&quot;Oracle&quot;)) {&#13;&#10;                    altercmd = &quot;Alter session set current_schema=&quot; + schemausername;&#13;&#10;                    res = stm.execute(altercmd); // false if no result is to be displayed&#13;&#10;                }else if (dbType.equals(&quot;SqlServer&quot;)) {&#13;&#10;&#9;            &#13;&#10;&#9;            }else if (dbType.equals(&quot;Db2&quot;)) {&#13;&#10;&#9;            &#9;try&#13;&#10;&#9;            &#9;{&#13;&#10;&#9;            &#9;&#9;altercmd = &quot;create schema &quot; + schemausername + &quot; authorization &quot; + schemausername;&#13;&#10;&#9;            &#9;&#9;altercmd1 = &quot;revoke CREATEIN on schema &quot; + schemausername + &quot; from &quot; + schemausername;&#13;&#10;&#9;            &#9;&#9;altercmd2 = &quot;revoke ALTERIN on schema &quot; + schemausername + &quot; from &quot; + schemausername;&#13;&#10;&#9;            &#9;&#9;altercmd3 = &quot;revoke DROPIN on schema &quot; + schemausername + &quot; from &quot; + schemausername;&#13;&#10;&#9;            &#9;&#9;&#13;&#10;&#9;&#9;            &#9;res = stm.execute(altercmd); // false if no result is to be displayed&#13;&#10;&#9;&#9;            &#9;res = stm.execute(altercmd1);&#13;&#10;&#9;&#9;            &#9;res = stm.execute(altercmd2);&#13;&#10;&#9;&#9;            &#9;res = stm.execute(altercmd3);&#13;&#10;&#9;            &#9;&#9;&#13;&#10;&#9;            &#9;}&#13;&#10;&#9;            &#9;catch(Exception schm)&#13;&#10;&#9;            &#9;{&#13;&#10;&#9;            &#9;&#9;System.out.println(&quot;The schema is previously created&quot;);&#13;&#10;&#9;            &#9;}&#13;&#10;&#9;            &#9;&#13;&#10;&#9;            &#9;altercmd = &quot;set current_schema=&quot; + schemausername;&#13;&#10;&#9;            &#9;&#13;&#10;&#9;            &#9;System.out.println(altercmd);&#13;&#10;&#9;            &#9;&#13;&#10;&#9;            &#9;res = stm.execute(altercmd); // false if no result is to be displayed&#13;&#10;&#9;            }        &#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;while(st.hasMoreTokens())&#13;&#10;&#9;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;&#9;try&#13;&#10;&#9;&#9;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;&#9;&#9;cmd = new String();&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;cmd = st.nextToken();&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;res = stm.execute(cmd); // false if no result is to be displayed&#13;&#10;&#13;&#10;                    if (dbType.equals(&quot;Db2&quot;))&#13;&#10;&#9;&#9;&#9;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;if (cmd.contains(&quot;create table&quot;) || cmd.contains(&quot;CREATE TABLE&quot;))&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;int i = cmd.indexOf(&quot;\&quot;&quot;, 0);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;int j = cmd.indexOf(&quot;\&quot;&quot;, i+1);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;String tn = cmd.substring(i+1, j);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;//System.out.println(tn);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;cmd = &quot;grant select, insert, update, delete on &quot; + schemausername + &quot;.&quot; + tn + &quot; to user &quot; + schemausername;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;System.out.println(cmd);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;res = stm.execute(cmd); // false if no result is to be displayed&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;else if(cmd.contains(&quot;create index&quot;) || cmd.contains(&quot;CREATE INDEX&quot;))&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;String[] temp = cmd.split(&quot; &quot;);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;String indexname = temp[2];&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;//System.out.println(tn);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;cmd = &quot;GRANT CONTROL ON INDEX &quot; + schemausername + &quot;.&quot; + indexname + &quot; to user &quot; + schemausername;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;System.out.println(cmd);&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;res = stm.execute(cmd); // false if no result is to be displayed&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;&#9;}&#13;&#10;&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;&#9;catch(SQLException e)&#13;&#10;&#9;&#9;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;&#9;&#9;System.out.println(e.getMessage());&#13;&#10;&#9;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;in.close();&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;catch(Exception e1)&#13;&#10;&#9;&#9;{&#13;&#10;            throw e1;&#13;&#10;&#9;&#9;}&#13;&#10;&#9;&#9;finally&#13;&#10;        {&#13;&#10;&#9;&#9;&#9;try&#13;&#10;&#9;&#9;&#9;{&#13;&#10;                if (stm != null)&#13;&#10;                    stm.close();&#13;&#10;                if (con != null)        &#13;&#10;                    con.close();&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;&#9;catch (Exception e2)&#13;&#10;&#9;&#9;&#9;{&#13;&#10;&#9;&#9;&#9;&#9;throw e2;&#13;&#10;&#9;&#9;&#9;}&#13;&#10;&#9;&#9;}&#13;&#10;        &#13;&#10;        response = &quot;Executed SQL statements from the file successfully&quot;;&#13;&#10;        return response;&#13;&#10;&#9;&#9;&#13;&#10;}&#13;&#10;return executeSqlFromFile();</script>

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

<graphx>370</graphx>
<graphy>370</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>250</graphx>
<graphy>250</graphy>
    </Node>


</TestCase>
