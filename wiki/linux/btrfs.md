BTRFS
=====



https://btrfs.wiki.kernel.org/index.php/Main_Page#External_Btrfs_Documentation_.2F_Guides

https://btrfs.wiki.kernel.org/index.php/Manpage/btrfs(5)#MOUNT_OPTIONS
https://btrfs.wiki.kernel.org/index.php/Manpage/btrfs-subvolume


https://btrfs.wiki.kernel.org/index.php/FAQ#Can_I_have_nodatacow_.28or_chattr_.2BC.29_but_still_have_checksumming.3F

https://btrfs.wiki.kernel.org/index.php/UseCases#Snapshots_and_subvolumes

https://btrfs.wiki.kernel.org/index.php/Incremental_Backup

https://btrfs.wiki.kernel.org/index.php/SysadminGuide#When_To_Make_Subvolumes
https://btrfs.wiki.kernel.org/index.php/Project_ideas#Cleanup_projects


https://wiki.archlinux.org/index.php/Btrfs
https://help.ubuntu.com/community/btrfs
https://www.reddit.com/r/btrfs/

https://facebookmicrosites.github.io/btrfs/docs/btrfs-facebook.html



Luigi Tech - BACKUP: RSYNC vs BTRFS SEND/RECEIVE on Linux
	https://www.youtube.com/watch?v=0JreEvSQK-0



Subvolumes
----------

The base btrfs partition is the 'root' subvolume.

Example output from `sudo btrfs subvolume show -h /my-btrfs-partition`:

	/
		Name:				<FS_TREE>
		UUID:				[...]
		Parent UUID:		-
		Received UUID:		-
		Creation time:		[...]
		Subvolume ID:		5
		Generation:			12345
		Gen at creation:	0
		Parent ID:			0
		Top level ID:		0
		Flags:			-
		Send transid:		0
		Send time:			[...]
		Receive transid:	0
		Receive time:		-
		Snapshot(s):
							my-subvolume
		Quota group:		n/a

Child subvolumes have the root subvolume as their parent - `sudo btrfs subvolume show -h my-subvolume`:

	my-subvolume
		Name: 				my-subvolume
		UUID: 				[...]
		Parent UUID: 		[...]
		Received UUID: 		-
		Creation time: 		[...]
		Subvolume ID: 		123
		Generation: 		54321
		Gen at creation: 	43210
		Parent ID: 			5
		Top level ID: 		5
		Flags: 				-
		Send transid: 		0
		Send time: 			[...]
		Receive transid: 	0
		Receive time: 		-
		Snapshot(s):
							my-subvolume.snapshot
		Quota group:		n/a


Tools
-----

### Timeshift

https://github.com/linuxmint/timeshift

While the timeshift gui is running system snapshots are visible the directory:

	/run/timeshift/12345/backup/timeshift-btrfs/

Where '12345' is an arbitrary number that changes with each launch of the program.
It also makes other system snapshots visible in `/run/timeshift/12345/backup/`.

Upon shutdown the directory disappears.


### btrfs-assistant


https://gitlab.com/btrfs-assistant/btrfs-assistant

Not in Ubuntu 24.04 LTS/Neon yet.


### BTRFS Subvolume Manager Service Menu for Dolphin

https://store.kde.org/p/1214134
requires notify-send
which is in libnotify-bin

	To install, place the "subvol_manager.desktop" file and the "subvol_manager-scripts" folder and it's contents into:
	Plasma 6:
	~/.local/share/kio/servicemenus


### btrfs-heatmap

https://github.com/knorrie/btrfs-heatmap
