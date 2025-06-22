#!/bin/sh


# Wifi
systemctl enable --now NetworkManager.service

# Bluetooth
systemctl enable --now bluetooth.service
