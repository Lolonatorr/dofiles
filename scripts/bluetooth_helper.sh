#!/bin/bash
echo "figg python subprocesses"
echo "bluetooth helper in bash"
# Starting BLuetooth
echo "starting bluetooth"
sudo systemctl start bluetooth
scan_raw=$(timeout 10s bluetoothctl scan on)
echo $scan_raw