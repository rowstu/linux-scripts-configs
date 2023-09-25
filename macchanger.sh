#!/bin/bash
sudo ip link set dev wlp2s0 down
sudo macchanger -r wlp2s0
sudo ip link set dev wlp2s0 up
