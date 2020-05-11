$packageName = 'ums'
$installerType = 'exe' 
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/unimediaserver/files/9.4.3/UMS-9.4.3.exe/download'
$checksum = '2A8594847C8627D3364D153C9B97BA24061802E98366B1C285A0F96E5E8B60C1'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"