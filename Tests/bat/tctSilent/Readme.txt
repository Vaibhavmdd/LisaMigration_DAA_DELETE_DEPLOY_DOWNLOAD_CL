ReadMe for TCTSilent

../tests/amsg/3.0/tests/func/runtime/bat/tctSilent has 3 files 

1) build.properties.template - this is a template file from which the 'build.properties' file would be generated for the TCT Silent configuration.

2) tctSilentSetup.tst - this is a test file which includes the setup of the Admin server with TCT in Silent mode. This setup has a step named 'replaceTemplate' which internally calls 'tctsilentauto.tst' test case to replace the properties in 'build.properties.template' with its actaul values from the list of key:value pairs available to create 'build.properties' file.

3) tctSilentSuite.ste - this suite is for the testing purpose and just have one step which call 'tctSilentSetup.tst' test case.