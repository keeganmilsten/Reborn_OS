# Reborn-OS
![Deepin_Image](/images/deepin4.png)

## Download Location ##
- Comoing Soon!
_____________

## Dependencies
- isolinux/syslinux
- arch-install-scripts
- cpio
- dosfstools
- libisoburn
- mkinitcpio-nfs-utils
- make
- opendesktop-fonts
- patch
- squashfs-tools
- lynx
- wget

## Free space

Please check that you have 5GB (or more) of free harddisk space in your root partition:
`df -h /`

## Instructions

1. Install dependencies:
```
sudo pacman -S arch-install-scripts cpio dosfstools libisoburn mkinitcpio-nfs-utils make patch squashfs-tools wget lynx
```
2. Clone this repository using `--recursive` like this:
```
git clone https://github.com/keeganmilsten/Reborn-OS.git --recursive
```
4. Install mkarchiso and createa an `out` folder by running:
```
cd Reborn-OS
sudo make install
sudo mkdir out
```
5. Build it by running this command:
```
sudo ./build.sh -v
```
6. Sadly, due to a bug that is currently being tracked down, it is currently necessary to manually edit lightdm.conf in `~/Reborn-OS/work/x86_64/airootfs/etc/lightdm/` by copy and pasting the configuration file located in `~/Reborn-OS/airootfs/etc/lightdm/`. If the lightdm directory is not present upon entering ~/Reborn-OS/work/x86_64/airootfs/etc/ , just wait a few minutes for it to be built for you. Hopefully this can all be resolved shortly, but until then, here's the work around!

To rebuild the ISO, simply remove the `build` and `Cnchi <VERSION>` folders in addition to emptying the `out` folder. Next, re-enter the command from step 5.

## Create the Reborn-OS Repo (note for Reborn OS team)

- Run `sudo repo-add /home/$USER/Dropbox/Linux/RebornOS-Repo/Reborn-OS.db.tar.xz /home/$USER/Dropbox/Linux/RebornOS-Repo/*.pkg.tar.xz`
