$ErrorActionPreference = 'Stop';

# Define package parameters
$packageName = $env:ChocolateyPackageName
$url = 'https://github.com/djdron/UnrealSpeccyP/releases/download/v0.0.87/unreal-speccy-portable_0.0.87_win32_sdl2_gles2_angle.zip'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$unzipLocation = Join-Path $toolsDir "$packageName"
$shortcutName = 'Unreal Speccy'

# Download and unzip the package
$packageArgs = @{
  packageName   = $packageName
  url           = $url
  unzipLocation = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs

# Assuming 'unreal_speccy_portable.exe' is the main executable, adjust as necessary
$mainExecutable = Get-ChildItem -Path $unzipLocation -Filter 'unreal_speccy_portable.exe' -Recurse

if ($mainExecutable) {
  $shortcutPath = Join-Path $env:ProgramData 'Microsoft\Windows\Start Menu\Programs\Chocolatey'
  Install-ChocolateyShortcut -shortcutFilePath "$shortcutPath\$shortcutName.lnk" -targetPath $mainExecutable.FullName -WorkingDirectory $mainExecutable.DirectoryName
} else {
  Write-Host "Main executable not found. Please check the ZIP contents."
}
