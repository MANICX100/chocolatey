$packageName = 'ums'
$installerType = 'exe' 
$silentArgs = '/S'
$url = 'https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/10.13.0/UMS-10.13.0.exe'
$checksum = 'EA85601646F9FB8F9E4A010A81634E3B90A81BFBE8526CA31FA5677821C7431C'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"