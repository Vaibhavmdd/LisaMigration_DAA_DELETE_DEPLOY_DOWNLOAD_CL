@REM Copyright (c) 2007 TIBCO Software Inc. All rights reserved.
@REM This script is used to integrate with ActiveMatrix Test Automation Kit
@echo off

IF "%TIBCO_HOME%A"=="A" GOTO tibwarn
GOTO tibconfcheck

:tibwarn
ECHO.
ECHO ERROR: TIBCO_HOME is not set. You will not be able to use the TIBCO Common library for LISA.
ECHO ERROR: Set TIBCO_HOME before proceeding.
ECHO.
PAUSE
EXIT

:tibconfcheck
IF "%TIBCO_CONFIG_HOME%A"=="A" GOTO tibconfwarn
GOTO javacheck

:tibconfwarn
ECHO.
ECHO ERROR: TIBCO_CONFIG_HOME is not set. You will not be able to use the TIBCO Common library for LISA.
ECHO ERROR: Set TIBCO_CONFIG_HOME before proceeding.
ECHO.
PAUSE
EXIT

:javacheck
IF "%TIBCO_JAVA_HOME%A"=="A" GOTO javawarn
GOTO rvcheck

:javawarn
ECHO.
ECHO ERROR: TIBCO_JAVA_HOME is not set. You will not be able to use the TIBCO Common library for LISA.
ECHO ERROR: Set TIBCO_JAVA_HOME before proceeding.
ECHO.
PAUSE
EXIT

:rvcheck
IF "%TIBCO_RV_HOME%A"=="A" GOTO rvwarn
GOTO emscheck

:rvwarn
ECHO.
ECHO WARNING: TIBCO_RV_HOME is not set. You will not be able to use RV sub-processes.
ECHO.
PAUSE

:emscheck
IF "%TIBCO_EMS_HOME%A"=="A" GOTO emswarn
GOTO bwcheck

:emswarn
ECHO.
ECHO WARNING: TIBCO_EMS_HOME is not set. You might not be able to use EMS sub-processes.
ECHO.
PAUSE

:bwcheck
IF "%TIBCO_BW_HOME%A"=="A" GOTO bwwarn
GOTO validationok

:bwwarn
ECHO.
ECHO WARNING: TIBCO_BW_HOME is not set. You will not be able to use BW sub-processes.
ECHO.
PAUSE

:validationok

SET TIBCO_COMMON_LIBRARY=%~dp0..

SET LISA_POST_CLASSPATH=%LISA_POST_CLASSPATH%;%TIBCO_COMMON_LIBRARY%\lib\tibjms.jar;%TIBCO_COMMON_LIBRARY%\lib\tibjmsadmin.jar;%TIBCO_COMMON_LIBRARY%\lib\tibcrypt.jar;%TIBCO_COMMON_LIBRARY%\lib\tibrvj.jar;%TIBCO_COMMON_LIBRARY%\lib\tibrvnative.jar;%TIBCO_COMMON_LIBRARY%\lib\classes12.zip;%TIBCO_COMMON_LIBRARY%\lib\ant.jar;%TIBCO_COMMON_LIBRARY%\lib\ant-launcher.jar;%TIBCO_COMMON_LIBRARY%\lib\ant-nodeps.jar;%TIBCO_COMMON_LIBRARY%\lib\ant-contrib.jar;%TIBCO_COMMON_LIBRARY%\lib\sqljdbc4.jar;%TIBCO_COMMON_LIBRARY%\lib\db2jcc4.jar;%TIBCO_COMMON_LIBRARY%\lib\postgresql-9.3-1100.jdbc4.jar;

SET LISA_MORE_VM_PROPS=%LISA_MORE_VM_PROPS% -DTIBCO_COMMON_LIBRARY="%TIBCO_COMMON_LIBRARY%" -DTIBCO_HOME="%TIBCO_HOME%" -DTIBCO_CONFIG_HOME="%TIBCO_CONFIG_HOME%" -DTIBCO_JAVA_HOME="%TIBCO_JAVA_HOME%" -DTIBCO_RV_HOME="%TIBCO_RV_HOME%" -DTIBCO_RV_HOME_2="%TIBCO_RV_HOME_2%" -DTIBCO_EMS_HOME="%TIBCO_EMS_HOME%" -DTIBCO_EMS_CONFIG="%TIBCO_EMS_CONFIG%" -DTIBCO_BW_HOME="%TIBCO_BW_HOME%"