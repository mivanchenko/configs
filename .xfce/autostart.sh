#!/bin/bash

# screen
xrandr --output VGA1 --mode '1920x1080' --primary --left-of LVDS1 --output LVDS1 --off

# icons
gconftool-2 --type boolean --set /desktop/gnome/interface/buttons_have_icons true
gconftool-2 --type boolean --set /desktop/gnome/interface/menus_have_icons true
