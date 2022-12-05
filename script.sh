#!/bin/bash


# Copier le fichier de configuration sur le serveur

cp ./config__files/ssh/sshd_config /etc/ssh/sshd_config

cp ./config__files/ssh/Banner /etc/Banner

useradd -m nessim 
echo "nessim  ALL=(ALL:ALL) ALL" >> /etc/sudoers



# Redemarrer le service sshd 

systemctl restart sshd 

