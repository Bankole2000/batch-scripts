@ECHO OFF
Shift
echo Running this batch file will automatically install the following on your computer --
echo Choco, Git, Nodejs, Sass, Velocity, Vscode, Python, Codenotes, Postman, Xampp, Httrack
echo googler, googlechrome, firefox,  
Shift
echo Press Ctrl+C to Cancel or
Pause
Shift 
Shift
echo Continued
Pause

:: @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
:: choco install googlechrome --confirm
:: choco install chromium --confirm
:: choco install firefox --confirm
:: choco install 7zip.install --confirm