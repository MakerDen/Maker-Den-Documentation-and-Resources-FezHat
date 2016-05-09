REM Getting the source code

SET "SetupResources=c:\MakerDen\Resources\"
SET "Solution=c:\MakerDen\Source\"

rd /s /q %Solution%

git clone https://github.com/MakerDen/IoT-Maker-Den-Windows-for-IoT.git --depth 1 %Solution%

REM Set RPi Remote Device Name for Visual Studio
CALL %SetupResources%\Setup\RPiName %~1

REM copy across the snippets
CALL %SetupResources%\Setup\Snippets

REM Copy across Desktop shortcuts
xcopy "%SetupResources%Shortcuts"  "%userprofile%\desktop" /s /i

cd %Solution%

REM Copy Maker Den specific remote device config name
copy %SetupResources%VisualStudio\launcher.csproj.user.RPiName %Solution%Launcher\launcher.csproj.user /y


start "Start Visual Studio 2015" /d "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\" /b  "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe"  /resetsettings %SetupResources%\VisualStudio\MakerDenSettings.vssettings %Solution%MakerDenWindows.sln

