@echo off

reg delete "HKCU\Software\Classes\Directory\shell\AddonBuilderContextual" /f
reg delete "HKCU\Software\Classes\Directory\shell\AddonBuilderContextual_packOnly" /f
