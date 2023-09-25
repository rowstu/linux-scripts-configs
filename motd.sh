#!/bin/bash

HOSTNAME=$(uname -n)
OS=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2- | tr -d '"')
KERNEL=$(uname -r)
PLATFORM=$(sudo dmidecode -s system-product-name)
FIREWALL=$(systemctl status firewalld | grep 'Active:' | awk '{print $2 $3}')
#SELINUX=$(sestatus | awk '/SELinux status/ {status=$3} /Current mode/ {mode=$3} /Loaded policy name/ {policy=$4} END {print status, policy, mode}')
if [[ -t 0 && -t 1 ]] && command -v sestatus >/dev/null 2>&1; then
    SELINUX=$(sestatus | awk '/SELinux status/ {status=$3} /Current mode/ {mode=$3} /Loaded policy name/ {policy=$4} END {print status, policy, mode}')
else
    SELINUX="SELinux information not available"
fi
CPUUTIL=$(top -bn1 | awk '/^%Cpu/ {print 100-$8}' | tail -n 1)
MEMUTIL=$(free | awk '/^Mem:/ {print ($3/$2)*100}')
SWAPUTIL=$(free | awk '/^Swap:/ {print ($3/$2)*100}')
UPTIME=$(uptime -p)

echo -e "#=====================================================#"
echo -e "Hostname:           ${HOSTNAME}"
echo -e "Operating System:   ${OS}"
echo -e "Kernel:             ${KERNEL}"
echo -e "Platform:           ${PLATFORM}"
echo -e "Firewall State:     ${FIREWALL}"
echo -e "SELinux State:      ${SELINUX}"
echo -e "CPU Utilisation:    ${CPUUTIL}%"
echo -e "Memory Utilisation: ${MEMUTIL}%"
echo -e "Swap Utilisation:   ${SWAPUTIL}%"
echo -e "Uptime:             ${UPTIME}"
echo -e "#=====================================================#"