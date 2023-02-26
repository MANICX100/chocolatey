$packageName = 'Lagrange'
$installerType = 'exe'
$silentArgs = '/VERYSILENT'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/skyjake/lagrange/releases/download/v1.15.3/lagrange_v1.15.3_windows-x64_setup.exe'
$checksum = 'cfdc1d96e050c46d2d5b5467e396a5964dbfb6ceb86c43195b40e97fe7b38411'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
