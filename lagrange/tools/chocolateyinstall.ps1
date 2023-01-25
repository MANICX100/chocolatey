$packageName = 'Lagrange'
$installerType = 'exe'
$silentArgs = '/VERYSILENT'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/skyjake/lagrange/releases/download/v1.15.1/lagrange_v1.15.1_windows-x64_setup.exe'
$checksum = '204725e972a423c5e81f835306c0c9e9cde380d48d67a26a4d8b1e8bd7595edf'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
