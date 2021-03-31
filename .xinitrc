xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --output eDP-1-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-1 --primary --mode 1920x1080  --rate 144.00 --pos 1920x0 --rotate normal --output HDMI-1-1 --off --output HDMI-1-2 --off
xrdb -load .Xresources
xsetroot -cursor_name left_ptr
exec dbus-launch --sh-syntax --exit-with-session xmonad
#exec xrdb -merge .Xresources

