@echo off
echo Executing MaxSoft IntelliAPI Dev BVT API Test Automation Suite.............

cd ..
cd .. 

call mvn test-compile gauge:execute -DspecsDir="specs\Pre Test" -Denv="Dev"
call mvn test-compile gauge:execute -DspecsDir="specs\Data Stores,specs\Other" -Denv="Dev"

call mvn clean -DemailConfigEnv=Dev install exec:java

echo Exit Code = %ERRORLEVEL%
if not "%ERRORLEVEL%" == "0" exit /b
