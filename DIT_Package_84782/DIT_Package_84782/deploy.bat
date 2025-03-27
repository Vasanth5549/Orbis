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
java -jar vclu.jar  --deploy --jmx --username %UNAME% --password %PASSWORD% --address %ADDRESS% --port %PORT% --filename "CustomMessageRouter.vpkg" --conprofilename "CustomMessageRouter.xml" --conprofilepropname "CustomMessageRouter.properties" --maxinstances 2
java -jar vclu.jar  --deploy --jmx --username %UNAME% --password %PASSWORD% --address %ADDRESS% --port %PORT% --filename "ORBISLorenzoConnectionIn.vpkg" --conprofilename "ORBISLorenzoConnectionIn.xml" --conprofilepropname "ORBISLorenzoConnectionIn.properties" --maxinstances 21
java -jar vclu.jar  --deploy --jmx --username %UNAME% --password %PASSWORD% --address %ADDRESS% --port %PORT% --filename "ORBISTransformIn.vpkg" --conprofilename "ORBISTransformIn.xml" --conprofilepropname "ORBISTransformIn.properties" --maxinstances 1
java -jar vclu.jar  --deploy --jmx --username %UNAME% --password %PASSWORD% --address %ADDRESS% --port %PORT% --filename "ORBISTransformOut.vpkg" --conprofilename "ORBISTransformOut.xml" --conprofilepropname "ORBISTransformOut.properties" --maxinstances 1
ENDLOCAL
