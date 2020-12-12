$packageName = 'ums'
$installerType = 'exe' 
$silentArgs = '/S'
$url = 'https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/9.8.2/UMS-9.8.2.exe'
$checksum = '521586D1FDF6E61FDD5D540C34AB6FB889C74C7069A232C5B66027B8DE705FB0'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"