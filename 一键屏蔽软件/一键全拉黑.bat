@echo off
:: BatchGotAdmin  
:-------------------------------------  
REM  --> Check for permissions  
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"  
  
REM --> If error flag set, we do not have admin.  
if '%errorlevel%' NEQ '0' (  
    echo Requesting administrative privileges...  
    goto UACPrompt  
) else ( goto gotAdmin )  
  
:UACPrompt  
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"  
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"  
  
    "%temp%\getadmin.vbs"  
    exit /B  
  
:gotAdmin  
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )  
    pushd "%CD%"  
    CD /D "%~dp0"  
:--------------------------------------  

@echo on
cd .\全家桶及浏览器
call ~一键拉黑.bat
cd ..
cd .\过期证书
call ~一键拉黑.bat
cd ..
cd .\不受欢迎
call ~一键拉黑.bat
cd ..
cd .\工作无关软件
call ~一键拉黑.bat
cd ..
cd .\证券炒股
call ~一键拉黑.bat
cd ..
cd .\新近收集的
call ~一键拉黑.bat
cd ..
echo All Done!!!
pause

