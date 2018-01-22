#!/bin/bash
# -*- coding: utf-8 -*-
#
flatpak=`flatpak remote-add flathub https://dl.flathub.org/repo/flathub.flatpakrepo`

        yad --title "Flatpak" --height=100 --width=300 --center --buttons-layout=center \
        --text="Click the button below to get started using flatpak packages. These are extra packages that are distro independent, adding more available packages to your system." --text-align=center \
        --button="Add Flatpak Repository":$flatpak \
        --button="Not Now":1
