<?xml version="1.0" ?>


<!-- Test Case created by LISA Test Editor -->
<!-- On: Wed Jun 15 13:38:02 PDT 2011 -->


<TestCase name="CleanUpDB2" version="2">
<id>8b395b99</id>
<Documentation>Drops all the tables, views, aliases, triggers, indexes for a given user (schema).</Documentation>
<sig>ZWQ9MiZ0Y3Y9MiZsaXNhdj00LjYuNyAoNC42LjcuMTYpJm5vZGVzPTgyNjE2MDkzMA==</sig>
<rootNode>log</rootNode>
<subprocess>true</subprocess>

<initState>
    <Parameter>
    <key>hostname</key>
    <value>localhost</value>
    <name>Hostname</name>
    </Parameter>
    <Parameter>
    <key>port</key>
    <value>446</value>
    <name>Port</name>
    </Parameter>
    <Parameter>
    <key>sysuser</key>
    <value>db2admin</value>
    <name>DB2 system user allowed to drop schema</name>
    </Parameter>
    <Parameter>
    <key>syspassword</key>
    <value>db2admin</value>
    <name>DB2 system password</name>
    </Parameter>
    <Parameter>
    <key>database</key>
    <value>sample</value>
    <name>DB2 database to connect to</name>
    </Parameter>
    <Parameter>
    <key>schema</key>
    <value></value>
    <name>DB2 user (schema) getting the clean up</name>
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
    <key>lisa.initTableCount.rsp</key>
    <value>Set in Step initTableCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.initTableCount.rsp.time</key>
    <value>Set in Step initTableCount</value>
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
    <key>lisa.getTables.rsp</key>
    <value>Set in Step getTables</value>
    </Parameter>
    <Parameter>
    <key>lisa.getTables.rsp.time</key>
    <value>Set in Step getTables</value>
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
    <key>lisa.incrementTableCount.rsp</key>
    <value>Set in Step incrementTableCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.incrementTableCount.rsp.time</key>
    <value>Set in Step incrementTableCount</value>
    </Parameter>
    <Parameter>
    <key>tableToDrop</key>
    <value>Set in Step incrementTableCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.initViewCount.rsp</key>
    <value>Set in Step initViewCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.initViewCount.rsp.time</key>
    <value>Set in Step initViewCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.getViews.rsp</key>
    <value>Set in Step getViews</value>
    </Parameter>
    <Parameter>
    <key>lisa.getViews.rsp.time</key>
    <value>Set in Step getViews</value>
    </Parameter>
    <Parameter>
    <key>viewList</key>
    <value>Set in Step getViews</value>
    </Parameter>
    <Parameter>
    <key>lisa.getViewList.rsp</key>
    <value>Set in Step getViewList</value>
    </Parameter>
    <Parameter>
    <key>lisa.getViewList.rsp.time</key>
    <value>Set in Step getViewList</value>
    </Parameter>
    <Parameter>
    <key>viewArray</key>
    <value>Set in Step getViewList</value>
    </Parameter>
    <Parameter>
    <key>lisa.incrementViewCount.rsp</key>
    <value>Set in Step incrementViewCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.incrementViewCount.rsp.time</key>
    <value>Set in Step incrementViewCount</value>
    </Parameter>
    <Parameter>
    <key>viewToDrop</key>
    <value>Set in Step incrementViewCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.dropView.rsp</key>
    <value>Set in Step dropView</value>
    </Parameter>
    <Parameter>
    <key>lisa.dropView.rsp.time</key>
    <value>Set in Step dropView</value>
    </Parameter>
    <Parameter>
    <key>lisa.initAliasCount.rsp</key>
    <value>Set in Step initAliasCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.initAliasCount.rsp.time</key>
    <value>Set in Step initAliasCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.getAliases.rsp</key>
    <value>Set in Step getAliases</value>
    </Parameter>
    <Parameter>
    <key>lisa.getAliases.rsp.time</key>
    <value>Set in Step getAliases</value>
    </Parameter>
    <Parameter>
    <key>aliasList</key>
    <value>Set in Step getAliases</value>
    </Parameter>
    <Parameter>
    <key>lisa.getAliasList.rsp</key>
    <value>Set in Step getAliasList</value>
    </Parameter>
    <Parameter>
    <key>lisa.getAliasList.rsp.time</key>
    <value>Set in Step getAliasList</value>
    </Parameter>
    <Parameter>
    <key>aliasArray</key>
    <value>Set in Step getAliasList</value>
    </Parameter>
    <Parameter>
    <key>lisa.incrementAliasCount.rsp</key>
    <value>Set in Step incrementAliasCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.incrementAliasCount.rsp.time</key>
    <value>Set in Step incrementAliasCount</value>
    </Parameter>
    <Parameter>
    <key>aliasToDrop</key>
    <value>Set in Step incrementAliasCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.dropAlias.rsp</key>
    <value>Set in Step dropAlias</value>
    </Parameter>
    <Parameter>
    <key>lisa.dropAlias.rsp.time</key>
    <value>Set in Step dropAlias</value>
    </Parameter>
    <Parameter>
    <key>lisa.initTriggerCount.rsp</key>
    <value>Set in Step initTriggerCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.initTriggerCount.rsp.time</key>
    <value>Set in Step initTriggerCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.getTriggers.rsp</key>
    <value>Set in Step getTriggers</value>
    </Parameter>
    <Parameter>
    <key>lisa.getTriggers.rsp.time</key>
    <value>Set in Step getTriggers</value>
    </Parameter>
    <Parameter>
    <key>triggerList</key>
    <value>Set in Step getTriggers</value>
    </Parameter>
    <Parameter>
    <key>lisa.getTriggerList.rsp</key>
    <value>Set in Step getTriggerList</value>
    </Parameter>
    <Parameter>
    <key>lisa.getTriggerList.rsp.time</key>
    <value>Set in Step getTriggerList</value>
    </Parameter>
    <Parameter>
    <key>triggerArray</key>
    <value>Set in Step getTriggerList</value>
    </Parameter>
    <Parameter>
    <key>lisa.incrementTriggerCount.rsp</key>
    <value>Set in Step incrementTriggerCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.incrementTriggerCount.rsp.time</key>
    <value>Set in Step incrementTriggerCount</value>
    </Parameter>
    <Parameter>
    <key>triggerToDrop</key>
    <value>Set in Step incrementTriggerCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.dropTrigger.rsp</key>
    <value>Set in Step dropTrigger</value>
    </Parameter>
    <Parameter>
    <key>lisa.dropTrigger.rsp.time</key>
    <value>Set in Step dropTrigger</value>
    </Parameter>
    <Parameter>
    <key>lisa.initIndexCount.rsp</key>
    <value>Set in Step initIndexCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.initIndexCount.rsp.time</key>
    <value>Set in Step initIndexCount</value>
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
    <key>lisa.getIndexes.rsp</key>
    <value>Set in Step getIndexes</value>
    </Parameter>
    <Parameter>
    <key>lisa.getIndexes.rsp.time</key>
    <value>Set in Step getIndexes</value>
    </Parameter>
    <Parameter>
    <key>lisa.end.rsp.time</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>indexList</key>
    <value>Set in Step getIndexes</value>
    </Parameter>
    <Parameter>
    <key>lisa.getIndexList.rsp</key>
    <value>Set in Step getIndexList</value>
    </Parameter>
    <Parameter>
    <key>lisa.getIndexList.rsp.time</key>
    <value>Set in Step getIndexList</value>
    </Parameter>
    <Parameter>
    <key>indexArray</key>
    <value>Set in Step getIndexList</value>
    </Parameter>
    <Parameter>
    <key>lisa.incrementIndexCount.rsp</key>
    <value>Set in Step incrementIndexCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.incrementIndexCount.rsp.time</key>
    <value>Set in Step incrementIndexCount</value>
    </Parameter>
    <Parameter>
    <key>indexToDrop</key>
    <value>Set in Step incrementIndexCount</value>
    </Parameter>
    <Parameter>
    <key>lisa.dropIndex.rsp</key>
    <value>Set in Step dropIndex</value>
    </Parameter>
    <Parameter>
    <key>lisa.dropIndex.rsp.time</key>
    <value>Set in Step dropIndex</value>
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
    <key>lisa.end.rsp</key>
    <value>Set in Step end</value>
    </Parameter>
    <Parameter>
    <key>lisa.dropTable2.rsp</key>
    <value>Set in Step dropTable2</value>
    </Parameter>
    <Parameter>
    <key>lisa.dropTable2.rsp.time</key>
    <value>Set in Step dropTable2</value>
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
    <Node name="log" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="validate" > 

