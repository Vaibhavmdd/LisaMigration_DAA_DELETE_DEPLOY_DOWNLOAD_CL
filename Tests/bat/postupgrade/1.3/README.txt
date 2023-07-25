Steps to run test artifact:
===========================

Assmption: You have DevEnvironment and DevNode running.

1. Unzip file to one of the folder.

2. Enable Trace level logging for com.tibco.amx.cf

3. Run ant -f amxbuild.xml -DTIBCO_AMXADMIN_HOME=<C:\tibco\matrix\320-v64\administrator\3.2> -DremotePropsFile=remote_props.properties setup
   Provide proper value for 'TIBCO_AMXADMIN_HOME'
   'Setup' target - create RT, installs RI, deploys mock IT 1.0 and mock app 1.0. Undeploys mock app (that leads mock app to go in PFU) and than upgrade mock It to 1.1
   In 3.2 - after setup that state of mock app is - interrupted Preparing to undeploy.
   
4. Run ant -f amxbuild.xml -DTIBCO_AMXADMIN_HOME=<C:\tibco\matrix\320-v64\administrator\3.2> -DremotePropsFile=remote_props.properties start
   Provide proper value for 'TIBCO_AMXADMIN_HOME'
   'Start' - starts the mock app
   In 3.2 - after setup that state of mock app is - Undeployed
   Note: You will see following message in DevNode log
   "04 Oct 2012 13:55:57,873 [ComponentFrameworkTask] [TRACE] [] com.tibco.amx.cf.logger.lifecycle.internal.component.statemachine.ComponentStateMachine - Processing event Type=START Mode=NO_CONFIGURE Scope=null AdminToken=945 CustomStatus=null CustomStatusDetail=null from state STOPPED for component urn:amx:DevEnvironment/mock-app/MockIT1_1.0.0."
   
5. To cleanup and re-run execute following target
   Run ant -f amxbuild.xml -DTIBCO_AMXADMIN_HOME=<C:\tibco\matrix\320-v64\administrator\3.2> -DremotePropsFile=remote_props.properties cleanup
   Provide proper value for 'TIBCO_AMXADMIN_HOME'