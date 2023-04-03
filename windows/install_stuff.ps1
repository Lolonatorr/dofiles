Write-host "windows installer bruh"
write-host $packages
$choice = Read-Host "do you want to install all of the following packages:"
if ( $choice -eq "yes" ) {
    $packages = @('Discord.Discord','FancyWM','Virtualbox','7Zip.7zip','Mozilla.Firefox','code','Valve.Steam','nvidia','obsidian','alacritty','ubisoft')
    foreach ($i in $packages){
    winget install $i
    }
}
$users = Get-ChildItem "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList" | where { $_.PSChildName -match "S-1-5-21-\d{18}-\d{9}-\d{9}-\d{4}$" }

foreach ($user in $users) {
    $key = $user.PSPath + "\Software\Microsoft\Windows\CurrentVersion\Run"
    Get-ChildItem $key | foreach { Set-ItemProperty $_.PSPath -Name "Enabled" -Value 0 }
}
iwr -useb https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.ps1 | iex
iwr -useb https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.ps1 | iex