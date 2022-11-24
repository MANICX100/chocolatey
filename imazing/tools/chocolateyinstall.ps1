$packageName = 'imazing'
$installerType = 'exe'
$silentArgs = '/VERYSILENT'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://downloads.imazing.com/windows/iMazing/2.16.3/iMazing_2.16.3.exe'
$checksum = '86e757ac08e4f94e146b8e3ab9297ed75093926f2f698538d6b1321aa7b9bf22'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
