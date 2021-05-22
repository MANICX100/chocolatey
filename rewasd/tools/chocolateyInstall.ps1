$packageName = 'rewasd'
$installerType = 'exe'
$silentArgs = '/S'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://file-service-default-114c67af0763a8a98e770ff3ee495371.fra1.digitaloceanspaces.com/d1238edcd5594fd1fd1e85eb06f0d6e3c57bfdee/reWASD570-4038.exe'
$checksum = 'BA47B3939C52D8307AA33341289F81769CFDA925EBE346B399251A0210456E46'
$checksumType = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
