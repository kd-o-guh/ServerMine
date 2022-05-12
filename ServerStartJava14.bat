@echo off

call settings.bat

REM Set the Java to use. User's are able to set a direct path to use in the settings file. (Advanced Option)
echo Checking Java
if "%JAVA_JAR%" == "" (
	set JAVA_INSTALL=java
) else (		
	set JAVA_INSTALL="%JAVA_JAR%"
	echo User Set Java: %JAVA_JAR%
)

:check_java
%JAVA_INSTALL% -version 1>nul 2>nul || (
   echo Java is not installed.
   pause
   exit /b 2
)
if "%JAVA_JAR%" == "" (
	for /f "tokens=3" %%g in ('java -version 2^>^&1 ^| findstr /i "version"') do (
		set JAVA_VER=%%g
		echo Java Installed: %%g
	)
)
echo Java Installed: %JAVA_VER%
echo "Warning! This script is intended to be used with Java 14. Please ensure that Java 14 is noted above as the installed version."
pause

:start_server
echo Starting SkyFactory One Server...
%JAVA_INSTALL% -server -Xms%MIN_RAM% -Xmx%MAX_RAM% -jar %SERVER_JAR% nogui
pause
exit /B

goto check_java 
goto start_server