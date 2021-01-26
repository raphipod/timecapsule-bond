#!/bin/sh

##################################
# A script that connects a Linux
# machine to a TimeCapsule.
# 
# Copyright (C) 2021, Raphipod
##################################

sudo apt-get install cifs-utils && smbclient && smbfs -y

echo -e "\nInstalled necessary components."

sleep 5

echo -e "\nIP address of TimeCapsule?"

read ip

echo -e "\nName of shared drive?"

read hdd_name

sudo mkdir /mnt/timecapsule

echo -e "\nUsername of TimeCapsule?"

read username

sleep 2

echo -e "\nTrying to connect to TimeCapsule..."

sudo mount.cifs //$(ip)/$(hdd_name) /mnt/timecapsule -o user=$(username),sec=ntlm,vers=1.0