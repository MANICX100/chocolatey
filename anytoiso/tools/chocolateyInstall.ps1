$packageName = 'anytoiso'
$installerType = 'exe'
$silentArgs = '/VERYSILENT'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/crystalidea/anytoiso-public/releases/download/v3.9.7/anytoiso_setup.exe'
$checksum = '15a0e378119b5e4d2e45b8f45da6fb835e3df7084fff9242a0436dd3d9c10ffc'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
