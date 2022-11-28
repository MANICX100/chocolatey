$packageName = 'ums'
$installerType = 'exe' 
$silentArgs = '/S'
$url = 'https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/11.6.0/UMS-11.6.0.exe'
$checksum = '8622f8fdc747cac55fbfd413e2074183a4a1c1e9d192a64274e2214166486ba0'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"