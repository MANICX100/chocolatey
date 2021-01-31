$packageName = 'paragon-hfs+'
$installerType = 'msi'
$silentArgs = '/q'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://dl.paragon-software.com/demo/hfs_win_uc_trial.msi'
$checksum = '587DCBB12B985D2AF787BC7D39D2B2D0303BDADA86857D473969D345103434F8'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
