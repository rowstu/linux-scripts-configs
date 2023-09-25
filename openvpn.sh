#!/bin/bash
cd /username
sudo openvpn --client --config config.ovpn --ca ca.crt --auth-user-pass credentials-file --mute-replay-warnings
