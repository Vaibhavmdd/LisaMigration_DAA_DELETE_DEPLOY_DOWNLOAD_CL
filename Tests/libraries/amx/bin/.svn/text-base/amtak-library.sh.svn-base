#!/bin/sh
# Copyright (c) 2008 TIBCO Software Inc. All rights reserved.
# This script is used to integrate with ActiveMatrix Test Automation Kit

if [ -z "$TIBCO_HOME" ]; then
 echo ""
 echo "ERROR: TIBCO_HOME is not set. You will not be able to use the ActiveMatrix library for LISA."
 echo "ERROR: Set TIBCO_HOME before proceeding."
 echo ""
 exit 1
fi

if [ -z "$TIBCO_JAVA_HOME" ]; then
 echo ""
 echo "ERROR: TIBCO_JAVA_HOME is not set. You will not be able to use the ActiveMatrix library for LISA."
 echo "ERROR: Set TIBCO_JAVA_HOME before proceeding."
 echo ""
 exit 1
fi

if [ -z "$TIBCO_AMX_HOME" ]; then
 echo ""
 echo "WARNING: TIBCO_AMX_HOME is not set. You will not be able to use the ActiveMatrix library for LISA."
 echo ""
fi

if [ -z "$TIBCO_AMXADMIN_HOME" ]; then
 echo ""
 echo "WARNING: TIBCO_AMXADMIN_HOME is not set. You will not be able to use the AMX-Admin-related sub-processes."
 echo ""
fi

if [ -z "$TIBCO_AMXADMIN_CONFIG" ]; then
 echo ""
 echo "WARNING: TIBCO_AMXADMIN_CONFIG is not set. You will not be able to use the AMX-Admin-related sub-processes."
 echo ""
fi

if [ -z "$TIBCO_HOST_HOME" ]; then
 echo ""
 echo "WARNING: TIBCO_HOST_HOME is not set. You will not be able to use the ActiveMatrix library for LISA."
 echo ""
fi

if [ -z "$TIBCO_HOST_CONFIG" ]; then
 echo ""
 echo "WARNING: TIBCO_HOST_CONFIG is not set. You will not be able to use the ActiveMatrix library for LISA."
 echo ""
fi

if [ -z "$TIBCO_BS_HOME" ]; then
 echo ""
 echo "WARNING: TIBCO_BS_HOME (Business Studio Home) is not set. You will not be able to use Business-Studio-related sub-processes."
 echo ""
fi

TIBCO_AMX_LIBRARY=$libPath
export TIBCO_AMX_LIBRARY
LISA_MORE_VM_PROPS="$LISA_MORE_VM_PROPS -DTIBCO_AMX_LIBRARY=$TIBCO_AMX_LIBRARY -DTIBCO_AMX_HOME=$TIBCO_AMX_HOME -DTIBCO_AMXADMIN_HOME=$TIBCO_AMXADMIN_HOME -DTIBCO_AMXADMIN_CONFIG=$TIBCO_AMXADMIN_CONFIG -DTIBCO_HOST_HOME=$TIBCO_HOST_HOME -DTIBCO_HOST_CONFIG=$TIBCO_HOST_CONFIG -DTIBCO_AMX_IT_MED_HOME=$TIBCO_AMX_IT_MED_HOME -DTIBCO_AMX_IT_CPP_HOME=$TIBCO_AMX_IT_CPP_HOME -DTIBCO_BS_HOME=$TIBCO_BS_HOME -DTIBCO_AMX_BT_ADAPTER_HOME=$TIBCO_AMX_BT_ADAPTER_HOME -DTIBCO_AMX_BT_EJB_HOME=$TIBCO_AMX_BT_EJB_HOME"
export LISA_MORE_VM_PROPS
LISA_POST_CLASSPATH=$LISA_POST_CLASSPATH:$TIBCO_AMX_LIBRARY/lib/jmxremote_optional.jar
export LISA_POST_CLASSPATH