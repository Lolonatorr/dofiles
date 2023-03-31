import os
print ("Installing minecraft")
winget_cmd = "winget install Mojang.MinecraftLauncher"
winget_cmd_jre = "winget install Oracle.JavaRuntimeEnvironment"
cd_appdata = "cd $env:appdata"
os.system(winget_cmd) 
os.system(winget_cmd_jre)
os.system(cd_appdata)

if
os.path.exists(".minecraft")