<graphx>125</graphx>
<graphy>551</graphy>
      <log>Deleting all tables, views, aliases, triggers, indexes for schema &apos;{{=schema.toUpperCase()}}&apos;...&#13;&#10;host: {{hostname}}:{{port}}&#13;&#10;user/pwd: {{sysuser}}/{{syspassword}}&#13;&#10;db: {{database}}</log>
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
<script>import com.ibm.db2.jcc.DB2Driver;&#13;&#10;&#13;&#10;String successMsg = &quot;DB2 Validation Success&quot;; // Do not modify, assertions on these strings might exist.&#13;&#10;String errorMsg = &quot;DB2 Validation Error&quot;;&#13;&#10;&#13;&#10;try {&#13;&#10; Class.forName(&quot;com.ibm.db2.jcc.DB2Driver&quot;);&#13;&#10;}&#13;&#10;catch (Exception e) {&#13;&#10; return errorMsg + &quot;: &quot; + e.getClass().getName() + &quot; &quot; + e.getMessage();&#13;&#10;}&#13;&#10;&#13;&#10;if (hostname.equals(&quot;&quot;) || hostname.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: hostname is required.&quot;;&#13;&#10;&#13;&#10;if (port.equals(&quot;&quot;) || port.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: port is required.&quot;;&#13;&#10;&#13;&#10;if (database.equals(&quot;&quot;) || database.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: database is required.&quot;;&#13;&#10;&#13;&#10;if (sysuser.equals(&quot;&quot;) || sysuser.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: system user name is required.&quot;;&#13;&#10;&#13;&#10;if (syspassword.equals(&quot;&quot;) || syspassword.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: system user password is required.&quot;;&#13;&#10;&#13;&#10;if (schema.equals(&quot;&quot;) || schema.equals(&quot;&lt;&lt;null&gt;&gt;&quot;))&#13;&#10; return errorMsg + &quot;: schema is required.&quot;;&#13;&#10;&#13;&#10;return successMsg;</script>

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
        <param>DB2 Validation Error</param>
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
<driver>com.ibm.db2.jcc.DB2Driver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:db2://{{hostname}}:{{port}}/{{database}}</connect>
<user>{{sysuser}}</user>
<password>{{syspassword}}</password>
<onSQLError>fail</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>select tabname from syscat.tables where tabschema = &apos;{{=schema.toUpperCase()}}&apos; and tabname not like &apos;SYS%&apos; and TYPE IN (&apos;H&apos;,&apos;S&apos;,&apos;T&apos;,&apos;U&apos;)</sql>

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
          next="incrementTableCount" > 

