@echo off
setlocal
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
cls
set apps[0]=cmder 
set apps[1]=velocity 
set apps[2]=code-notes 
set apps[3]=git
set apps[4]=github-desktop 
set apps[5]=nodejs  
set apps[6]=vscode 
set apps[7]=python 
set apps[8]=pycharm-community 
set apps[9]=httrack 
set apps[10]=googler 
set apps[11]=androidstudio 
set apps[12]=franz 
set apps[13]=postman 
set apps[14]=bitnami-xampp 
set apps[15]=mysql.workbench 
set apps[16]=mongodb 
set apps[17]=docker-cli 
set apps[18]=jdk8 
set apps[19]=composer 
set apps[20]=notepadplusplus 
set apps[21]=vlc 
set apps[22]=skype 
set apps[23]=deluge 
set apps[24]=discord 
set apps[25]=dropbox 
set apps[26]=irfanview 
set apps[27]=googlechrome 
set apps[28]=slack 
set apps[29]=firefox
set apps[30]=cmake
set apps[31]=opera
set apps[32]=arduino
set apps[33]=codelite
set apps[34]=flutter
set apps[35]=youtube-dl
set apps[36]=golang
set apps[37]=filezilla
set apps[38]=postgresql
set apps[39]=pgadmin4
set apps[40]=evernote
set apps[41]=cygwin
set apps[42]=ramme
set apps[43]=screenpresso
set apps[44]=awscli
set apps[45]=heroku-cli
set apps[46]=mingw
set apps[47]=mailspring
set apps[48]=zoom
set apps[49]=openssl
set apps[50]=gravitdesigner
set apps[51]=wget
set apps[52]=virtualbox
set apps[53]=wireshark
set apps[54]=vim
set apps[55]=docker-desktop
set apps[56]=far
set apps[57]=mpc-hc
set apps[58]=evernote
set apps[59]=sqlite-studio.portable
set apps[60]=ngrok
set apps[61]=okular
set apps[62]=nomacs
set apps[63]=ffmpeg
set apps[64]=dbeaver
set apps[65]=boostnote
set apps[66]=cherrytree
set apps[67]=webp
set apps[68]=drawio
set apps[69]=licecap
set len=70
set npm[0]=create-react-app 
set npm[1]=foundation-cli 
set npm[2]=@angular/cli 
set npm[3]=@vue/cli
set npm[4]=ionic 
set npm[5]=netlify-cli
set npm[6]=electron
set npm[7]=localtunnel
set npm[8]=fkill-cli 
set npm[9]=now
set npm[10]=typescript
set npm[11]=sass
set nem=12
echo.
call :ColorText 1a " Welcome To Dev Setup Installer - (c)Banky 2019 "
echo.
echo  __________________________________________
echo. 
echo  This Script will help you quickly install the following on your Computer:
echo.
call :ColorText 0b "  Applications"
echo.
echo  -------------------
echo  Choco, Cmder, Velocity, Codenotes, python, pycharm-community, androidstudio
echo  firefox, googler, cygwin, httrack, git, github-desktop, nodejs, vscode, postman, bitnami-xampp,
echo  mysql.workbench, mongodb, docker-cli, jdk8, composer, notepadplusplus, vlc,
echo  skype, deluge, discord, dropbox, irfanview, googlechrome, slack, franz, cmake,
echo  opera, arduino, codelite, flutter, youtube-dl, golang, filezilla, postgresql
echo  pgadmin3, evernote, ramme, tusk.
echo.
call :ColorText 0b "  NPM Packages"
REM call :ColorText 4b "  NPM Packages"
echo.
echo  -------------------
echo  create-react-app, foundation-cli, @angular/cli, @vue/cli, ionic, netlify-cli, electron
echo  localtunnel, fkill, now, typescript, sass
echo. 
echo  You can choose to Install Everything at once, or Pick which to install/Skip. 
echo.
call :ColorText 0c "  NOTE - Installations require an internet Connection. "
echo. 
echo  If you do not have Choco or NodeJS perviously installed, just run this script twice.  
echo  If you're unfamiliar with any of these packages you can choose to view their descriptions
echo  or visit their urls, or do a google search, in your browser.
echo.   
echo  Press Ctrl+C to Cancel or
pause
:repeat
cls 
echo.
call :ColorText 0a "  How would you like to proceed with the installation (chose one) - "
echo.
echo   _______________________________________________________________
echo. 
call :ColorText 0b "  [1] Express Install " 
echo   - Just go ahead and install everything
call :ColorText 0b "  [2] One by one "
echo   - Let me decide which to install and which to skip
REM call :ColorText 0b "  [3] Npm Packages only "
REM echo   - Express Install
call :ColorText 0b "  [3] Npm Packages only "
echo   - One by one
call :ColorText 0b "  [4] View details "
echo   - Descriptions and urls of Apps and NPM packages
call :ColorText 0b "  [5] List Installed Apps" 
echo.
call :ColorText 0b "  [6] Close Dev Setup "
echo.
echo. 
set /p input="Please Select an option from the list above: "

