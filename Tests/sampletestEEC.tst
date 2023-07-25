<?xml version="1.0" ?>

<TestCase name="sampletestEEC" version="5">

<meta>
   <create version="10.7.2" buildNumber="10.7.2.176" author="admin" date="12/15/2022" host="na2devasgaks01" />
   <lastEdited version="10.7.2" buildNumber="10.7.2.176.hf33" author="admin" date="04/11/2023" host="na2devasgaks01" />
</meta>

<id>53FA31167D0411ED9649506B8D8BDEB5</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC43LjIgKDEwLjcuMi4xNzYuaGYzMykmbm9kZXM9MjEyNzMyOTU1NQ==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Command C:/AMX/AMX342ver4/tibcojre64/11/bin/java" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="5F7160067D0411ED9649506B8D8BDEB5" 
          think="30S-60S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<cmd>C:\AMX\AMX342ver4\Config1\tibcohost\Admin-AMXAdmin-admin1\host\bin\tibcohost  --propFile &quot;C:/AMX/AMX342ver4/Config1/tibcohost/Admin-AMXAdmin-admin1/host/bin/tibcohost.tra&quot; start -clearCache</cmd>
<basedir>C:\AMX\AMX342ver4\Config1\tibcohost\Admin-AMXAdmin-admin1\host\bin</basedir>
<toNode>continue (quiet)</toNode>
<exceptionNode>continue (quiet)</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>false</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="53FA31187D0411ED9649506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="53FA311A7D0411ED9649506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="53FA311C7D0411ED9649506B8D8BDEB5" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
