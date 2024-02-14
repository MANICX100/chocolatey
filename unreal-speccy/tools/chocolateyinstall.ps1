$ErrorActionPreference = 'Stop';

# Define package parameters
$packageName = $env:ChocolateyPackageName
$url = 'https://github.com/djdron/UnrealSpeccyP/releases/download/v0.0.87/unreal-speccy-portable_0.0.87_win32_sdl2_gles2_angle.zip'
$checksum = '12BE4B23C45FF740652A858F525672A9A3B78E786096720214DCC6DA27EC4214'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$unzipLocation = Join-Path $toolsDir "$packageName"
$shortcutName = 'Unreal Speccy'
$shortcutPath = Join-Path $env:ProgramData 'Microsoft\Windows\Start Menu\Programs\Chocolatey'

# Download and unzip the package with checksum verification
$packageArgs = @{
  packageName    = $packageName
  url            = $url
  unzipLocation  = $unzipLocation
  checksum       = $checksum
  checksumType   = $checksumType
}

Install-ChocolateyZipPackage @packageArgs

# Create a shortcut
$mainExecutable = Get-ChildItem -Path $unzipLocation -Filter '*.exe' | Select-Object -First 1
if ($mainExecutable) {
  Install-ChocolateyShortcut -shortcutFilePath "$shortcutPath\$shortcutName.lnk" -targetPath $mainExecutable.FullName
} else {
  Write-Host "Executable not found. Please check the ZIP contents."
}
