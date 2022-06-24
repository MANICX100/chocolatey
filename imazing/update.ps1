Import-Module au

function global:au_BeforeUpdate ($Package)  {
    
}

function global:au_AfterUpdate ($Package)  {
    
}

function global:au_SearchReplace {
    @{
        'tools\chocolateyinstall.ps1' = @{
            "(^[$]checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $downloadUrl = "https://downloads.imazing.com/windows/iMazing/iMazing2forWindows.exe"

    $tempFile = New-TemporaryFile
    Invoke-WebRequest -Uri $downloadUrl -OutFile $tempFile
    $softwareVersion = $tempFile.VersionInfo.ProductVersion.Trim()
    $checksum = (Get-FileHash -Path $tempFile -Algorithm SHA256).Hash.ToLower()
    Remove-Item -Path $tempFile -Force

    return @{ 
        Url32 = $downloadUrl;
        Checksum32 = $checksum
        Version = $softwareVersion
    }
}

Update-Package -ChecksumFor None -NoReadme