if %input%==1 GOTO optionone
if %input%==2 GOTO optiontwo
REM if %input%==3 GOTO optionthree
if %input%==3 GOTO optionfour
if %input%==4 GOTO description
if %input%==5 GOTO listinstalled
if %input%==6 GOTO conclusion
echo.
echo You haven't entered a valid option. Ctrl+C to cancel or Enter to try again
pause
GOTO conclusion
:installchoco
cls
echo    It appears you do not have choco installed on this system
echo.
pause
echo.
echo    Installing Choco now... Please Rerun this script once choco is done installing
echo.
SET DIR=%~dp0%
::download install.ps1
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "((new-object net.webclient).DownloadFile('https://chocolatey.org/install.ps1','%DIR%install.ps1'))"
::run installer
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%DIR%install.ps1' %*"
IF .==. GOTO conclusion
:optionone
  echo.
  echo You have Selected Option [1] Express Install (Install Everything)
  echo.
  pause
  echo.
  IF EXIST C:\ProgramData\chocolatey\choco.exe (echo Choco is installed) ELSE (GOTO installchoco) 
  echo.
  set /a i=0
  :firstloop
  IF %i% equ %len% GOTO endfirstloop 
  for /f "usebackq delims== tokens=2" %%j in (`set apps[%i%]`) do ( 
  echo.
  choco install %%j --confirm  
  echo. 
  )
  set /a i+=1 
  GOTO firstloop
  :endfirstloop
  IF EXIST "C:\Program Files\nodejs\node.exe" (echo NodeJS is installed) ELSE (choco install nodejs --confirm) 
  set /a a=0
  :npmone
  IF %a% equ %nem% GOTO endnpmone 
  for /f "usebackq delims== tokens=2" %%b in (`set npm[%a%]`) do ( 
  echo.
  npm install -g %%b --silent  
  echo. 
  )
  set /a a+=1 
  GOTO npmone
  :endnpmone
  GOTO conclusion
:optiontwo
  echo.
  echo You have Selected Option [2] One by One Install (Choose or skip)
  echo.
  pause
  echo.
  IF EXIST C:\ProgramData\chocolatey\choco.exe (echo Choco is installed) ELSE (GOTO installchoco) 
  echo.
  echo.
  set /a i=0
:secondloop
:secondloop
  IF %i% equ %len% GOTO endsecondloop 
  for /f "usebackq delims== tokens=2" %%j in (`set apps[%i%]`) do (
  cls 
  echo The next application to be installed is %%j  - %i% out of %len% apps
  echo.  
  set /p choice="Install %%j ? (1)Install (2)Skip (3)Return to Menu: "
  echo.
  IF !choice!==1 (choco Install %%j --confirm)
  IF !choice!==2 (echo Skipping %%j)
  IF !choice!==3 (GOTO repeat)
  echo.
  )
  set /a i+=1 
  IF %i% LSS %len% GOTO secondloop
  :endsecondloop
  IF EXIST "C:\Program Files\nodejs\node.exe" (echo NodeJS is installed) ELSE (choco install nodejs --confirm)
  set /a a=0
  :npmtwo
  IF %a% equ %nem% GOTO endfirstloop 
  for /f "usebackq delims== tokens=2" %%b in (`set npm[%a%]`) do (
  cls 
  echo The next Npm package to be installed is %%b - %a% out of %nem% NPM Packages
  echo.  
  set /p npmchoice="Install %%b ? (1)Install (2)Skip (3)Return to Menu: "
  echo.
  IF !npmchoice!==1 (npm install -g %%b --silent)
  IF !npmchoice!==2 (echo Skipping %%b)
  IF !npmchoice!==3 (GOTO repeat)
  echo.
  )
  set /a a+=1 
  IF %a% LSS %nem% GOTO npmtwo
  GOTO conclusion
