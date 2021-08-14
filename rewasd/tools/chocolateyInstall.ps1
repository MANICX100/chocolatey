$packageName = 'rewasd'
$installerType = 'exe'
$silentArgs = '/S'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://rawcdn.githack.com/MANICX100/chocolatey/5a07ced04fb6b15e3a1310b458184bdd042bc007/rewasd/reWASD580-4512.exe'
$checksum = '9ABE918D700C1102415F8584BE37C4BD855FD637DEF3FB56BE4A32F0DC7F4079'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
