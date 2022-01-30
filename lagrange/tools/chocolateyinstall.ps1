$packageName = 'Lagrange'
$installerType = 'exe'
$silentArgs = '/VERYSILENT'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/skyjake/lagrange/releases/download/v1.10.3/lagrange_v1.10.3_windows-x64_setup.exe'
$checksum = '06836CD75E8BDD1790F6DCF3211700302F59D9059793F0D8174DAF5E8356E3FB'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
