$packageName = 'passcovery'
$installerType = 'msi'
$silentArgs = '/q'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://passcovery.com/download/binary/Passcovery_Suite_20.12_x64.msi'
$checksum = '442C42A6C1B0E0382091EBD214A293BF0CCE785E6F39B47A13191BBBB74EB782'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