:optionthree
  echo.
  echo You have Selected Option [3] Install NPM Packages globally (Express Install)
  echo.
  IF EXIST C:\ProgramData\chocolatey\choco.exe (echo Choco is installed) ELSE (GOTO installchoco) 
  echo.
  IF EXIST "C:\Program Files\nodejs\node.exe" (echo NodeJS is installed) ELSE (choco install nodejs --confirm)
  echo.
  set i=0
  :thirdloop
  IF %i% equ %nem% GOTO endthirdloop 
  for /f "usebackq delims== tokens=2" %%j in (`set npm[%i%]`) do ( 
  npm install -g %%j --silent  
  )
  set /a i+=1 
  GOTO thirdloop
  :endthirdloop
  GOTO conclusion
:optionfour
  echo.
  echo You have Selected Option [3] => Install NPM Packages globally (One by One Install - Chose or Skip)
  echo.
  IF EXIST C:\ProgramData\chocolatey\choco.exe (echo Choco is installed) ELSE (GOTO installchoco) 
  echo.
  set /a a=0
  :npmfour
  IF EXIST "C:\Program Files\nodejs\node.exe" (echo NodeJS is installed) ELSE (choco install nodejs --confirm)
  IF %a% equ %nem% GOTO endnpmfour 
  for /f "usebackq delims== tokens=2" %%b in (`set npm[%a%]`) do (
  cls 
  echo The next Npm package to be installed is %%b - %a% out of %nem% NPM Packages
  echo. 
  set /p npmchoice="Install %%b ? (1)Install (2)Skip (3)Return to Menu: "
  echo.
  IF !npmchoice!==1 (npm install -g %%b --silent)
  IF !npmchoice!==2 (echo Skipping %%b)
  IF !npmchoice!==3 (GOTO repeat)
  echo.
  )
  set /a a+=1 
  IF %a% LSS %nem% GOTO npmfour
  :endnpmfour
  GOTO conclusion

:conclusion
echo.
call :ColorText 0a " Done with Installations "
echo. 
set "input="
set "page="
set "choice="
set "list="
echo.
call :ColorText 0b " Thank you for using Dev Setup Installer  "
echo.
echo  ______________________________________________________
echo.
call :ColorText 0b " Copyright (c)Bankole Esan 2019 "
echo.
pause
cls
GOTO end 
:listinstalled
cls
echo.
call :ColorText 0a "  Apps and NPM Packages Installed on this computer "
echo.
echo  ______________________________________________________
echo.
call :ColorText 0b "  Choco App Packages "
echo.
echo  ---------------------------------
choco list --local-only
echo.
call :ColorText 0b "  NPM Packages "
echo.
echo  ---------------------------------
npm -g ls --depth=0
echo.
pause
echo.
set /p list="PLEASE SELECT (1)List again (m)Return to Menu (e)Exit: "
if %list%==1 GOTO listinstalled
if %list%==m GOTO repeat
if %list%==e GOTO conclusion
GOTO concolusion
:description
echo.
echo You selected option [4] View App and Npm Package Descriptions
echo.
echo === Descriptions ===
echo. 
echo The following Pages Include a list and Description of the Applications 
echo and Npm packages you can install using this script file, and their 
echo website URLs that you can visit for more details
echo. 
pause
:pageone
cls
echo  ==== Page One ====
echo  1. Cmder - An awesome alternative Terminal for windows
echo      Website URL: https://cmder.net
echo.
echo  2. Velocity - An offline documentation viewer for windows
echo      Website URL: https://velocity.silverlakesoftware.com
echo.
echo  3. Code Notes - A tool for managing Code Snippets both offline and online using Github Gists
echo      Website URL: https://electronjs.org/apps/code-notes
echo.
echo  4. Python - A simple and easy to learn high-level general purpose programming language
echo      Website URL: https://python.org
echo.
echo  5. Pycharm-community - An Integrated Development Environment, IDE for python programming
echo      Website URL: https://jetbrains.com/pycharm
echo.
echo  6. Android Studio - The Official IDE for Android App Development, based on intelliJ IDEA
echo      Website URL: https://developer.android.com/studio
echo.
echo  7. Firefox - Free and Open source web browser developed by Mozilla
echo      Website URL: https://mozilla.org
echo.
echo  8. Googler - A power tool enabling google search in the command line. Built with python.
echo      Website URL: https://github.com/jarun/googler
echo.
echo  9. Cygwin - A tool to run a Unix/Linux environment natively on windows
echo      Website URL: http://www.cygwin.org/
echo.
echo  10. Httrack - A free utility used to download websites from the internet to a local machine
echo      Website URL: https://www.httrack.com/
echo.
set /p page="PLEASE SELECT (1-6)Page Number (n)Next Page (m)Return to Menu or (e)Exit: "

