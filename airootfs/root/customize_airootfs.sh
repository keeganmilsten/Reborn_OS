#!/bin/bash

set -e -u

sed -i 's/#\(en_US\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

ln -sf /usr/share/zoneinfo/UTC /etc/localtime

usermod -s /usr/bin/bash root
cp -aT /etc/skel/ /root/
chmod 700 /root

sed -i 's/#\(PermitRootLogin \).\+/\1yes/' /etc/ssh/sshd_config
sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist
sed -i 's/#\(Storage=\)auto/\1volatile/' /etc/systemd/journald.conf

sed -i 's/#\(HandleSuspendKey=\)suspend/\1ignore/' /etc/systemd/logind.conf
sed -i 's/#\(HandleHibernateKey=\)hibernate/\1ignore/' /etc/systemd/logind.conf
sed -i 's/#\(HandleLidSwitch=\)suspend/\1ignore/' /etc/systemd/logind.conf

systemctl enable pacman-init.service choose-mirror.service
systemctl set-default graphical.target

# EXPEERIMENTAL

        if [ -f "/etc/systemd/system/livecd.service" ]; then
            systemctl -fq enable livecd
        fi
        systemctl -fq enable systemd-networkd
        if [ -f "/usr/lib/systemd/system/NetworkManager.service" ]; then
            systemctl -fq enable NetworkManager NetworkManager-wait-online
        fi
        if [ -f "/etc/systemd/system/livecd-alsa-unmuter.service" ]; then
            systemctl -fq enable livecd-alsa-unmuter
        fi
        if [ -f "/etc/systemd/system/vboxservice.service" ]; then
            systemctl -fq enable vboxservice
        fi
        systemctl -fq enable ModemManager
        systemctl -fq enable upower
        if [ -f "/plymouthd.conf" ]; then
            systemctl -fq enable plymouth-start
        fi
            systemctl -fq enable lightdm
            chmod +x /etc/lightdm/Xsession
       
        # Disable pamac if present
        if [ -f "/usr/lib/systemd/system/pamac.service" ]; then
            systemctl -fq disable pamac pamac-cleancache.timer pamac-mirrorlist.timer
        fi
        # Enable systemd-timesyncd (ntp)
systemctl -fq enable systemd-timesyncd

dkms autoinstall
