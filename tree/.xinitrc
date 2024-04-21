. ~/.xprofile


# setxkbmap us colemak
xset r 66  # backspace (on capslock key) does not repeat by default
xset m 1 100 # please no mouse accel
xset r rate 300 45

# xmodmap -e "keycode 22 = Caps_Lock"
# xmodmap -e "keycode 135 = Super_R"

xinput set-prop "ETPS/2 Elantech Touchpad" "libinput Tapping Enabled" 1

# brightness and volume
xbindkeys

fcitx5 -d

xrdb -merge ~/.Xresources
xrandr --output HDMI-0 --auto --primary --output DP-5 --auto --left-of HDMI-0

exec openbox-session
# exec awesome

# vim: set ft=sh
