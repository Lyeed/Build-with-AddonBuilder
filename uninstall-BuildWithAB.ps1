<#
  uninstall-BuildWithAB.ps1
  Author: Lyeed
  Date: 25/07/2018
  Description: Remove Addbuilder as a Windows contextual menu item
#>

Remove-Item -Path Registry::HKEY_CLASSES_ROOT\Directory\shell\AddonBuilder -Recurse -Force
