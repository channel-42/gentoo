#exec dbus-launch --sh-syntax --exit-with-session
setxkbmap de
xrdb -load ~/.Xresources
xrandr --output DP-2 --mode 3440x1440 --rate 100
#liquidcooler settings
doas liquidctl set fan speed 33 25 34 50 40 80 45 100
doas liquidctl set pump speed 33 50 34 65 40 80 45 100
doas liquidctl set ring color marquee-4 5f0ba2 --speed slowest
doas liquidctl set logo color fixed 19d8f0
#gpu fans off
nvidia-settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=0"
#user env
exec $HOME/scripts/bash/wpp &
exec wlc -b 200 -e Aurora -p Magenta -i 255 -f 10 &
exec picom --xrender-sync-fence &
exec slstatus &
exec unclutter & 
exec dwm 
