#IP_ADDRESS=$(ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}$
IP_ADDRESS=$(/sbin/ip -4 addr | grep inet | awk -F '[ \t]+|/' '{print $3}' | gr$
echo "$IP_ADDRESS" | mail -s "Homebot IP" jere.karppinen88@gmail.com
