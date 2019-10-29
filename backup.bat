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
IF "%1"=="restore" GOTO restore
IF "%1"=="getvids" GOTO getvids

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

:restore
  IF EXIST C:\apps (echo File path exists) ELSE (mkdir C:\apps\scripts)
  xcopy /D "D:\backup\apps" /B /E "C:\apps\scripts"
  GOTO end

:getvids
  xcopy /D "D:\backup\projects\videos" /e "C:\projects\resources\videos"
  GOTO end

:help
  echo. 
  echo Commands for the Browse Script
  echo  backup            - first time to backup all files, Subsequent (update all files)
  echo  backup work       - backup work files  
  echo  backup websites   - backup website files
  echo  backup documents  - backup documents files
  echo  backup scripts    - backup scripts files
  echo  backup apps       - backup app shortcuts
  echo  backup pictures   - backup pictures files
  echo  backup videos     - backup videos files
  echo  backup downloads  - backup downloads files
  echo  backup xprojects  - backup projects in the htdocs files
  echo  backup projects   - backup projects file in C:\projects
  echo  backup help       - Display this help text

:end
