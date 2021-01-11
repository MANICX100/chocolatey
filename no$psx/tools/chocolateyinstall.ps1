$packageName = 'no-cash-psx'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://problemkaputt.de/psxtny.zip'
$checksum = '8B688B6D61C2FDD190AB8E01E24A5B66'
$checksumType = 'md5'
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"