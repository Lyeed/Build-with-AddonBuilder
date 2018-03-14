@echo off

set "AddonBuilder=C:\Program Files (x86)\Steam\steamapps\common\Arma 3 Tools\AddonBuilder\AddonBuilder.exe"

reg add "HKCU\Software\Classes\Directory\shell\AddonBuilderContextual" /VE /D "Build with AddonBuilder (pack-only)" /F
reg add "HKCU\Software\Classes\Directory\shell\AddonBuilderContextual" /v "Icon" /D "%AddonBuilder%,0" /F
reg add "HKCU\Software\Classes\Directory\shell\AddonBuilderContextual" /v "Extended" /F
reg add "HKCU\Software\Classes\Directory\shell\AddonBuilderContextual\command" /VE /D "cmd /c cd \"%%1\" & \"%AddonBuilder%\" \"-packonly\" \"%%1\" \"%CD%\"" /F

reg add "HKCU\Software\Classes\Directory\shell\AddonBuilderContextual_packOnly" /VE /D "Build with AddonBuilder" /F
reg add "HKCU\Software\Classes\Directory\shell\AddonBuilderContextual_packOnly" /v "Icon" /D "%AddonBuilder%,0" /F
reg add "HKCU\Software\Classes\Directory\shell\AddonBuilderContextual_packOnly\command" /VE /D "cmd /c cd \"%%1\" & \"%AddonBuilder%\" \"%%1\" \"%CD%\"" /F
