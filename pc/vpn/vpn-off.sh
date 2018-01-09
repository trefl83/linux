#!/bin/bash

# Your VPN name on Network Manager, to list all connections you can use: nmcli con
VPN_NAME="ch9.nordvpn.com.tcp443"
# List of apps you want to kill before disconnecting from the VPN, if you don't kill them, they will leak traffic
KILL_APPS="transmission-gtk"

# Killing apps
killall $KILL_APPS

# VPN disconnect
nmcli con down id $VPN_NAME

# Reset Firewall to defaults
sudo ufw --force reset
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