<graphx>130</graphx>
<graphy>130</graphy>
<onerror>fail</onerror>
<script>import com.itko.lisa.jdbc.JDBCResultSetCache;&#13;&#10;&#13;&#10;String[] list;&#13;&#10;if (tableList.toString().equals(&quot;&lt;list/&gt;&quot;))&#13;&#10; testExec.setNextNode(&quot;initViewCount&quot;);&#13;&#10;else {&#13;&#10; list = tableList.toString().split(&quot;&lt;/string&gt;\n  &lt;/list&gt;\n  &lt;list&gt;\n    &lt;string&gt;&quot;);&#13;&#10; list[0] = list[0].replaceFirst(&quot;&lt;list&gt;\n  &lt;list&gt;\n    &lt;string&gt;&quot;, &quot;&quot;);&#13;&#10; list[list.length-1] = list[list.length-1].replaceFirst(&quot;&lt;/string&gt;\n  &lt;/list&gt;\n&lt;/list&gt;&quot;, &quot;&quot;);&#13;&#10;}&#13;&#10;return list;</script>

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


    <Node name="incrementTableCount" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="dropTable" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<Documentation></Documentation>
<remoteServer>local</remoteServer>
<onerror>fail</onerror>
<script>//tableCount=tableCount+1;&#13;&#10;testExec.setStateValue(&quot;tableCount&quot;, tableCount+1);&#13;&#10;return tableArray[testExec.getStateValue(&quot;tableCount&quot;)];</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.incrementTableCount.rsp</valueToFilterKey>
      <prop>tableToDrop</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="dropTable" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="incrementTableCount" > 

