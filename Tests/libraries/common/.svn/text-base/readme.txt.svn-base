======================================================================
README for TIBCO Common Library for LISA

Product Name	: TIBCO Common Library for LISA
Release Version	: 1.3.0
Release Date	: November 2008

======================================================================
Introduction

	TIBCO Common library is a set of useful LISA sub-processes 
	intended to be utilized in LISA test cases.

======================================================================
Software Requirements

	iTKO LISA 3.x, 4.x

======================================================================
Documentation 
  
	see /doc folder

======================================================================
New Features in 1.3.0 (this release)

- new sub-process com.tibco.lisa.install.Install.tst: Install any TIBCO product
  based on TIBCO Universal Installer
- new sub-process com.tibco.lisa.mail.Send.tst: Send an email
- new sub-process com.tibco.lisa.util.ExtractZipArchive.tst: Extract a zip file

======================================================================
New Features in 1.2.0 (February 2008)

- TIBCO Common Library is now compatible with TIBCO ActiveMatrix Test Automation Kit
- EMS sub-processes: we can now override the default TIBCO_EMS_HOME property
- RV sub-processes: we can now override the default TIBCO_RV_HOME property
- BW sub-processes: we can now override the default TIBCO_BW_HOME property
- new sub-process com.tibco.lisa.util.IsLISARunning.tst
- new sub-process com.tibco.lisa.bw.JMXStopEngine.tst
- new sub-process com.tibco.lisa.bw.JMXListOp.tst
- new sub-process com.tibco.lisa.ems.ExecuteEMSCommand.tst
- new sub-process com.tibco.lisa.file.ReplaceInFile.tst

======================================================================
New Features in 1.1.0 (July 2007)

- Added com.tibco.lisa.file.readFile.tst and com.tibco.lisa.file.writeFile.tst
- Removed shipped Oracle Thin Driver jar

======================================================================
Defects fixed in 1.0.1 (July 2007)

1-89D8ZD: KillProcessByName and KillProcessByPID have wrong baseDir.
          Should be {{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/util 
          instead of {{TIBCO_COMMON_LIBRARY}}/com/tibco/lisa/matrix/util

======================================================================
Installation
	1) Extract the zip archive at the location where your LISA 
	libraries reside.

	2) The following properties must be defined and passed to LISA 
	as LISA_MORE_VM_PROPS:
 
	TIBCO_COMMON_LIBRARY
	TIBCO_RV_HOME
	TIBCO_JAVA_HOME
	TIBCO_RV_HOME
	TIBCO_EMS_HOME
	TIBCO_BW_HOME

	For instance:
	SET TIBCO_COMMON_LIBRARY=C:\tibcoproduct\tests\libraries
	SET LISA_MORE_VM_PROPS=%LISA_MORE_VM_PROPS% -DTIBCO_COMMON_LIBRARY=%TIBCO_COMMON_LIBRARY%

 	3) Download the Oracle Thin Driver and copy it to <TIBCO_COMMON_LIBRARY>\lib
  	This is needed if you intend to use Oracle-related sub-processes.

	4) LISA_POST_CLASSPATH property must be modified as followed:
	SET LISA_POST_CLASSPATH=%LISA_POST_CLASSPATH%;%TIBCO_EMS_HOME%\clients\java\tibjms.jar;%TIBCO_EMS_HOME%\lib\tibjms.jar;
 	%TIBCO_EMS_HOME%\clients\java\tibjmsadmin.jar;%TIBCO_EMS_HOME%\lib\tibjmsadmin.jar;
	%TIBCO_RV_HOME%\lib\tibrvj.jar;%TIBCO_RV_HOME%\lib\tibrvnative.jar;%TIBCO_COMMON_LIBRARY%\lib\classes12.zip

======================================================================
Copyright

Copyright (C) 2000-2008 TIBCO Software Inc. ALL RIGHTS RESERVED.
TIBCO Software Inc. Confidential Information