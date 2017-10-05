# Reborn-OS

## Dependencies
- antergos-gfxboot for a graphical boot (or isolinux/syslinux)
- arch-install-scripts
- cpio
- dosfstools
- gfxboot
- libisoburn
- mkinitcpio-nfs-utils
- make
- opendesktop-fonts
- patch
- squashfs-tools
- wget

## Free space

Please check that you have 5GB (or more) of free harddisk space in your root partition:
`df -h /`

## Instructions

1. Install dependencies:
```
sudo pacman -S arch-install-scripts cpio dosfstools gfxboot libisoburn mkinitcpio-nfs-utils make patch squashfs-tools wget
```
2. Clone this repository using `--recursive` like this:
```
git clone https://github.com/keeganmilsten/Reborn-OS.git --recursive
```
4. Install mkarchiso by running:
```
cd Reborn-OS
sudo make install
```
5. Build it by running this command:
```
sudo ./build.sh -v
```
To rebuild it, simply remove the `build` and `out` folders and re-enter the command from step 5.