<graphx>484</graphx>
<graphy>58</graphy>
<Documentation>Drop one Table and increase the tableCount by one, then loop over.</Documentation>
<remoteServer>local</remoteServer>
<driver>com.ibm.db2.jcc.DB2Driver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:db2://{{hostname}}:{{port}}/{{database}}</connect>
<user>{{sysuser}}</user>
<password>{{syspassword}}</password>
<onSQLError>dropTable2</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>drop table {{=schema.toUpperCase()}}.{{tableToDrop}}</sql>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert82" type="com.itko.lisa.test.AssertByScript">
<log>Deleted {{=tableCount+1}} table(s)</log>
<then>initViewCount</then>
<valueToAssertKey></valueToAssertKey>
        <script>// Exit the loop if we reach end of tables&#13;&#10;if (tableCount &gt;= tableArray.length-1)&#13;&#10; return true;&#13;&#10;else &#13;&#10; return false;</script>
</CheckResult>

    </Node>


    <Node name="dropTable2" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="incrementTableCount" > 

<graphx>484</graphx>
<graphy>58</graphy>
<Documentation>Try to drop the table again this time with double-quote around it.&#13;&#10;some table are created with double-quote in their name but unfortunately the JDBC call strips out the double-quote &#13;&#10;when it returns the table names.</Documentation>
<remoteServer>local</remoteServer>
<driver>com.ibm.db2.jcc.DB2Driver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:db2://{{hostname}}:{{port}}/{{database}}</connect>
<user>{{sysuser}}</user>
<password>{{syspassword}}</password>
<onSQLError>continue</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>drop table {{=schema.toUpperCase()}}.&quot;{{tableToDrop}}&quot;</sql>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert82" type="com.itko.lisa.test.AssertByScript">
<log>Deleted {{=tableCount+1}} table(s)</log>
<then>initViewCount</then>
<valueToAssertKey></valueToAssertKey>
        <script>// Exit the loop if we reach end of tables&#13;&#10;if (tableCount &gt;= tableArray.length-1)&#13;&#10; return true;&#13;&#10;else &#13;&#10; return false;</script>
</CheckResult>

    </Node>


    <Node name="initViewCount" log="{{viewCount=-1}}"
          type="com.itko.lisa.test.NoTransNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getViews" > 

<graphx>125</graphx>
<graphy>58</graphy>
<Documentation>Init view count variable</Documentation>
    </Node>


    <Node name="getViews" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getViewList" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Documentation>Get all the views</Documentation>
<driver>com.ibm.db2.jcc.DB2Driver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:db2://{{hostname}}:{{port}}/{{database}}</connect>
<user>{{sysuser}}</user>
<password>{{syspassword}}</password>
<onSQLError>fail</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>select tabname from syscat.tables where tabschema = &apos;{{=schema.toUpperCase()}}&apos; and tabname not like &apos;SYS%&apos; and TYPE IN (&apos;V&apos;,&apos;W&apos;)</sql>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getViews.rsp</valueToFilterKey>
      <prop>viewList</prop>
      </Filter>

    </Node>


    <Node name="getViewList" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="incrementViewCount" > 

<graphx>130</graphx>
<graphy>130</graphy>
<onerror>fail</onerror>
<script>import com.itko.lisa.jdbc.JDBCResultSetCache;&#13;&#10;&#13;&#10;String[] list;&#13;&#10;if (viewList.toString().equals(&quot;&lt;list/&gt;&quot;))&#13;&#10; testExec.setNextNode(&quot;initAliasCount&quot;);&#13;&#10;else {&#13;&#10; list = viewList.toString().split(&quot;&lt;/string&gt;\n  &lt;/list&gt;\n  &lt;list&gt;\n    &lt;string&gt;&quot;);&#13;&#10; list[0] = list[0].replaceFirst(&quot;&lt;list&gt;\n  &lt;list&gt;\n    &lt;string&gt;&quot;, &quot;&quot;);&#13;&#10; list[list.length-1] = list[list.length-1].replaceFirst(&quot;&lt;/string&gt;\n  &lt;/list&gt;\n&lt;/list&gt;&quot;, &quot;&quot;);&#13;&#10;}&#13;&#10;return list;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getViewList.rsp</valueToFilterKey>
      <prop>viewArray</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>getTableList has thrown uncaught exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="incrementViewCount" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="dropView" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>&#13;&#10;testExec.setStateValue(&quot;viewCount&quot;, viewCount+1);&#13;&#10;return viewArray[testExec.getStateValue(&quot;viewCount&quot;)];</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.incrementViewCount.rsp</valueToFilterKey>
      <prop>viewToDrop</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="dropView" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="incrementViewCount" > 

