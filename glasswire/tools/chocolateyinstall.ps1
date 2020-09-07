$packageName = 'glasswire'
$installerType = 'exe'
$silentArgs = '/S'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://download.glasswire.com/GlassWireSetup.exe'
$checksum = 'CC71998891158FF04157A052A9C419F8077AAFB57FB9D0310340277FCA8E6C5B'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
