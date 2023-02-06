$packageName = 'ums'
$installerType = 'exe' 
$silentArgs = '/S'
$url = 'https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/13.2.0/UMS-13.2.0.exe'
$checksum = '0f8c5e8b41f3f47696b0fa1c39aa4004179af4fcfbf17466427eadc06820b12b'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"