#!/bin/bash
# Backup VirtualBox VM's

# Fail should anything go south
set -e

# Get an array of VM's
VMS=(`VBoxManage list vms | cut -f1 -d " " | tr -d '"'`)

# Get the running date and time
NOW=`date +%Y-%m-%d-%H-%m`

# Where are we backing up to
DEST="/nfs/vms"


for VM in "${VMS[@]}"
do

    # Get running VM state, running, powered off, saved etc
    state=`VBoxManage showvminfo $VM | grep State | cut -f12 -d " "`

    # Handle the running VM's by saving their state, exporting
    # and then resuming
	if [[ "$state" == running ]]; then
		echo "[*] Saving state for VM: $VM"
		echo ""
		VBoxManage controlvm "$VM" savestate
		echo "[*] State saved for VM: $VM"
		echo "[*] Exporting VM: $VM"
		echo ""
		VBoxManage export "$VM" -o "$DEST"/"$VM"-"$NOW".ova
		echo "[*] Export of VM: $VM complete"
		echo "[*] Resuming running state of VM: $VM"
		echo ""
		VBoxManage startvm "$VM"
		echo "[*] Resumed running state of VM: $VM"
	# If the VM isn't running just export it
    else
		echo "[*] Exporting VM: $VM"
		echo ""
		VBoxManage export "$VM" -o "$DEST"/"$VM"-"$NOW".ova
		echo "[*] Export of VM: $VM complete"
	fi

done

# EOF
