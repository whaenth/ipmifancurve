#!/bin/bash

$username
$password
$ipaddress

read -p "Username: " username
read -p "Password: " password
read -p "IP Address: " ipaddress

for i in {1..5};
do
	ipmitool -I lanplus -H $ipaddress -U $username -P $password sdr type temperature | awk 'NR==2 {print $10}'
done