if %page%==1 GOTO pageone
if %page%==2 GOTO pagetwo
if %page%==3 GOTO pagethree
if %page%==4 GOTO pagefour
if %page%==5 GOTO pagefive
if %page%==6 GOTO pagesix
if %page%==n GOTO pagetwo
if %page%==m GOTO repeat
if %page%==e GOTO conclusion

:pagetwo
cls
echo ==== Page two ====
echo  11. Git - Quintessential Version control system for use with Github and other Online Repositories
echo      Website URL: https://python.org
echo.
echo  12. NodeJS - Essential Javascript Runtime environment for SWE, comes with NPM
echo      Website URL: https://cmder.net
echo.
echo  13. VScode - Highly recommended IDE for general purpose programming and SWD
echo      Website URL: https://velocity.silverlakesoftware.com
echo.
echo  14. Postman - Very Useful ADE, API Development Environment, for API testing 
echo      Website URL: https://python.org
echo.
echo  15. Bitnami-Xampp - All in one Apache, MySQL, PHP and PhpMyAdmin Package by Bitnami
echo      Website URL: https://python.org
echo.
echo  16. MySQL Workbench - Workbench for Developing and Testing MySQL Databases
echo      Website URL: https://python.org
echo.
echo  17. MongoDB - A Modern, document based, No-SQL Database Management System
echo      Website URL: https://python.org
echo.
echo  18. Docker-CLI - Docker and Docker Containers command line Interface program
echo      Website URL: https://python.org
echo.
echo  19. JDK8 - Java Development Kit, essential for building, developing, and running JAVA based applications
echo      Website URL: https://python.org
echo.
echo  20. Composer - Package Manager for php based packages and dependencies
echo      Website URL: https://python.org
echo.
set /p page="PLEASE SELECT (1-6)Page Number (p)Previous Page (n)Next Page (m)Returm to Menu or (e)Exit: "

if %page%==1 GOTO pageone
if %page%==2 GOTO pagetwo
if %page%==3 GOTO pagethree
if %page%==4 GOTO pagefour
if %page%==5 GOTO pagefive
if %page%==6 GOTO pagesix
if %page%==p GOTO pageone
if %page%==n GOTO pagethree
if %page%==m GOTO repeat
if %page%==e GOTO conclusion

:pagethree
cls
echo ==== Page three ====
echo  21. NotePad++ - A basic, simple, easy to use Text Editor
echo      Website URL: https://python.org
echo.
echo  22. VLC Media Player - Most Versatile and dependable Media Player compatible with several codecs and media file types
echo      Website URL: https://python.org
echo.
echo  23. Skype - Social App for Video Calls and text Communication.
echo      Website URL: https://cmder.net
echo.
echo  24. Deluge - Simple but awesome Torrent Downloader
echo      Website URL: https://velocity.silverlakesoftware.com
echo.
echo  25. Discord - Social Network and Chat app for gamers and Techies.
echo      Website URL: https://python.org
echo.
echo  26. Dropbox - Personal Cloud Storage for all kinds of Files
echo      Website URL: https://python.org
echo.
echo  27. irfanview - A simple and easy to learn high-level general purpose programming language
echo      Website URL: https://python.org
echo.
echo  28. Google Chrome - The worlds' best browser. Period.
echo      Website URL: https://python.org
echo.
echo  29. Slack - A simple and easy to learn high-level general purpose programming language
echo      Website URL: https://python.org
echo.
echo  30. Franz - A simple and easy to learn high-level general purpose programming language
echo      Website URL: https://python.org
echo.
set /p page="PLEASE SELECT (1-6)Page Number (p)Previous Page (n)Next Page (m)Returm to Menu or (e)Exit: "

