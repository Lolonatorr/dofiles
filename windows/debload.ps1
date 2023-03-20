Write-host "windows uninstaller bruh run as admin"
write-host $packages
$choice = Read-Host "do you want to uninstall all of the following packages:(Type yes)"
$packages = @('Clipchamp','Maps','Media Player','Phone Link','camera','Clock','Cortana','Feedback Hub','Get Help','Mail and Calendar','Microsoft Teams','Microsoft To Do','News','Paint','People','Quick Assist','Power Automate','Solitaire & Casual Games','Spotify Music','Sticky Notes','Tips','Voice Recorder','Weather','Xbox Live')
$appx_packages = @('windowsmaps','People','WindowsSoundRecorder')
foreach ($i in $packages){
    write-host $i
}
if ( $choice -eq "yes" ) {
    foreach ($i in $packages){
    winget remove $i
    }
}
foreach ($i in $appx_packages){
    Get-AppxPackage *$i* | Remove-AppxPackage
    }
Get-AppxPackage *windowsmaps* | Remove-AppxPackage

