Grub
====

/etc/default/grub



Timeout
-------

Shorten grub's default timeout - often 30 seconds:

In `/etc/default/grub`:
```
GRUB_TIMEOUT_STYLE=menu
GRUB_TIMEOUT=7
GRUB_RECORDFAIL_TIMEOUT=7
```

Then `sudo update-grub`
