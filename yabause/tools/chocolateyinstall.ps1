$packageName = 'yabause'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://drive.google.com/uc?id=1UwZgaEMBzcc8h-_DEQ2qfgDXuyuruUea&export=download'
$checksum = 'AC39DF3C730C8BF538AC3AA3513C1FE8'
$checksumType = 'md5'
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"