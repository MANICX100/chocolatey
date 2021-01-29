$packageName = 'paragon-apfs'
$installerType = 'msi'
$silentArgs = '/S'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://dl.paragon-software.com/demo/apfswin_trial.msi'
$checksum = 'F182F5D4B65B60254224C0F58E98F1CDB3E29BBDD7AEBBDD86491E50D2095DA7'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
