gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout '0' && gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-timeout '0'
wget --spider www.google.com
if [ "$?" = 0 ]; then
  sudo pacman -Syy
  sudo pacman-key --init
  sudo pacman-key --populate archlinux antergos
  sudo pacman-key --refresh-keys
  sudo pacman -Syy
else exec /home/$USER/.config/autostart/internet.sh
fi
