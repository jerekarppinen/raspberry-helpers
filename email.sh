IP_ADDRESS=$(ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p')
echo $IP_ADDRESS
echo "$IP_ADDRESS" | mail -s "Homebot IP" email-address@gmail.com
