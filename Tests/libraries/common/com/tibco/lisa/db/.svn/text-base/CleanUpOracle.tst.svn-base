<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Tue Jun 08 13:57:12 PDT 2010 -->


<TestCase name="CleanUpOracle" version="2">
<id>8b395b99</id>
<Documentation>Drops all the tables and sequences for a given user.</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPS05ODI2MzY4NjU=</sig>
<rootNode>Log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>hostname</key>
    <value></value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value></value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>sid</key>
    <value></value>
    <name>Oracle sid</name>
    </Parameter>
    <Parameter>
    <key>username</key>
    <value></value>
    <name>Oracle user getting the clean up</name>
    </Parameter>
    <Parameter>
    <key>password</key>
    <value></value>
    <name>Password</name>
    </Parameter>
</initState>

<resultState>
    <Parameter>
    <key>lisa.validate.rsp</key>
    <value>Set in Step validate</value>
    </Parameter>
    <Parameter>
    <key>lisa.validate.rsp.time</key>
    <value>Set in Step validate</value>
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
    <key>TABLE_NAME</key>
    <value>Set in Step dropTables</value>
    </Parameter>
    <Parameter>
    <key>SEQUENCE_NAME</key>
    <value>Set in Step dropSequences</value>
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
    <key>lisa.Log.rsp</key>
    <value>Set in Step Log</value>
    </Parameter>
    <Parameter>
    <key>lisa.Log.rsp.time</key>
    <value>Set in Step Log</value>
    </Parameter>
    <Parameter>
    <key>lisa.initTableCount.rsp</key>
    <value>Set in Step initTableCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.initTableCount.rsp.time</key>
    <value>Set in Step initTableCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.initSequenceCount.rsp</key>
    <value>Set in Step initSequenceCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.initSequenceCount.rsp.time</key>
    <value>Set in Step initSequenceCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.returnString.rsp</key>
    <value>Set in Step returnString</value>
    </Parameter>
    <Parameter>
    <key>lisa.returnString.rsp.time</key>
    <value>Set in Step returnString</value>
    </Parameter>
    <Parameter>
    <key>lisa.dropTable.rsp</key>
    <value>Set in Step dropTable</value>
    </Parameter>
    <Parameter>
    <key>lisa.dropTable.rsp.time</key>
    <value>Set in Step dropTable</value>
    </Parameter>
    <Parameter>
    <key>lisa.dropSequence.rsp</key>
    <value>Set in Step dropSequence</value>
    </Parameter>
    <Parameter>
    <key>lisa.dropSequence.rsp.time</key>
    <value>Set in Step dropSequence</value>
    </Parameter>
    <Parameter>
    <key>lisa.getTables.rsp</key>
    <value>Set in Step getTables</value>
    </Parameter>
    <Parameter>
    <key>lisa.getTables.rsp.time</key>
    <value>Set in Step getTables</value>
    </Parameter>
    <Parameter>
    <key>test</key>
    <value>Property From Config</value>
    </Parameter>
    <Parameter>
    <key>tableList</key>
    <value>Set in Step getTables</value>
    </Parameter>
    <Parameter>
    <key>lisa.getTableList.rsp</key>
    <value>Set in Step getTableList</value>
    </Parameter>
    <Parameter>
    <key>lisa.getTableList.rsp.time</key>
    <value>Set in Step getTableList</value>
    </Parameter>
    <Parameter>
    <key>tableArray</key>
    <value>Set in Step getTableList</value>
    </Parameter>
    <Parameter>
    <key>lisa.getSequences.rsp</key>
    <value>Set in Step getSequences</value>
    </Parameter>
    <Parameter>
    <key>lisa.getSequences.rsp.time</key>
    <value>Set in Step getSequences</value>
    </Parameter>
    <Parameter>
    <key>sequenceList</key>
    <value>Set in Step getSequences</value>
    </Parameter>
    <Parameter>
    <key>lisa.getSequenceList.rsp</key>
    <value>Set in Step getSequenceList</value>
    </Parameter>
    <Parameter>
    <key>lisa.getSequenceList.rsp.time</key>
    <value>Set in Step getSequenceList</value>
    </Parameter>
    <Parameter>
    <key>sequenceArray</key>
    <value>Set in Step getSequenceList</value>
    </Parameter>
</resultState>