if %page%==1 GOTO pageone
if %page%==2 GOTO pagetwo
if %page%==3 GOTO pagethree
if %page%==4 GOTO pagefour
if %page%==5 GOTO pagefive
if %page%==6 GOTO pagesix
if %page%==p GOTO pagetwo
if %page%==n GOTO pagefour
if %page%==m GOTO repeat
if %page%==e GOTO conclusion

:pagefour
cls
echo ==== Page four ====
echo  31. CMake - A simple and easy to learn high-level general purpose programming language
echo      Website URL: https://python.org
echo.
echo  32. Opera - A simple and easy to learn high-level general purpose programming language
echo      Website URL: https://python.org
echo.
echo.
echo    END OF Choco Applications
echo  ------------------------------
echo.
set /p page="PLEASE SELECT (1-6)Page Number (p)Previous Page (n)Next Page (m)Returm to Menu or (e)Exit: "

if %page%==1 GOTO pageone
if %page%==2 GOTO pagetwo
if %page%==3 GOTO pagethree
if %page%==4 GOTO pagefour
if %page%==5 GOTO pagefive
if %page%==6 GOTO pagesix
if %page%==p GOTO pagethree
if %page%==n GOTO pagefive
if %page%==m GOTO repeat
if %page%==e GOTO conclusion

:pagefive
cls
echo ==== Page five ====
echo.
echo    NPM Packages
echo  ------------------
echo  1. Create-React-App - An awesome alternative Terminal for windows
echo      Website URL: https://cmder.net
echo.
echo  2. Foundation CLI - An offline documentation viewer for windows
echo      Website URL: https://velocity.silverlakesoftware.com
echo.
echo  3. Angular CLI - A simple and easy to learn high-level general purpose programming language
echo      Website URL: https://python.org
echo.
echo  4. Vue CLI - A simple and easy to learn high-level general purpose programming language
echo      Website URL: https://python.org
echo.
echo  5. Netlify CLI - A simple and easy to learn high-level general purpose programming language
echo      Website URL: https://python.org
echo.
echo  6. Electron - A simple and easy to learn high-level general purpose programming language
echo      Website URL: https://python.org
echo.
echo  7. LocalTunel - A simple and easy to learn high-level general purpose programming language
echo      Website URL: https://python.org
echo.
set /p page="PLEASE SELECT (1-6)Page Number (p)Previous Page (n)Next Page (m)Returm to Menu or (e)Exit: "

if %page%==1 GOTO pageone
if %page%==2 GOTO pagetwo
if %page%==3 GOTO pagethree
if %page%==4 GOTO pagefour
if %page%==5 GOTO pagefive
if %page%==6 GOTO pagesix
if %page%==p GOTO pagefour
if %page%==n GOTO pagesix
if %page%==m GOTO repeat
if %page%==e GOTO conclusion
GOTO conclusion

:pagesix
cls
echo ==== Page Six ====
echo.
echo    NPM Packages
echo  ------------------
echo  8. FKill CLI - A simple and easy to learn high-level general purpose programming language
echo      Website URL: https://python.org
echo.
echo  9. Now - A simple and easy to learn high-level general purpose programming language
echo      Website URL: https://python.org
echo.
echo  10. TypeScript - A simple and easy to learn high-level general purpose programming language
echo      Website URL: https://python.org
echo.
echo  11. SASS - A simple and easy to learn high-level general purpose programming language
echo      Website URL: https://python.org
echo.
set /p page="PLEASE SELECT (1-6)Page Number (p)Previous Page (m)Returm to Menu or (e)Exit: "

if %page%==1 GOTO pageone
if %page%==2 GOTO pagetwo
if %page%==3 GOTO pagethree
if %page%==4 GOTO pagefour
if %page%==5 GOTO pagefive
if %page%==6 GOTO pagesix
if %page%==p GOTO pagefour
if %page%==m GOTO repeat
if %page%==e GOTO conclusion
GOTO conclusion 
:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
:end
endlocal

