@echo off   
echo Tool For Sending Message to logservice and payload Queues.   
:send
java -jar testServiceTool_1.0.0.jar -Xms128M -Xmx256m   
@echo off
set choice=
:input
set /p choice=Please Enter Your Choice(y.Continue n.Exit):
if "%choice%"=="y" goto send
if "%choice%"=="n" exit
echo Input error,Please retry!
goto input
