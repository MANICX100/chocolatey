$packageName = 'rewasd'
$installerType = 'exe'
$silentArgs = '/S'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://file-service-default-114c67af0763a8a98e770ff3ee495371.fra1.digitaloceanspaces.com/8dad1b42ef160660b5b490757d517abd349dadd5/reWASD562-3544.exe'
$checksum = 'C8EA8E186FAC316C611E18B50D3FD24DBEA0C99E19B8D16FF5ABCA2236F18CCF'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
