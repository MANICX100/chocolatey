Import-Module au

function global:au_BeforeUpdate ($Package)  {
    
}

function global:au_AfterUpdate ($Package)  {
    
}

function global:au_SearchReplace {
    @{
        'tools\chocolateyinstall.ps1' = @{
            "(^[$]url\s*=\s*)('.*')" = "`$1'$($Latest.Url32)'"
            "(^[$]checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
        "$($Latest.PackageName).nuspec" = @{
            "^(\s*<releaseNotes>).*(</releaseNotes>)$" = "`$1$($Latest.ReleaseNotes)`$2"
        }
    }
}

function global:au_GetLatest {
    $sparkleUri = 'https://downloads.imazing.com/com.DigiDNA.iMazing2Windows.xml'
    $userAgent = 'Update checker of Chocolatey Community Package ''imazing'''
    $page = Invoke-WebRequest -Uri $sparkleUri -UserAgent $userAgent -UseBasicParsing
    $xmlDocument = [xml] $page.Content
    $latestReleaseItem = $xmlDocument.rss.channel.item[0]

    $marketingVersion = $latestReleaseItem.enclosure.shortVersionString
    $productVersion = "$($marketingVersion.ToString()).0"

    return @{ 
        Url32 = $latestReleaseItem.enclosure.url
        Version = $productVersion
        ReleaseNotes = $latestReleaseItem.releaseNotesLink
    }
}

Update-Package -ChecksumFor 32 -NoReadme
