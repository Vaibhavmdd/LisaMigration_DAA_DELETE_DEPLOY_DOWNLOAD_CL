@ECHO off
@SET TIBCO_AMTAK_HOME=Y:\tests\amsg\3.0
PUSHD %TIBCO_AMTAK_HOME%\bin
REM @START "LISA TestRunner" /D %TIBCO_AMTAK_HOME%\bin /WAIT CMD /C TestRunner.bat -u serge -r %TIBCO_AMTAK_HOME%\tests\func\runtime\bat\stability\stability.stg -t %TIBCO_AMTAK_HOME%\tests\func\runtime\bat\install\install2.tst -config %TIBCO_AMTAK_HOME%\tests\func\runtime\bat\stability\1machine_2node.config -a
REM @START "LISA TestRunner" /D %TIBCO_AMTAK_HOME%\bin /WAIT CMD /C TestRunner.bat -u serge -r %TIBCO_AMTAK_HOME%\tests\func\runtime\bat\stability\stability.stg -t %TIBCO_AMTAK_HOME%\tests\func\runtime\bat\setup\setup.tst -config %TIBCO_AMTAK_HOME%\tests\func\runtime\bat\stability\1machine_2node.config -a
FOR /L %%i IN (1,1,10) DO (
	@ECHO Starting Iteration %%i
	@ECHO Copying Config file...
	@COPY %TIBCO_AMTAK_HOME%\tests\func\runtime\bat\stability\1machine_2node.config %TIBCO_AMTAK_HOME%\tests\func\runtime\bat\stability\1machine_2node_%%i.config
	@START "LISA TestRunner" /D %TIBCO_AMTAK_HOME%\bin /WAIT CMD /C TestRunner.bat -u serge -s %TIBCO_AMTAK_HOME%\tests\func\runtime\bat\stability\amsg.ste -config %TIBCO_AMTAK_HOME%\tests\func\runtime\bat\stability\1machine_2node_%%i.config -a
	@ECHO Completed Iteration %%i
	@ECHO.
)
POPD