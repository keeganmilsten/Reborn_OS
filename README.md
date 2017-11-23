# Reborn-OS
![Deepin_Image](/images/deepin4.png)

## Download Locations ##
- <a href="https://github.com/keeganmilsten/Reborn-OS" class="button">Coming Soon</a> 

# To Manually Build Yourself

### Dependencies
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

### Free space

Please check that you have 5GB (or more) of free harddisk space in your root partition:
`df -h /`

### Instructions

1. Install dependencies:
```
sudo pacman -S arch-install-scripts cpio dosfstools libisoburn mkinitcpio-nfs-utils make patch squashfs-tools wget lynx
```
2. Clone this repository using `--recursive` like this:
```
git clone https://github.com/keeganmilsten/Reborn-OS.git --recursive
```
4. Install mkarchiso and create an `out` folder by running:
```
cd Reborn-OS
sudo make install
sudo mkdir out
```
5. Build it by running these commands:
```
chmod +x /home/$USER/Reborn-OS/run.sh
sudo /home/$USER/Reborn-OS/run.sh
sudo ./build.sh -v
```

To rebuild the ISO, simply remove the `build` folder in addition to emptying the `out` folder. Next, re-enter the command from step 5.

### Create the Reborn-OS Repo (note for Reborn OS team)

- Run `sudo repo-add /home/$USER/Dropbox/Linux/RebornOS-Repo/Reborn-OS.db.tar.xz /home/$USER/Dropbox/Linux/RebornOS-Repo/*.pkg.tar.xz`
