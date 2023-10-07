$packageName = 'Lagrange'
$installerType = 'exe'
$silentArgs = '/VERYSILENT'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/skyjake/lagrange/releases/download/v1.17.0/lagrange_v1.17.0_windows-x64_setup.exe'
$checksum = 'd66169eb1cea38e4dc7db65a61dc464b5a42d3b5b9fbe71f64db0d4590b582f3'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"