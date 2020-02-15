./home/linden/.xprofile
systemctl --user set-environment DISPLAY=:0
systemctl --user start wallpaper.timer
xsetroot -cursor_name left_ptr
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
ibus-daemon -drx
setxkbmap
exec bspwm

