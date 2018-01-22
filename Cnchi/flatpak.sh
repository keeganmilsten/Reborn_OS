#!/bin/bash
# -*- coding: utf-8 -*-
#

        yad --title "Flatpak" --height=100 --width=300 --center --buttons-layout=center \
        --text="Click the button below to get started using flatpak packages. These are extra packages that are distro independent, adding more available packages to your system." --text-align=center \
        --button="Add Flatpak Repository":pkcon.sh \
        --button="Not Now":1
