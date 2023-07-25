###########=====important!!!!!!!!!========
Please make sure that EJBBT is installed on top of AMSG/AMSB.(We should add on step to install.tst about installing EJBBT before running setup.tst)

=================================================
Please define two properities for EJBBT in ../1machine_2node.config( so that I can use the late binding property EjbReferenceBindingContextURL with the two variables.)
JBOSSServerForEJBBT=192.168.67.94
JBOSSPortForEJBBT=1099

===============================================================
Make sure JBOSS5.0.1 is running on $JBOSSServerForEJBBT(like 192.168.67.94)

1. Deploy the dependencies/EJBClientJAR_JBoss5.0.1/credit-ejb3.3.0.0.jar on the AppServer.($JOBSS_HOME is the location where JBboss5.0.1 is installed)
   TO DO : COPY credit-ejb3.3.0.0.jar to  $JBOSS_HOME/server/default/deploy 
2. Modify the line of run.bat, add "-b 192.168.67.94" to the following line.(Remote access for JBOSS4.x,please use Your IP which is defined by $JBOSSServerForEJBBT )
	"%JAVA%" %JAVA_OPTS% "-Djava.endorsed.dirs=%JBOSS_ENDORSED_DIRS%" -classpath "%JBOSS_CLASSPATH%" org.jboss.Main %* -b 192.168.67.94
3. Exce run.bat, and then the JBoss5.0.1 is running.
4. Please Make sure that EJB Server is runnint via http://$JBOSSServerForEJBBT:8080/web-console/


==================================================
Case description
1.Deploy EJBBT application.
2.Deploy Vendor jar DAA from a custom feature, provision the third-party feature.
3.Deploy the Application
4.Invoke the Service and compare the response with expected values.
5.Undploy Applications




