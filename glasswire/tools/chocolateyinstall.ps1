$packageName = 'glasswire'
$installerType = 'exe'
$silentArgs = '/S'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://download.glasswire.com/GlassWireSetup.exe'
$checksum = '5FA30D44AF5B8E4EF55044A01DDC50FC66286DB041B385FF20A3D5EEBFFE8974'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
