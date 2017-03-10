# ethname
Self-contained FreeBSD rc.d script for re-naming devices based on their MAC address. I needed it due to USB Ethernet devices coming up in different orders across OS upgrades.

## Installation:
Copy ethname into /usr/local/etc/rc.d/

Add the following to rc.conf:
```
ethname_enable="YES"
ethname_devices="em0 ue0 ue1" # Replace with desired devices to rename
ethname_map="<MAC address> <Desired name> [<MAC> <NAME>] ..."
```
For example:
```
ethname_enable="YES"
ethname_devices="ue0 ue1"
ethname_map="01:23:45:67:89:ab eth0 01:23:45:67:89:ac eth1"
```
Will look for ue0 and ue1 with MAC addresses 01..ab and 01..ac (perhaps not
in that order) and rename the 01..ab to be eth0 and 01..ac to be eth1.

That's it. Use `ifconfig_<name>=""` settings in rc.conf with the new names.

Supports device name swapping; uses temporary names as part of the process.
