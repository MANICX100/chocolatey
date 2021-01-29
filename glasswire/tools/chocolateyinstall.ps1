$packageName = 'glasswire'
$installerType = 'exe'
$silentArgs = '/S'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://download.glasswire.com/GlassWireSetup.exe'
$checksum = 'E8639D4C7E3D94E9ECE81DEF5F944C8025B6A913D61BE4A627AF23DAE44CFEA5'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
