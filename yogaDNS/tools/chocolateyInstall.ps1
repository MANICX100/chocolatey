$packageName = 'yogadns'
$installerType = 'exe'
$silentArgs = '/VERYSILENT'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://yogadns.com/download/YogaDNSSetup.exe'
$checksum = 'B8060EE7ABA4A6942AF9F2BE4BB68C9F5E28DB2165649FADD4E5C4289C719EB3'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
