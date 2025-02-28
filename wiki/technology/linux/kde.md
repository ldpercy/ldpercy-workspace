KDE
===


https://kde.org/announcements/megarelease/6/


https://store.kde.org/browse/




Features
--------

KDE Plasma Virtual Desktops and Activities (what's the difference?) Joe Longo
https://www.youtube.com/watch?v=fWKbZlPI12Y

	ctrl+f1, ctrl+f2 etc to switch desktops

I think it's grouped like this:

	activity 1
		a1 desktop 1
		a1 desktop 2
	activity 2
		a2 desktop 1
		a2 desktop 2


Software & Applications
-----------------------

https://news.softpedia.com/news/kde-announces-systemdgenie-a-graphical-tool-for-managing-systemd-and-user-units-511119.shtml

https://userbase.kde.org/Plasma_application_launchers


### Muon

Is being removed from repositories, have to use Synaptic (gtk) instead.


### Note taking

https://apps.kde.org/en-gb/marknote/




Upgrading Kubuntu
-----------------

	pkexec do-release-upgrade -m desktop -f DistUpgradeViewKDE



Issues
------

Reset displays after turning one off:
	https://superuser.com/questions/1428997/reset-display-defaults-in-kde
	Press super (win) + p and release both



When kde taskbar crashes (hopefully won't be needed under 6):
	plasmashell --replace &






Standard date format to iso8601
-------------------------------
Things like dolphin use system date/time settings

To set the global date format to iso8601:

Override date format in Settings -> Langauge & Time -> Region & Language -> Time

Best results so far with en_CA (Canadian) - rsgain was giving errors with en_SE (Swedish).

Might need to reboot.

Or some combo of:

	sudo locale-gen en_CA.UTF-8

	echo $LC_TIME

	sudo localectl set-locale LC_TIME=en_CA.utf8

	/etc/default/locale


