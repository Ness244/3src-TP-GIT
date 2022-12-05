#!/bin/bash


# Copier le fichier de configuration sur le serveur

cp ./config__files/ssh/sshd_config /etc/ssh/sshd_config

cp ./config__files/ssh/Banner /etc/Banner

useradd -m nessim 
echo "nessim  ALL=(ALL:ALL) ALL" >> /etc/sudoers

mkdir /home/nessim/.ssh
cd /home/nessim/.ssh && touch Authorized_user
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC7v/QHqWW4rVkGmSaKtz0U0vlGx9jU7ey6es2HtreJD/a/lgx8zLOzmnz0XZdkSbYWZlBcJErlMNb1WvLks1YCJl9BnBijnBXk7yi8aDqBpcTYH6KqUZBuVG/p/2/VI+Kibw4EHMv6F+p9TQYMXquoeJqdOYr9yDs7oWpsRaMSNNcD4eBFWLCEtIuaI4DRH4xCnSXtA085S/t+d06LuT74YkdeTbyMo1qoxY5QrDbAFk1W86eJO3re5xMcADOQOFEn74K9hkaz99vCPjIAd8YsV+uAXnFfgO+tBMOklKzZiD68DbNQJAoh6+Gn8ZqlF18Wdt2ayP/wZyj/V2loGaFm7XVq8Y/NvHtcfJjMuF63r1grgCv+vLLsZy+WAIFP8agoj3NbbP9IITtA6y3JUxNG2fUlVz7CnrYOc+QBBLhEVLzgGxn6oAbIYpCzumlhLLZFvUi5941MOKvJuzJ2NDtbQs1QDZ0+FWwY55ZFrIlv4EA5RUkSKHVELMK7ivjVJ0c= njaba@PC-Nessim" >> /home/nessim/.ssh/Authorized_user

# Redemarrer le service sshd 

systemctl restart sshd 

