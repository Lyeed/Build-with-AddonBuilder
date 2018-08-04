<#
  install-BuildWithAB.ps1
  Author: Lyeed
  Date: 25/07/2018
  Description: Adds Addbuilder as a Windows contextual menu item
#>

# Configuration
$Private:AddonBuilder = "PATH\TO\Steam\SteamApps\common\Arma 3 Tools\AddonBuilder\AddonBuilder.exe"

#
# DO NOT EDIT BELOW UNLESS YOU KNOWN WHAT YOU ARE DOING
#
$Private:AddonBuilderDir = [System.IO.Path]::GetDirectoryName($Private:AddonBuilder)

Copy-Item "$PSScriptRoot\data\types_included.txt" -Destination $Private:AddonBuilderDir -Force

New-Item -Path Registry::HKEY_CLASSES_ROOT\Directory\shell\AddonBuilder –Value 'Build into PBO with AddonBuilder' -Force
New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\Directory\shell\AddonBuilder -Name 'Icon' -PropertyType String -Value "$Private:AddonBuilder,0"
New-Item -Path Registry::HKEY_CLASSES_ROOT\Directory\shell\AddonBuilder\command –Value "$Private:AddonBuilder ""%1"" ""%w"" -clear ""-include=$Private:AddonBuilderDir\types_included.txt""" -Force
