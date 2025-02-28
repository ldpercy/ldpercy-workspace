Linux Snippets
==============



Systemd
-------

service --status-all



https://www.linode.com/docs/guides/introduction-to-systemctl/

sudo systemctl start bluetooth
sudo systemctl restart bluetooth
sudo systemctl reload-or-restart bluetooth


loginctl unlock-session 4


sudo
----

	sudo usermod -aG sudo alice

Seems to require reboot (logout/login not enough)


ISO write with dd
-----------------


	sudo dd status=progress if=imageFile.iso of=/dev/sdg




Bluetooth
---------

https://api.kde.org/frameworks/bluez-qt/html/index.html

sudo systemctl start bluetooth
sudo systemctl restart bluetooth
sudo systemctl reload-or-restart bluetooth

rfkill
