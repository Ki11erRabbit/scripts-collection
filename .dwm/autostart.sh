#!/bin/sh

###---Xrandr---###
#xrandr --output HDMI-A-0 --left-of DisplayPort-1 --output DisplayPort-1
xrandr --output DisplayPort-0 --off --output DisplayPort-1 --mode 1920x1080 --pos 1920x0 --rotate normal --output DisplayPort-2 --off --output HDMI-A-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal

###---Autostart---###
#dunst &
deadd-notification-center &
picom --experimental-backend &
fcitx -d &
copyq &
dwmblocks &
~/.dwm/DWM/dwm-autostart.sh &
playerctld daemon &
vdirsyncer sync &
flameshot &

#trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 10 --height 18 &

/usr/lib/pentablet/pentablet.sh &

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

kdeconnect-indicator &
./pcloud.sh &
mullvad-vpn &
mailnag &
steam -silent &
pamac-daemon &
pamac-tray &
wmname LG3D &


###---Wallpaper---###
feh --bg-scale /home/ki11errabbit/Pictures/Wallpapers/tMrvygQ.jpeg


###---lockscreen---###
~/.dwm/scripts/lock.sh &

###---Hot Corners---###
~/.dwm/scripts/hotcorners.sh &


###env variables
export WEATHER_OPTION=0 &