<graphx>484</graphx>
<graphy>58</graphy>
<Documentation>Drop one View and increase the viewCount by one, then loop over.</Documentation>
<remoteServer>local</remoteServer>
<driver>com.ibm.db2.jcc.DB2Driver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:db2://{{hostname}}:{{port}}/{{database}}</connect>
<user>{{sysuser}}</user>
<password>{{syspassword}}</password>
<onSQLError>continue</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>drop view {{=schema.toUpperCase()}}.{{viewToDrop}} </sql>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert92" type="com.itko.lisa.test.AssertByScript">
<log>Deleted {{=viewCount+1}} view(s)</log>
<then>initAliasCount</then>
<valueToAssertKey></valueToAssertKey>
        <script>// Exit the loop if we reach end of views&#13;&#10;if (viewCount &gt;= viewArray.length-1)&#13;&#10; return true;&#13;&#10;else &#13;&#10; return false;</script>
</CheckResult>

    </Node>


    <Node name="initAliasCount" log="{{aliasCount=-1}}"
          type="com.itko.lisa.test.NoTransNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getAliases" > 

<graphx>125</graphx>
<graphy>58</graphy>
<Documentation>Init alias count variable</Documentation>
    </Node>


    <Node name="getAliases" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getAliasList" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Documentation>Get all the Aliases</Documentation>
<driver>com.ibm.db2.jcc.DB2Driver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:db2://{{hostname}}:{{port}}/{{database}}</connect>
<user>{{sysuser}}</user>
<password>{{syspassword}}</password>
<onSQLError>fail</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>select tabname from syscat.tables where tabschema = &apos;{{=schema.toUpperCase()}}&apos; and tabname not like &apos;SYS%&apos; and TYPE IN (&apos;A&apos;)</sql>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getAliases.rsp</valueToFilterKey>
      <prop>aliasList</prop>
      </Filter>

    </Node>


    <Node name="getAliasList" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="incrementAliasCount" > 

<graphx>130</graphx>
<graphy>130</graphy>
<onerror>fail</onerror>
<script>import com.itko.lisa.jdbc.JDBCResultSetCache;&#13;&#10;&#13;&#10;String[] list;&#13;&#10;if (aliasList.toString().equals(&quot;&lt;list/&gt;&quot;))&#13;&#10; testExec.setNextNode(&quot;initTriggerCount&quot;);&#13;&#10;else {&#13;&#10; list = aliasList.toString().split(&quot;&lt;/string&gt;\n  &lt;/list&gt;\n  &lt;list&gt;\n    &lt;string&gt;&quot;);&#13;&#10; list[0] = list[0].replaceFirst(&quot;&lt;list&gt;\n  &lt;list&gt;\n    &lt;string&gt;&quot;, &quot;&quot;);&#13;&#10; list[list.length-1] = list[list.length-1].replaceFirst(&quot;&lt;/string&gt;\n  &lt;/list&gt;\n&lt;/list&gt;&quot;, &quot;&quot;);&#13;&#10;}&#13;&#10;return list;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getAliasList.rsp</valueToFilterKey>
      <prop>aliasArray</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>getTableList has thrown uncaught exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="incrementAliasCount" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="dropAlias" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>&#13;&#10;testExec.setStateValue(&quot;aliasCount&quot;, aliasCount+1);&#13;&#10;return aliasArray[testExec.getStateValue(&quot;aliasCount&quot;)];</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.incrementAliasCount.rsp</valueToFilterKey>
      <prop>aliasToDrop</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="dropAlias" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="incrementAliasCount" > 

<graphx>484</graphx>
<graphy>58</graphy>
<Documentation>Drop one Alias and increase the aliasCount by one, then loop over.</Documentation>
<driver>com.ibm.db2.jcc.DB2Driver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:db2://{{hostname}}:{{port}}/{{database}}</connect>
<user>{{sysuser}}</user>
<password>{{syspassword}}</password>
<onSQLError>continue</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>drop alias {{=schema.toUpperCase()}}.{{aliasToDrop}} </sql>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert102" type="com.itko.lisa.test.AssertByScript">
<log>Deleted {{=aliasCount+1}} alias(es)</log>
<then>initTriggerCount</then>
<valueToAssertKey></valueToAssertKey>
        <script>// Exit the loop if we reach end of aliases&#13;&#10;if (aliasCount &gt;= aliasArray.length-1)&#13;&#10; return true;&#13;&#10;else &#13;&#10; return false;</script>
