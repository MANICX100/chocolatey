$packageName = 'imazing'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /CLOSEAPPLICATIONS /SUPPRESSMSGBOXES /DONTSTART'
$url = 'https://downloads.imazing.com/windows/iMazing/3.0.4/iMazing_3.0.4.exe'
$checksum = 'eec727424cb75776a0ce22f85e5281f2ab1c3395c4a16f4279c4ce9bfad5f9fe'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
