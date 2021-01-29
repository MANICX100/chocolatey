$packageName = 'paragon-linux'
$installerType = 'msi'
$silentArgs = '/S'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://dl.paragon-software.com/demo/linuxwin_trial.msi'
$checksum = '9616CB50BFCEB40E36F9B33F464E3CE6E16AFC938D81F8F72E1862E3C8C3EC79'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
