FROM cloudwarelabs/xorg:latest
RUN apt-get update
RUN apt-get install dictionaries-common
RUN /usr/share/debconf/fix_db.pl && dpkg-reconfigure dictionaries-common
RUN apt-get install -y gnome-themes-standard xfce4
RUN apt-get remove -y xscreensaver xscreensaver-data
RUN mkdir -p /root/.config/xfce4/xfconf/xfce-perchannel-xml
RUN mkdir -p /root/.config/autostart
ENTRYPOINT start xfce4
