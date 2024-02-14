$ErrorActionPreference = 'Stop';

# Define uninstall parameters
$packageName = $env:ChocolateyPackageName
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$unzipLocation = Join-Path $toolsDir "$packageName"
$shortcutName = 'Unreal Speccy.lnk' # Ensure this matches the exact name of the shortcut
$shortcutPath = Join-Path $env:ProgramData 'Microsoft\Windows\Start Menu\Programs\Chocolatey'

# Remove the installed directory
if (Test-Path $unzipLocation) {
  Remove-Item -Path $unzipLocation -Recurse -Force
}

# Remove the shortcut
$fullShortcutPath = Join-Path $shortcutPath $shortcutName
if (Test-Path $fullShortcutPath) {
  Remove-Item -Path $fullShortcutPath -Force
}

Write-Host "$packageName has been uninstalled."
