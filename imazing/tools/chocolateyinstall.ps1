$packageName = 'imazing'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /CLOSEAPPLICATIONS /SUPPRESSMSGBOXES /DONTSTART'
$url = 'https://downloads.imazing.com/windows/iMazing/3.0.3.1/iMazing_3.0.3.1.exe'
$checksum = 'c4e24a6e0159c726169c35fa2c984e491a02746d932b6715492f7920f2e3d460'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
