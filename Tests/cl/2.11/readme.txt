Description :  

ClearText File Appender Pattern Layout define by CLI.
That layout can be used to show the content of LoggerRepositoryEx properties using %R similar to the %X for MDC properties.
see more for http://wiki.tibco.com:8008/DataIntWiki/logging/Enrichment_3.0

%d{dd MMM yyyy HH:mm:ss,SSS} [%t] [%-5p]
[%R{_cl.physicalCompId.scheme}]
[%R{_cl.physicalCompId.matrix.env}]
[%R{_cl.physicalCompId.matrix.host}]
[%R{_cl.physicalCompId.matrix.node}]
[%R{_cl.physicalCompId.matrix.typeadapter}]
[%R{_cl.logicalCompId.scheme}]
[%R{_cl.logicalCompId.matrix.application}]
[%R{_cl.logicalCompId.matrix.component}]
[%R{_cl.logicalCompId.matrix.component.version}]
[%R{_cl.logicalCompId.matrix.component.revision}]
[%X{_cl.correlationId}]
[%X{_cl.conversationId}]
[%X{_cl.contextId}]
[%X{_cl.parentContextId}]
[%X{_cl.logicalCompId.matrix.service}]
[%X{_cl.logicalCompId.matrix.reference}]
[%X{_cl.logicalCompId.matrix.operation}]
[%X{_cl.securityPrincipal}] %c - %m%n

Configure this file appender to a QAnode and check its logging configuration file " node-log4j.xml "


Result with Oracle 11g,2012 Sep 18

"[AMXAdminTask]  INFO - Processing 1 objects
[AMXAdminTask] ERROR - SQL State[72000], Error code[12,899], Message[ORA-12899: value too large for column "CLQA1"."SUBSTITUTABLEOBJECT"."PATTERNLAYOUT" (actual: 694, maximum: 255)
[AMXAdminTask] ], SQL State[72000], Error code[12,899], Message[ORA-12899: value too large for column "CLQA1"."SUBSTITUTABLEOBJECT"."PATTERNLAYOUT" (actual: 694, maximum: 255)
[AMXAdminTask] ]
[AMXAdminTask] ERROR - 9/18/12 1:49 PM - Error invoking action add on FileLogAppender: Could not execute JDBC batch update, Caused by: TIBCO-AMX-ADMIN-005428: JDBC driver reported a database error [ORA-12899: value too large for column "CLQA1"."SUBSTITUTABLEOBJECT"."PATTERNLAYOUT" (actual: 694, maximum: 255)
[AMXAdminTask] ]"
