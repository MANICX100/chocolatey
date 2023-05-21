$packageName = 'Lagrange'
$installerType = 'exe'
$silentArgs = '/VERYSILENT'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/skyjake/lagrange/releases/download/v1.16.0/lagrange_v1.16.0_windows-x64_setup.exe'
$checksum = 'ed1cdd8d11400f75bdbd4e1989872c52bd4246d5a8db2eda0d19d2d13c9147b6'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
