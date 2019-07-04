# ethname
Self-contained FreeBSD rc.d script for re-naming devices based on their MAC address. I needed it due to USB Ethernet devices coming up in different orders across OS upgrades.

## Installation:
Copy ethname into /usr/local/etc/rc.d/

USAGE:

Add the following to rc.conf:
```
ethname_enable="YES"
ethname_<NAME>_mac="aa:bb:cc:dd:ee:ff"
```

For example:

```
ethname_enable="YES"
ethname_external_mac="aa:bb:cc:dd:ee:00"
ethname_private_mac="aa:bb:cc:dd:ee:01"
```

You can optionally restrict handling to a set of defined names with:
```
ethname_names="external private"
```
otherwise all defined ethname_*_mac="" values are used

Make sure any interfaces you want to rename have their drivers loaded or
compiled in. If externnal is on axe0, for example, add 'if_load_axe="YES"' to
/boot/loader.conf. See the man page for your device (eg 'man axe') for
particulars.

That's it. Use ifconfig_<NAME>="" settings with the new names.

 All other devices are untouched.

 Optional rc.conf settings:
```
   ethname_timeout : Maximum wait time for devices to appear. [default=30]
```

That's it. Use `ifconfig_<name>=""` settings in rc.conf with the new names.

Supports device name swapping; uses temporary names as part of the process.

This version is has a new simplified interface, but will support the old
echname_map and ethname_devices configurations, as well.
