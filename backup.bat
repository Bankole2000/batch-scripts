@ECHO OFF
IF "%1"=="" GOTO bkupall
IF "%1"=="work" GOTO work
IF "%1"=="xprojects" GOTO xprojects
IF "%1"=="projects" GOTO projects
IF "%1"=="downloads" GOTO downloads
IF "%1"=="videos" GOTO videos
IF "%1"=="pictures" GOTO pictures
IF "%1"=="websites" GOTO websites
IF "%1"=="apps" GOTO apps
IF "%1"=="scripts" GOTO scripts
IF "%1"=="help" GOTO help
IF "%1"=="documents" GOTO documents
IF "%1"=="all" GOTO all

:bkupall
  xcopy /D "%USERPROFILE%\Desktop\work" /e "D:\backup\work"
  xcopy /D "C:\xampp\htdocs" /e "D:\backup\xprojects"
  xcopy /D "C:\projects" /e "D:\backup\projects"
  xcopy /D "%USERPROFILE%\Downloads" /e "D:\backup\downloads"
  xcopy /D "%USERPROFILE%\Videos" /e "D:\backup\videos"
  xcopy /D "%USERPROFILE%\Pictures" /e "D:\backup\pictures"
  xcopy /D "C:\websites" /e "D:\backup\websites"
  xcopy /D "C:\apps\scripts" /e "D:\backup\scripts"
  xcopy /D "%USERPROFILE%\Documents\mydocuments" /e "D:\backup\documents"
  xcopy /D "%USERPROFILE%\Desktop\work" /e "D:\backup\work"
  GOTO end

:work
  xcopy /D "%USERPROFILE%\Desktop\work" /e "D:\backup\work"
  GOTO end

:xprojects
  xcopy /D "C:\xampp\htdocs" /e "D:\backup\xprojects"
  GOTO end

:projects
  xcopy /D "C:\projects" /e "D:\backup\projects"
  GOTO end

:downloads
  xcopy /D "%USERPROFILE%\Downloads" /e "D:\backup\downloads"
  GOTO end

:videos
  xcopy /D "%USERPROFILE%\Videos" /e "D:\backup\videos"
  GOTO end

:pictures
  xcopy /D "%USERPROFILE%\Pictures" /e "D:\backup\pictures"
  GOTO end

:websites
  xcopy /D "C:\websites" /e "D:\backup\websites"
  GOTO end

:scripts
  xcopy /D "C:\apps\scripts" /e "D:\backup\scripts"
  GOTO end

:apps
  xcopy /D "C:\apps" /B /E "D:\backup\apps"
  GOTO end

:documents
  xcopy /D "%USERPROFILE%\Documents\mydocuments" /e "D:\backup\documents"
  GOTO end

:help
  echo. 
  echo Commands for the Browse Script
  echo  backup  { open chrome }
  echo  backup ^<url^>  { open url in chrome } 
  echo  backup web ^<website.com^> { open website in chrome with https }
  echo  backup xlocal ^<foldername^> { Startup Xampp and open localhost:\projects\foldername in chrome }
  echo  backup local ^<foldername^> { open localhost:\projects\foldername in chrome }
  echo  backup search ^<search words up to 9^> { open googler search results for search terms in chrome }
  echo  backup close { exit/close all instances of chrome }
  echo  backup httrack { Open httrack downloaded websites }
  echo  backup here { open current directory in chrome browser }
  echo  backup pirple { open Pirple in browser and navigate to pirple directory }
  echo  backup lambda { open Lambda School in browser and navigate to lambda directory }
  echo  backup help { show this help menu }
  GOTO end

:end