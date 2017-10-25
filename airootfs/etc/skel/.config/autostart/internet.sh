wget --spider www.google.com
if [ "$?" = 0 ]; then
  sudo pacman -Syy
else exec /home/$USER/.config/autostart/internet.sh
fi
