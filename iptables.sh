#!/bin/bash

result1=$(iptables -F)
echo "Command 1 results: $result1"

# Run command 2
result2=$(iptables -t nat -F)
echo "Command 2 result: $result2"

# Run command 3
result3=$(iptables -X)
echo "Command 3 result: $result3"

result4=$(iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE)
echo "Command 1 results: $result4"

# Run command 2
result5=$(iptables -A FORWARD -i tun0 -o wlan0 -m state --state RELATED,ESTABLISHED -j ACCEPT)
echo "Command 2 result: $result5"

# Run command 3
result6=$(sh -c "iptables-save > /etc/iptables.ipv4.nat")
echo "Command 3 result: $result6"




echo "Shell script has finished