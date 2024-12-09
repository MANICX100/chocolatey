$packageName = 'imazing'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /CLOSEAPPLICATIONS /SUPPRESSMSGBOXES /DONTSTART'
$url = 'https://downloads.imazing.com/windows/iMazing/3.0.6/iMazing_3.0.6.exe'
$checksum = '76c97ce8f099642ed932ec5179f3fb532d552341a492479e91ea27597e33ac96'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
