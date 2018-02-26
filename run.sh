#!/usr/bin/bash
echo "Correcting file permissions"
sudo chmod +x $PWD/Cnchi/postinstall.sh
sudo chmod +x $PWD/Cnchi/10_antergos
sudo chmod +x $PWD/build.sh
sudo chmod +x $PWD/translations.sh
sudo chmod +x $PWD/airootfs/etc/skel/.config/autostart/internet.sh
sudo chmod +x $PWD/airootfs/etc/systemd/scripts/choose-mirror
sudo chmod +x $PWD/airootfs/root/.automated_script.sh
sudo chmod +x $PWD/airootfs/root/customize_airootfs.sh
sudo chmod +x $PWD/airootfs/usr/bin/cnchi-start.sh
sudo chmod +x $PWD/airootfs/usr/bin/internet.sh
echo "DONE"
