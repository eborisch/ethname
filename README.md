# ethname
Self-contained FreeBSD rc.d script for re-naming devices based on their MAC address.

## USAGE:
Add the following to rc.conf:
```
ethname_enable="YES"
ethname_devices="em0 ue0 ue1" # Replace with desired devices to rename
```
Create /usr/local/etc/ifmap in the following format: `<MAC address (in lower case)> <Desired name>`

Example /usr/local/etc/ifmap contents:
```
01:23:45:67:89:ab eth0
01:23:45:67:89:ac eth1
```
That's it. Use `ifconfig_<name>=""` settings in rc.conf with the new names.

Supports device name swapping; uses temporary name as part of the process.
