./home/linden/.xprofile
systemctl --user start wallpaper.timer
xsetroot -cursor_name left_ptr
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
ibus-daemon -drx
exec bspwm

