:: Replace set variable to your environment.
@echo off
SETLOCAL
echo Enter the username to connect runtime:
set /p UNAME=""
echo Enter the password to connect runtime:
set /p PASSWORD=""
IF "%UNAME%"=="" set result=true
IF "%PASSWORD%"=="" set result=true
IF "%result%"=="true" (
echo The mandatory Username or Password parameters for Runtime is not available. Cannot proceed with process deployment
 )
set ADDRESS="localhost"
set PORT="1617"

java -jar vclu.jar  --undeploy --jmx --username %UNAME% --password %PASSWORD% --address %ADDRESS% --port %PORT% --processname CustomMessageRouter

java -jar vclu.jar  --undeploy --jmx --username %UNAME% --password %PASSWORD% --address %ADDRESS% --port %PORT% --processname ORBISTransformOut

java -jar vclu.jar  --undeploy --jmx --username %UNAME% --password %PASSWORD% --address %ADDRESS% --port %PORT% --processname ORBISLorenzoConnectionIn

java -jar vclu.jar  --undeploy --jmx --username %UNAME% --password %PASSWORD% --address %ADDRESS% --port %PORT% --processname ORBISTransformIn
ENDLOCAL
