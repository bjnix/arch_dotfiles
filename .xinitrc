#!/bin/bash

#export DE=openbox
export BROWSER=firefox-aurora

# Dbus fix
if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

#/usr/bin/xdg-user-dirs-update

# configure obmenu user
#sed -i 's/live/'$(whoami)'/' ~/.config/obmenu-generator/schema.pl \
#                            ~/.config/obmenu-generator/config.pl  



#/usr/bin/openbox-session > ~/.openbox_startup.log 2>&1

# Set Cursor
xsetroot -cursor_name left_ptr
# Start xmonad
# trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 6 --transparent true --alpha 0 --tint 0x000000 --height 16 & 
exec xmonad > ~/.xmonad_startup.log 2>&1
exec xmobar &