</CheckResult>

    </Node>


    <Node name="initTriggerCount" log="{{triggerCount=-1}}"
          type="com.itko.lisa.test.NoTransNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getTriggers" > 

<graphx>125</graphx>
<graphy>58</graphy>
<Documentation>Init trigger count variable</Documentation>
    </Node>


    <Node name="getTriggers" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getTriggerList" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Documentation>Get all the triggers</Documentation>
<driver>com.ibm.db2.jcc.DB2Driver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:db2://{{hostname}}:{{port}}/{{database}}</connect>
<user>{{sysuser}}</user>
<password>{{syspassword}}</password>
<onSQLError>fail</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>select trigname from syscat.triggers where tabschema = &apos;{{=schema.toUpperCase()}}&apos;</sql>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getTriggers.rsp</valueToFilterKey>
      <prop>triggerList</prop>
      </Filter>

    </Node>


    <Node name="getTriggerList" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="incrementTriggerCount" > 

<graphx>130</graphx>
<graphy>130</graphy>
<onerror>fail</onerror>
<script>import com.itko.lisa.jdbc.JDBCResultSetCache;&#13;&#10;&#13;&#10;String[] list;&#13;&#10;if (triggerList.toString().equals(&quot;&lt;list/&gt;&quot;))&#13;&#10; testExec.setNextNode(&quot;initIndexCount&quot;);&#13;&#10;else {&#13;&#10; list = triggerList.toString().split(&quot;&lt;/string&gt;\n  &lt;/list&gt;\n  &lt;list&gt;\n    &lt;string&gt;&quot;);&#13;&#10; list[0] = list[0].replaceFirst(&quot;&lt;list&gt;\n  &lt;list&gt;\n    &lt;string&gt;&quot;, &quot;&quot;);&#13;&#10; list[list.length-1] = list[list.length-1].replaceFirst(&quot;&lt;/string&gt;\n  &lt;/list&gt;\n&lt;/list&gt;&quot;, &quot;&quot;);&#13;&#10;}&#13;&#10;return list;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getTriggerList.rsp</valueToFilterKey>
      <prop>triggerArray</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>getTableList has thrown uncaught exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="incrementTriggerCount" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="dropTrigger" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>&#13;&#10;testExec.setStateValue(&quot;triggerCount&quot;, triggerCount+1);&#13;&#10;return triggerArray[testExec.getStateValue(&quot;triggerCount&quot;)];</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.incrementTriggerCount.rsp</valueToFilterKey>
      <prop>triggerToDrop</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="dropTrigger" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="incrementTriggerCount" > 

<graphx>484</graphx>
<graphy>58</graphy>
<Documentation>Drop one Trigger and increase the triggerCount by one, then loop over.</Documentation>
<driver>com.ibm.db2.jcc.DB2Driver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:db2://{{hostname}}:{{port}}/{{database}}</connect>
<user>{{sysuser}}</user>
<password>{{syspassword}}</password>
<onSQLError>continue</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>drop trigger {{=schema.toUpperCase()}}.{{triggerToDrop}} </sql>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert82" type="com.itko.lisa.test.AssertByScript">
<log>Deleted {{=triggerCount+1}} trigger(s)</log>
<then>initIndexCount</then>
<valueToAssertKey></valueToAssertKey>
        <script>// Exit the loop if we reach end of triggers&#13;&#10;if (triggerCount &gt;= triggerArray.length-1)&#13;&#10; return true;&#13;&#10;else &#13;&#10; return false;</script>
</CheckResult>

    </Node>


    <Node name="initIndexCount" log="{{indexCount=-1}}"
          type="com.itko.lisa.test.NoTransNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getIndexes" > 

<graphx>125</graphx>
<graphy>58</graphy>
<Documentation>Init index count variable</Documentation>
    </Node>


    <Node name="getIndexes" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="getIndexList" > 

