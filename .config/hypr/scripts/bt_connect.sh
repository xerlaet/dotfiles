#!/bin/bash

HEADPHONE_MAC="80:C3:BA:3F:1B:54"

echo -e "connect $HEADPHONE_MAC" | bluetoothctl

# Wait a moment for the connection to establish
sleep 2

# Check connection status and send a notification
if bluetoothctl info "$HEADPHONE_MAC" | grep -q "Connected: yes"; then
  notify-send -t 1000 "Bluetooth Connected" "Successfully connected to your headphones." -i audio-headphones
else
  notify-send -t 1000 -u critical "Bluetooth Failed" "Could not connect to headphones." -i dialog-error
fi