<Configurations>
<Configuration>
<name>default</name>
<external>false</external>
<props>
    <Parameter>
    <key>test</key>
    <value>2</value>
    <name>Name</name>
    </Parameter>
</props>
</Configuration>
</Configurations>
    <Node name="Log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="validate" > 

<graphx>125</graphx>
<graphy>551</graphy>
      <log>Deleting all tables and sequences for user &apos;{{username}}&apos;...</log>
    </Node>


    <Node name="validate" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="initTableCount" > 

<graphx>14</graphx>
<graphy>399</graphy>
<onerror>fail</onerror>
<script>import oracle.jdbc.driver.OracleDriver;&#13;&#10;&#13;&#10;String successMsg = &quot;Oracle Validation Success&quot;; // Do not modify, assertions on these strings might exist.&#13;&#10;String errorMsg = &quot;Oracle Validation Error&quot;;&#13;&#10;&#13;&#10;try {&#13;&#10; Class.forName(&quot;oracle.jdbc.driver.OracleDriver&quot;);&#13;&#10;}&#13;&#10;catch (Exception e) {&#13;&#10; return errorMsg + &quot;: &quot; + e.getClass().getName() + &quot; &quot; + e.getMessage();&#13;&#10;}&#13;&#10;&#13;&#10;if (hostname.equals(&quot;&quot;) || hostname.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: hostname is required.&quot;;&#13;&#10;&#13;&#10;if (port.equals(&quot;&quot;) || port.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: port is required.&quot;;&#13;&#10;&#13;&#10;if (sid.equals(&quot;&quot;) || sid.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: sid is required.&quot;;&#13;&#10;&#13;&#10;if (username.equals(&quot;&quot;) || username.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: username is required.&quot;;&#13;&#10;&#13;&#10;if (password.equals(&quot;&quot;) || password.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: password is required.&quot;;&#13;&#10;&#13;&#10;return successMsg;</script>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Oracle validation has thrown uncaugth Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<CheckResult assertTrue="true" name="Assert108" type="com.itko.lisa.test.CheckResultContains">
<log>{{lisa.validate.rsp}}</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>Oracle Validation Error</param>
</CheckResult>

    </Node>


    <Node name="initTableCount" log="{{tableCount=-1}}"
          type="com.itko.lisa.test.NoTransNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getTables" > 

<graphx>125</graphx>
<graphy>58</graphy>
<Documentation>Init table count variable</Documentation>
<remoteServer>local</remoteServer>
    </Node>


    <Node name="getTables" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getTableList" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Documentation>Get all the tables</Documentation>
<remoteServer>local</remoteServer>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{port}}:{{sid}}</connect>
<user>{{username}}</user>
<password>{{password}}</password>
<onSQLError>fail</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>select table_name from user_tables</sql>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getTables.rsp</valueToFilterKey>
      <prop>tableList</prop>
      </Filter>

    </Node>


    <Node name="getTableList" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="dropTable" > 

<graphx>130</graphx>
<graphy>130</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<onerror>fail</onerror>
<script>import com.itko.lisa.jdbc.JDBCResultSetCache;&#13;&#10;&#13;&#10;String[] list;&#13;&#10;if (tableList.toString().equals(&quot;&lt;list/&gt;&quot;))&#13;&#10; testExec.setNextNode(&quot;initSequenceCount&quot;);&#13;&#10;else {&#13;&#10; list = tableList.toString().split(&quot;&lt;/string&gt;\n  &lt;/list&gt;\n  &lt;list&gt;\n    &lt;string&gt;&quot;);&#13;&#10; list[0] = list[0].replaceFirst(&quot;&lt;list&gt;\n  &lt;list&gt;\n    &lt;string&gt;&quot;, &quot;&quot;);&#13;&#10; list[list.length-1] = list[list.length-1].replaceFirst(&quot;&lt;/string&gt;\n  &lt;/list&gt;\n&lt;/list&gt;&quot;, &quot;&quot;);&#13;&#10;}&#13;&#10;return list;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getTableList.rsp</valueToFilterKey>
      <prop>tableArray</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>getTableList has thrown uncaught exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="dropTable" log="{{tableCount=tableCount+1}} {{TABLE_NAME=tableArray[tableCount]}}"
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="dropTable" > 

