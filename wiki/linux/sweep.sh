#!/bin/bash


# A bunch of places that get crufted up:


rm ~/.cache/vlc/art/*

rm ~/.cache/drkonqi/crashes/*
rm ~/.cache/drkonqi/application-not-responding/*

rm ~/.cache/thumbnails/*/*

rm ~/.config/kfindrc
## rm  ~/.config/QtProject.conf




rm ~/.local/share/RecentDocuments/*
rm ~/.local/share/kwrite/anonymous.katesession
rm ~/.local/state/kwritestaterc
rm ~/.log/vlc.log
## rm ~/.local/share/okular/docdata/*


## gtk settings (not very reliable)
# configs:
#	~/.gtkrc-2.0
#	~/.config/gtk-3.0/settings.ini
#	~/.config/gtk-4.0/settings.ini
#
# gtk-recent-files-max-age=0
# gtk-recent-files-limit=0


echo '' > ~/.local/share/recently-used.xbel
echo '' > ~/.local/share/user-places.xbel