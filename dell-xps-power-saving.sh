#!/bin/sh

# VM writeback timeout
echo '1500' > '/proc/sys/vm/dirty_writeback_centisecs'

# Intel integrated graphics controller
echo 'auto' > '/sys/bus/pci/devices/0000:00:02.0/power/control'

# Audio controller
echo '1' > '/sys/module/snd_hda_intel/parameters/power_save'
echo 'auto' > '/sys/bus/pci/devices/0000:00:1b.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:03.0/power/control'

# DRAM Controller
echo 'auto' > '/sys/bus/pci/devices/0000:00:00.0/power/control'

# Thermal management controller
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.6/power/control'

# SMBus controller
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.3/power/control'

# MEI (Management engine interface) controller
echo 'auto' > '/sys/bus/pci/devices/0000:00:16.0/power/control'

# HM87 Express LPC Controller
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.0/power/control'

# PCI Express Controller und Ports
echo 'auto' > '/sys/bus/pci/devices/0000:00:01.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:1c.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:1c.2/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:1c.3/power/control'

# NMI Watchdog
echo '0' > '/proc/sys/kernel/nmi_watchdog';

# SATA Controller
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.2/power/control'
for i in /sys/class/scsi_host/*/link_power_management_policy; do
  echo 'min_power' > $i
done

# Touch Screen
echo '0' > '/sys/bus/usb/devices/3-6/power/control'

# Realtek Card reader (ID:5249)
echo 'auto' > '/sys/bus/pci/devices/0000:07:00.0/power/control'

# USB Controller
echo 'auto' > '/sys/bus/pci/devices/0000:00:14.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:1a.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:1d.0/power/control'

echo 'auto' > '/sys/bus/usb/devices/usb1/power/control'
echo 'auto' > '/sys/bus/usb/devices/usb2/power/control'
echo 'auto' > '/sys/bus/usb/devices/usb3/power/control'
echo 'auto' > '/sys/bus/usb/devices/usb4/power/control'

# Wireless Controller (Intel)
echo 'auto' > '/sys/bus/pci/devices/0000:06:00.0/power/control'

# Intel UNKNOWN controller (ID 8086:0C03)
echo 'auto' > '/sys/bus/pci/devices/0000:00:04.0/power/control' # ID:0C03

# Intel USB Bluetooth controller (ID 8087:07DC)
echo 'auto' > '/sys/bus/usb/devices/3-9/power/control'

# Enable laptop mode (delay and bundle writes by 5 seconds)
echo 5 > /proc/sys/vm/laptop_mode

# Enable i915 (Intel IGD) frame buffer compression
#echo 1 >/sys/module/i915/parameters/i915_enable_fbc

# DRM vblank off delay
echo 1 >/sys/module/drm/parameters/vblankoffdelay

# Disable NFC
NFC_NO=`rfkill list | grep nfc0 | cut -d: -f 1`
rfkill block $NFC_NO

# Disable Bluetooth
BT_NO=`rfkill list | grep hci0 | cut -d: -f 1`
rfkill block $BT_NO



# Lower initial brightness
#echo 10 >/sys/class/backlight/acpi_video0/brightness


echo "Done"
exit 0

# EOF