<graphx>484</graphx>
<graphy>58</graphy>
<Documentation>Drop one table and increase the tableCount by one, then loop over.</Documentation>
<remoteServer>local</remoteServer>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{port}}:{{sid}}</connect>
<user>{{username}}</user>
<password>{{password}}</password>
<onSQLError>continue</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>drop table {{TABLE_NAME}} cascade constraints</sql>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert82" type="com.itko.lisa.test.AssertByScript">
<log>Deleted {{=tableCount+1}} table(s)</log>
<then>initSequenceCount</then>
<valueToAssertKey></valueToAssertKey>
        <script>// Exit the loop if we reach end of tables&#13;&#10;if (tableCount &gt;= tableArray.length-1)&#13;&#10; return true;&#13;&#10;else &#13;&#10; return false;</script>
</CheckResult>

    </Node>


    <Node name="initSequenceCount" log="{{sequenceCount=-1}}"
          type="com.itko.lisa.test.NoTransNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getSequences" > 

<graphx>305</graphx>
<graphy>0</graphy>
<Documentation>Init sequence count variable</Documentation>
<remoteServer>local</remoteServer>
    </Node>


    <Node name="getSequences" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getSequenceList" > 

<graphx>250</graphx>
<graphy>250</graphy>
<Documentation>Get all the sequences</Documentation>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{port}}:{{sid}}</connect>
<user>{{username}}</user>
<password>{{password}}</password>
<onSQLError>fail</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>select sequence_name from user_sequences</sql>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getSequences.rsp</valueToFilterKey>
      <prop>sequenceList</prop>
      </Filter>

    </Node>


    <Node name="getSequenceList" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="dropSequence" > 

<graphx>370</graphx>
<graphy>370</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<onerror>fail</onerror>
<script>import com.itko.lisa.jdbc.JDBCResultSetCache;&#13;&#10;&#13;&#10;String[] list;&#13;&#10;if (sequenceList.toString().equals(&quot;&lt;list/&gt;&quot;))&#13;&#10; testExec.setNextNode(&quot;returnString&quot;);&#13;&#10;else {&#13;&#10; list = sequenceList.toString().split(&quot;&lt;/string&gt;\n  &lt;/list&gt;\n  &lt;list&gt;\n    &lt;string&gt;&quot;);&#13;&#10; list[0] = list[0].replaceFirst(&quot;&lt;list&gt;\n  &lt;list&gt;\n    &lt;string&gt;&quot;, &quot;&quot;);&#13;&#10; list[list.length-1] = list[list.length-1].replaceFirst(&quot;&lt;/string&gt;\n  &lt;/list&gt;\n&lt;/list&gt;&quot;, &quot;&quot;);&#13;&#10;}&#13;&#10;return list;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getSequenceList.rsp</valueToFilterKey>
      <prop>sequenceArray</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>getSequenceList has thrown uncaught exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="dropSequence" log="{{sequenceCount=sequenceCount+1}} {{SEQUENCE_NAME=sequenceArray[sequenceCount]}}"
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="dropSequence" > 

<graphx>595</graphx>
<graphy>210</graphy>
<Documentation>Drop one sequence and increase the sequenceCount by one, then loop over.</Documentation>
<remoteServer>local</remoteServer>
<driver>oracle.jdbc.driver.OracleDriver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:oracle:thin:@{{hostname}}:{{port}}:{{sid}}</connect>
<user>{{username}}</user>
<password>{{password}}</password>
<onSQLError>continue</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>drop sequence {{SEQUENCE_NAME}}</sql>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert142" type="com.itko.lisa.test.AssertByScript">
<log>Deleted {{=sequenceCount+1}} sequence(s)</log>
<then>returnString</then>
<valueToAssertKey></valueToAssertKey>
        <script>// Exit the loop if we reach end of sequences&#13;&#10;if (sequenceCount &gt;= sequenceArray.length-1)&#13;&#10; return true;&#13;&#10;else &#13;&#10; return false;</script>
</CheckResult>

    </Node>


    <Node name="returnString" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="end" > 

<graphx>595</graphx>
<graphy>399</graphy>
<onerror>fail</onerror>
<script>return (tableCount + 1) + &quot; table(s) and &quot; + (sequenceCount + 1) + &quot; sequence(s) have been deleted.&quot;;</script>
    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="unknown" > 

<graphx>305</graphx>
<graphy>610</graphy>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="true" 
          next="fail" > 

<graphx>484</graphx>
<graphy>551</graphy>
    </Node>


</TestCase>
