$packageName = 'ums'
$installerType = 'exe' 
$silentArgs = '/S'
$url = 'https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/13.7.0/UMS-13.7.0.exe'
$checksum = '6a938d78be7c4f4a86fddc6b2417eaff2758a40c06b4617717ef4a2a0e9536b4'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
