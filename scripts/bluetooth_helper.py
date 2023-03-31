import os
import time
import subprocess
print ("bluetooth Helper figg subprocess ")
start_bt_command = "sudo systemctl start bluetooth"
scan_duration = "timeout 10s"
scan_devices_command = scan_duration + " bluetoothctl scan on"
counter = 0
print("scanning devices (Ctrl+c to end scan)")
devices_raw = ""
#for i in os.system(scan_devices_command):
returned_output = subprocess.check_output(["timeout", "10s", "bluetoothctl", "scan", "on"])
decoded_output = returned_output.decode("utf-8")
print(decoded_output)
for i in  decoded_output:
    devices_raw = i
    counter += 1
    
print("Stopped scan")
print(devices_raw)
#subprocess.check_output(['whoami'])
