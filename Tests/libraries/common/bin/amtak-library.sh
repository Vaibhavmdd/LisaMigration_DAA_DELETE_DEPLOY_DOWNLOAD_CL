#!/bin/sh
# Copyright (c) 2008 TIBCO Software Inc. All rights reserved.
# This script is used to integrate with ActiveMatrix Test Automation Kit

if [ -z "$TIBCO_HOME" ]; then
 echo ""
 echo "ERROR: TIBCO_HOME is not set. You will not be able to use the TIBCO Common library for LISA."
 echo "ERROR: Set TIBCO_HOME before proceeding."
 echo ""
 exit 1
fi

if [ -z "$TIBCO_CONFIG_HOME" ]; then
 echo ""
 echo "ERROR: TIBCO_CONFIG_HOME is not set. You will not be able to use the TIBCO Common library for LISA."
 echo "ERROR: Set TIBCO_CONFIG_HOME before proceeding."
 echo ""
 exit 1
fi

if [ -z "$TIBCO_JAVA_HOME" ]; then
 echo ""
 echo "ERROR: TIBCO_JAVA_HOME is not set. You will not be able to use the TIBCO Common library for LISA."
 echo "ERROR: Set TIBCO_JAVA_HOME before proceeding."
 echo ""
 exit 1
fi

if [ -z "$TIBCO_RV_HOME" ]; then
 echo ""
 echo "WARNING: TIBCO_RV_HOME is not set. You will not be able to use RV sub-processes."
 echo ""
fi

if [ -z "$TIBCO_EMS_HOME" ]; then
 echo ""
 echo "WARNING: TIBCO_EMS_HOME is not set. You might not be able to use EMS sub-processes."
 echo ""
fi

if [ -z "$TIBCO_BW_HOME" ]; then
 echo ""
 echo "WARNING: TIBCO_BW_HOME is not set. You will not be able to use BW sub-processes."
 echo ""
fi

TIBCO_COMMON_LIBRARY=$libPath
export TIBCO_COMMON_LIBRARY
LISA_POST_CLASSPATH=$LISA_POST_CLASSPATH:$TIBCO_COMMON_LIBRARY/lib/tibjms.jar:$TIBCO_COMMON_LIBRARY/lib/tibjmsadmin.jar:$TIBCO_COMMON_LIBRARY/lib/tibcrypt.jar:$TIBCO_COMMON_LIBRARY/lib/tibrvj.jar:$TIBCO_COMMON_LIBRARY/lib/tibrvnative.jar:$TIBCO_COMMON_LIBRARY/lib/classes12.zip:$TIBCO_COMMON_LIBRARY/lib/ant.jar:$TIBCO_COMMON_LIBRARY/lib/ant-launcher.jar:$TIBCO_COMMON_LIBRARY/lib/ant-nodeps.jar:$TIBCO_COMMON_LIBRARY/lib/ant-contrib.jar:$TIBCO_COMMON_LIBRARY/lib/sqljdbc4.jar:$TIBCO_COMMON_LIBRARY/lib/postgresql-9.3-1100.jdbc4.jar:$TIBCO_COMMON_LIBRARY/lib/db2jcc4.jar
export LISA_POST_CLASSPATH
LISA_MORE_VM_PROPS="$LISA_MORE_VM_PROPS -DTIBCO_COMMON_LIBRARY=$TIBCO_COMMON_LIBRARY -DTIBCO_HOME=$TIBCO_HOME -DTIBCO_CONFIG_HOME=$TIBCO_CONFIG_HOME -DTIBCO_JAVA_HOME=$TIBCO_JAVA_HOME -DTIBCO_RV_HOME=$TIBCO_RV_HOME -DTIBCO_RV_HOME_2=$TIBCO_RV_HOME_2 -DTIBCO_EMS_HOME=$TIBCO_EMS_HOME -DTIBCO_EMS_CONFIG=$TIBCO_EMS_CONFIG -DTIBCO_BW_HOME=$TIBCO_BW_HOME"
export LISA_MORE_VM_PROPS