KDE
===

https://kde.org/announcements/

https://store.kde.org/browse/



Software & Applications
-----------------------

* KCron - cron gui plugin for System Settings;  appears under 'Session'
* kde-config-flatpak - flatpak admin module for System Settings; becomes available in 'Application Permissions'
* Package management - Muon is being removed from repositories, have to use Synaptic (gtk) instead

https://news.softpedia.com/news/kde-announces-systemdgenie-a-graphical-tool-for-managing-systemd-and-user-units-511119.shtml

https://userbase.kde.org/Plasma_application_launchers


### Kate

Language servers:
* https://github.com/bash-lsp/bash-language-server
* https://github.com/artempyanykh/marksman
* https://github.com/redhat-developer/vscode-xml#lemminx-binary


### KAlarm

	~/.config/kalarmrc					basic app settings
	~/.config/kalarmresources			registered calendar files

* Is added as an autostart item in `~/.config/autostart`
* Unavailable calendar files appear in the ui, but need to be reloaded once they become accessible to take effect


### Note taking

https://apps.kde.org/en-gb/marknote/



Settings
---------

### Autostart

Entries are stored as desktop items in `~/.config/autostart`.


### Date format to iso8601

Dolphin follows the user's locale settings (which are based upon the system [default locale](locale.md) set during install).

Most locales don't use iso8601 for their date format so need to specify a time locale that does, such as en_CA (Canadian English) eh. Sorry.

Settings -> Language & Time -> Region & Language -> Time

This gets stored in `~/.config/plasma-localerc` - example:
```
[Formats]
LANG=en_AU.UTF-8
LC_TIME=en_CA.UTF-8
```



Virtual Desktops and Activities
-------------------------------

KDE Plasma Virtual Desktops and Activities (what's the difference?) Joe Longo
https://www.youtube.com/watch?v=fWKbZlPI12Y

	ctrl+f1, ctrl+f2 etc to switch desktops

Grouped like this:

	activity 1
		a1 desktop 1
		a1 desktop 2
	activity 2
		a2 desktop 1
		a2 desktop 2





Kubuntu release upgrades
------------------------

	pkexec do-release-upgrade -m desktop -f DistUpgradeViewKDE





Issues
------

Reset displays after turning one off:
	https://superuser.com/questions/1428997/reset-display-defaults-in-kde
	Press super (win) + p and release both



When kde taskbar crashes (hopefully won't be needed under 6):
	plasmashell --replace &

