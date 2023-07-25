@REM Copyright (c) 2007 TIBCO Software Inc. All rights reserved.
@REM This script is used to integrate with ActiveMatrix Test Automation Kit
@echo off

IF "%TIBCO_HOME%A"=="A" GOTO tibwarn
GOTO javacheck

:tibwarn
ECHO.
ECHO ERROR: TIBCO_HOME is not set. You will not be able to use the ActiveMatrix library for LISA.
ECHO ERROR: Set TIBCO_HOME before proceeding.
ECHO.
PAUSE
EXIT

:javacheck
IF "%TIBCO_JAVA_HOME%A"=="A" GOTO javawarn
GOTO amxcheck

:javawarn
ECHO.
ECHO ERROR: TIBCO_JAVA_HOME is not set. You will not be able to use the ActiveMatrix library for LISA.
ECHO ERROR: Set TIBCO_JAVA_HOME before proceeding.
ECHO.
PAUSE
EXIT

:amxcheck
IF "%TIBCO_AMX_HOME%A"=="A" GOTO amxwarn
GOTO amxadmincheck

:amxwarn
ECHO.
ECHO WARNING: TIBCO_AMX_HOME is not set. You will not be able to use the ActiveMatrix library for LISA.
ECHO.
PAUSE

:amxadmincheck
IF "%TIBCO_AMXADMIN_HOME%A"=="A" GOTO amxadminwarn
GOTO amxadminconfigcheck

:amxadminwarn
ECHO.
ECHO WARNING: TIBCO_AMXADMIN_HOME is not set. You will not be able to use the ActiveMatrix library for LISA.
ECHO.
PAUSE

:amxadminconfigcheck
IF "%TIBCO_AMXADMIN_CONFIG%A"=="A" GOTO amxadminconfigwarn
GOTO bscheck

:amxadminconfigwarn
ECHO.
ECHO WARNING: TIBCO_AMXADMIN_CONFIG is not set. You will not be able to use the ActiveMatrix library for LISA.
ECHO.
PAUSE

:bscheck
IF "%TIBCO_BS_HOME%A"=="A" GOTO bswarn
GOTO tibcohostcheck

:bswarn
ECHO.
ECHO WARNING: TIBCO_BS_HOME (Business Studio Home) is not set. You will not be able to use Business-Studio-related sub-processes.
ECHO.
PAUSE

:tibcohostcheck
IF "%TIBCO_HOST_HOME%A"=="A" GOTO tibcohostwarn
GOTO tibcohostconfigcheck

:tibcohostwarn
ECHO.
ECHO WARNING: TIBCO_HOST_HOME is not set. You will not be able to use the ActiveMatrix library for LISA.
ECHO.
PAUSE

:tibcohostconfigcheck
IF "%TIBCO_HOST_CONFIG%A"=="A" GOTO tibcohostconfigwarn
GOTO validationok

:tibcohostconfigwarn
ECHO.
ECHO WARNING: TIBCO_HOST_CONFIG is not set. You will not be able to use the ActiveMatrix library for LISA.
ECHO.
PAUSE


:validationok

SET TIBCO_AMX_LIBRARY=%~dp0..

SET LISA_MORE_VM_PROPS=%LISA_MORE_VM_PROPS% -DTIBCO_AMX_LIBRARY="%TIBCO_AMX_LIBRARY%" -DTIBCO_AMX_HOME="%TIBCO_AMX_HOME%" -DTIBCO_AMXADMIN_HOME="%TIBCO_AMXADMIN_HOME%" -DTIBCO_AMXADMIN_CONFIG="%TIBCO_AMXADMIN_CONFIG%" -DTIBCO_HOST_HOME="%TIBCO_HOST_HOME%" -DTIBCO_HOST_CONFIG="%TIBCO_HOST_CONFIG%" -DTIBCO_AMX_IT_MED_HOME="%TIBCO_AMX_IT_MED_HOME%" -DTIBCO_AMX_IT_CPP_HOME="%TIBCO_AMX_IT_CPP_HOME%" -DTIBCO_AMX_BT_ADAPTER_HOME="%TIBCO_AMX_BT_ADAPTER_HOME%" -DTIBCO_AMX_BT_EJB_HOME="%TIBCO_AMX_BT_EJB_HOME%" -DTIBCO_BS_HOME="%TIBCO_BS_HOME%" -DTIBCO_SDS_HOME="%TIBCO_SDS_HOME%" -DSDS_ZIP_BUILD_LOC="%SDS_ZIP_BUILD_LOC%" -DSDS_ZIP_DEST="%SDS_ZIP_DEST%" -DSDS_EXE="%SDS_EXE%"
SET LISA_POST_CLASSPATH=%LISA_POST_CLASSPATH%;%TIBCO_AMX_LIBRARY%\lib\jmxremote_optional.jar