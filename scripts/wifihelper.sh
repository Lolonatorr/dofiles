echo "---Wifi helper using nmcli V0.1---"
counter=0
available_wifis=()
for i in $(nmcli -f SSID dev wifi | sort -u | grep -v SSID)
do
    available_wifis[$counter]=$i
    output=$available_wifis[$counter]
    echo "$counter ${available_wifis[$counter]}"
    ((counter++))
done
echo "enter the number of the network you want to connect to:"
read chosen_network
echo "${available_wifis[$chosen_network]}"
echo "Password:"
read password
nmcli dev wifi connect ${available_wifis[$chosen_network]} password "$password"
