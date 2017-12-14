# Reborn-OS
![Deepin_Image](/images/deepin4.png)

## Download Locations ##
- <a href="https://sourceforge.net/projects/antergos-deepin/" class="button">Sourceforge</a> 

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
2. Clone the repository:
```
git clone https://github.com/keeganmilsten/Reborn-OS
```
3. Fix file permissions in order to successfully build the ISO:
```
chmod +x /home/$USER/Reborn-OS/run.sh
sudo /home/$USER/Reborn-OS/run.sh
```
4. Install mkarchiso and create an `out` folder by running:
```
cd Reborn-OS
sudo make install
sudo mkdir out
```
5. Begin building it:
```
sudo ./build.sh -v
```
### That's it!

To rebuild the ISO, simply remove the `build` folder in addition to emptying the `out` folder. Next, re-enter the command from step 5.

### Upload Reborn OS to Sourceforge (note for Reborn OS team)

- Run `rsync -v --progress -e ssh /home/$USER/livecd/out/Reborn-OS-2017.12.13-x86_64.iso keeganmm@frs.sourceforge.net:/home/frs/project/antergos-deepin/`
`
