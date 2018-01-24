#!/usr/bin/bash
echo "Correcting file permissions"
chmod +x ${work_dir}/Cnchi/postinstall.sh
chmod +x ${work_dir}/Cnchi/10_antergos
chmod +x ${work_dir}/Cnchi/pkcon.sh
chmod +x ${work_dir}/Cnchi/pkcon2.sh
chmod +x ${work_dir}/Cnchi/flatpak.sh
chmod +x ${work_dir}/build.sh
chmod +x ${work_dir}/translations.sh
chmod +x ${work_dir}/airootfs/etc/skel/.config/autostart/internet.sh
chmod +x ${work_dir}/airootfs/etc/systemd/scripts/choose-mirror
chmod +x ${work_dir}/airootfs/root/.automated_script.sh
chmod +x ${work_dir}/airootfs/root/customize_airootfs.sh
chmod +x ${work_dir}/airootfs/usr/bin/cnchi-start.sh
chmod +x ${work_dir}/airootfs/usr/bin/internet.sh
echo "DONE"
