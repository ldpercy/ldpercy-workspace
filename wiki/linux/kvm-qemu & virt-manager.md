kvm-qemu & virt-manager
=======================

https://ubuntu.com/blog/kvm-hyphervisor
https://phoenixnap.com/kb/ubuntu-install-kvm


Installation
------------

sudo apt install
	qemu-kvm libvirt-clients bridge-utils libvirt-daemon-system
	virt-manager


Set file access control list on a directory needed by libvirt-qemu:

	setfacl -m u:libvirt-qemu:x qemu-kvm/


Add user to libvirt-qemu group:

	$ sudo adduser $USER libvirt-qemu


Virtual Machine setup
---------------------

### Disks

Use disk ids rather than ordinary /dev/sdX names:

	/dev/disk/by-id/xxxxxxxxx


### i440FX & Q35

General recommendation is to use `Q35`.


### Firmware

	BIOS						- oldschool, distros want to use mbr/dos
	UEFI						- Normally use this
		OVMF_CODE_4M.fd
		OVMF_CODE_4M.ms.fd			- i think these two are the same, used for actual secure boot
		OVMF_CODE_4M.secboot.fd		- as above
		OVMF.amdsev.fd











Linux guest agent: spice-vdagent
--------------------------------

On the guest the bare minimum required is:

	sudo apt install spice-vdagent

Then each login:

	service spice-vdagent start
	spice-vdagent

That gets screen resizing working, might not get clipboard sharing going (possibly a reboot required).

	systemctl enable spice-vdagentd

A scripted version here used for kubuntu:

	[Start spice-vdagent](<./start spice-vdagentd.md>)

### Ubuntu guest

The above method works for Kubuntu for both screen resizing and clipboard sharing

### OpenSUSE guest

Both screen resizing and clipboard sharing worked out-of-the-box on Tumbleweed.

### Debian guest

Could get screen screen resizing working using the above method, but not clipboard sharing.
Possible things to check:
	display-spice address hypervisor default
	channel-spice target virtio
	spicevmc disconnected