<graphx>10</graphx>
<graphy>10</graphy>
<Documentation>Get all the indexes</Documentation>
<driver>com.ibm.db2.jcc.DB2Driver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:db2://{{hostname}}:{{port}}/{{database}}</connect>
<user>{{sysuser}}</user>
<password>{{syspassword}}</password>
<onSQLError>fail</onSQLError>
<resultSet>true</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>select distinct indname from syscat.indexes where tabschema = &apos;{{=schema.toUpperCase()}}&apos; or indschema = &apos;{{=schema.toUpperCase()}}&apos;</sql>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getIndexes.rsp</valueToFilterKey>
      <prop>indexList</prop>
      </Filter>

    </Node>


    <Node name="getIndexList" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="incrementIndexCount" > 

<graphx>130</graphx>
<graphy>130</graphy>
<onerror>fail</onerror>
<script>import com.itko.lisa.jdbc.JDBCResultSetCache;&#13;&#10;&#13;&#10;String[] list;&#13;&#10;if (indexList.toString().equals(&quot;&lt;list/&gt;&quot;))&#13;&#10; testExec.setNextNode(&quot;returnString&quot;);&#13;&#10;else {&#13;&#10; list = indexList.toString().split(&quot;&lt;/string&gt;\n  &lt;/list&gt;\n  &lt;list&gt;\n    &lt;string&gt;&quot;);&#13;&#10; list[0] = list[0].replaceFirst(&quot;&lt;list&gt;\n  &lt;list&gt;\n    &lt;string&gt;&quot;, &quot;&quot;);&#13;&#10; list[list.length-1] = list[list.length-1].replaceFirst(&quot;&lt;/string&gt;\n  &lt;/list&gt;\n&lt;/list&gt;&quot;, &quot;&quot;);&#13;&#10;}&#13;&#10;return list;</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.getIndexList.rsp</valueToFilterKey>
      <prop>indexArray</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>getTableList has thrown uncaught exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="incrementIndexCount" log=""
          type="com.itko.lisa.test.ScriptNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="dropIndex" > 

<graphx>-1</graphx>
<graphy>-1</graphy>
<onerror>fail</onerror>
<script>&#13;&#10;testExec.setStateValue(&quot;indexCount&quot;, indexCount+1);&#13;&#10;return indexArray[testExec.getStateValue(&quot;indexCount&quot;)];</script>

      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.incrementIndexCount.rsp</valueToFilterKey>
      <prop>indexToDrop</prop>
      </Filter>


      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assert [Any Exception Then Fail] fired true of type Assert on Invocation Exception</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

    </Node>


    <Node name="dropIndex" log=""
          type="com.itko.lisa.jdbc.JDBCNode" 
          version="1" 
          think="0-0" 
 useFilters="true" 
 quiet="false" 
          next="incrementIndexCount" > 

<graphx>484</graphx>
<graphy>58</graphy>
<Documentation>Drop one Index and increase the indexCount by one, then loop over.</Documentation>
<driver>com.ibm.db2.jcc.DB2Driver</driver>
<dataSourceConnect>false</dataSourceConnect>
<jndiFactory></jndiFactory>
<jndiServerURL></jndiServerURL>
<jndiDataSourceName></jndiDataSourceName>
<connect>jdbc:db2://{{hostname}}:{{port}}/{{database}}</connect>
<user>{{sysuser}}</user>
<password>{{syspassword}}</password>
<onSQLError>continue</onSQLError>
<resultSet>false</resultSet>
<maxRows>-1</maxRows>
<keepOpen>true</keepOpen>
<sql>drop index {{=schema.toUpperCase()}}.{{indexToDrop}} </sql>

      <!-- Result Elements -->
<CheckResult assertTrue="true" name="Assert82" type="com.itko.lisa.test.AssertByScript">
<log>Deleted {{=indexCount+1}} index(es)</log>
<then>returnString</then>
<valueToAssertKey></valueToAssertKey>
        <script>// Exit the loop if we reach end of indexes&#13;&#10;if (indexCount &gt;= indexArray.length-1)&#13;&#10; return true;&#13;&#10;else &#13;&#10; return false;</script>
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
<script>return &quot;Deleted: \n- &quot; + (tableCount + 1) + &quot; Table(s)\n- &quot; + (viewCount + 1) + &quot; View(s)\n- &quot; + (aliasCount + 1) + &quot; Alias(es)\n- &quot; + (triggerCount + 1) + &quot; Trigger(s)\n- &quot; + (indexCount + 1) + &quot; Index(es)&quot;;</script>
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


</TestCase>
