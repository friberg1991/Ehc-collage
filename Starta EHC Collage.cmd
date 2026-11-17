@echo off
rem Startar EHC Collage i ett eget fönster. Fungerar från vilken mapp, enhet och dator som helst.
setlocal
set "SIDA=%~dp0index.html"
set "SIDA=%SIDA:\=/%"

set "WEBB=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if not exist "%WEBB%" set "WEBB=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if not exist "%WEBB%" set "WEBB=%LocalAppData%\Google\Chrome\Application\chrome.exe"
if not exist "%WEBB%" set "WEBB=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
if not exist "%WEBB%" set "WEBB=%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"

if exist "%WEBB%" (
  start "" "%WEBB%" --app="file:///%SIDA%"
) else (
  start "" "%~dp0index.html"
)
