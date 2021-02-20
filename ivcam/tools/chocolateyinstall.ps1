$packageName = 'ivcam'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /NORESTART'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://www.e2esoft.com/files/iVCam_x64_v6.1.9.exe'
$checksum = '5D86AA0E5BE20A7005D55F46D1918F7D411EFB84EAAFAE5F2E279FA92B3E2450'
$checksumType = 'sha256'
$validExitCodes = @(0,1641)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
