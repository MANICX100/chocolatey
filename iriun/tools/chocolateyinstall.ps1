$packageName = 'iriun'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /NORESTART'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://1758658189.rsc.cdn77.org/WinWebcam-2.6.3.exe'
$checksum = '7A9AA3F296C38ACCF120D5BBDBDF9C04A9D7D4DDB404E308BBD2575C5CBB83D6'
$checksumType = 'sha256'
$validExitCodes = @(0,1641)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
