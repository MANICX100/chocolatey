$packageName = 'imazing'
$installerType = 'exe'
$silentArgs = '/VERYSILENT'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://downloads.imazing.com/windows/iMazing/2.15.8/iMazing_2.15.8.exe'
$checksum = '77d0dbcdfa51afb4b6b0da0b8efceca6ce1ab690ce74ec39791e99e3b0a701ba'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
