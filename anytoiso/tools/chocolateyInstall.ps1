$packageName = 'anytoiso'
$installerType = 'exe'
$silentArgs = '/VERYSILENT'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/crystalidea/anytoiso/releases/download/v3.9.6/anytoiso_setup.exe'
$checksum = '6DC7574DB3621D4E5B357C4E1A0B819C48BE7568EE8A457DD6EB30AC7511E9D6'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
