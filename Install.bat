@echo off

rem ###########################
rem Your AddonBuilder Path
set "AddonBuilder=C:\Program Files (x86)\Steam\steamapps\common\Arma 3 Tools\AddonBuilder\AddonBuilder.exe"
rem ###########################

xcopy "%~dp0data\*.bat" "%appdata%\AddonBuilderContextualMenu" /Y /S /I /Q

reg add "HKCU\Software\Classes\Directory\shell\AddonBuilderContextual" /VE /D "Build with AddonBuilder" /F
reg add "HKCU\Software\Classes\Directory\shell\AddonBuilderContextual" /v "Icon" /D "%AddonBuilder%,0" /F
reg add "HKCU\Software\Classes\Directory\shell\AddonBuilderContextual\command" /VE /D "\"%appdata%\AddonBuilderContextualMenu\Build.bat\" \"%AddonBuilder%\" \"%%1\"" /F

reg add "HKCU\Software\Classes\Directory\shell\AddonBuilderContextual_packOnly" /VE /D "Build with AddonBuilder (pack only)" /F
reg add "HKCU\Software\Classes\Directory\shell\AddonBuilderContextual_packOnly" /v "Icon" /D "%AddonBuilder%,0" /F
reg add "HKCU\Software\Classes\Directory\shell\AddonBuilderContextual_packOnly\command" /VE /D "\"%appdata%\AddonBuilderContextualMenu\BuildWithArgs.bat\" \"%AddonBuilder%\" \"%%1\" -packonly" /F
reg add "HKCU\Software\Classes\Directory\shell\AddonBuilderContextual_packOnly" /v "Extended" /F
