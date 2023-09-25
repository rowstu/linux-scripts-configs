#!/bin/sh
aws ec2 describe-vpn-connections  --filters "Name=customer-gateway-id, Values=cgw-6aecde1d" --profile production --region eu-west-1 --output text | tail -n 3
