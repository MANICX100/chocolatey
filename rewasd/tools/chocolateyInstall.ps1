$packageName = 'rewasd'
$installerType = 'exe'
$silentArgs = '/S'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://file-service-default-114c67af0763a8a98e770ff3ee495371.fra1.digitaloceanspaces.com/190266e9e2233038faab66dfdcc97558320dff55/reWASD580-4512.exe?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=Z42SJEYMLCPREOBRVPTN%2F20210814%2Ffra1%2Fs3%2Faws4_request&X-Amz-Date=20210814T120140Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=9576544f9c081044e6d2ec7bfe6b9b0d2ac5ca8c07f871e1c7165d3fa095a908'
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
