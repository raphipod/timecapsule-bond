#!/bin/sh

##################################
# A script that connects a Linux
# machine to a TimeCapsule.
# 
# Copyright (C) 2021, Raphipod
##################################

sudo apt-get install cifs-utils && smbclient && smbfs -y

echo "\nInstalled necessary components."

sleep 5

echo "\nIP address of TimeCapsule?"

read ip_addr

echo "\nName of shared drive?"

read hdd_name

sudo mkdir /mnt/timecapsule

echo "\nUsername of TimeCapsule?"

read username

sleep 2

echo "\nTrying to connect to TimeCapsule..."

sudo mount.cifs //$ip_addr/$hdd_name /mnt/timecapsule -o user=$username,sec=ntlm,vers=1.0