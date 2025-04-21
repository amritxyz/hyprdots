# Right Monitor #
wlr-randr --output HDMI-A-1 --mode 1920x1080 --right-of eDP-1
wlr-randr --output HDMI-A-1 --mode 3840x2160 --right-of eDP-1

# Mirror Primary Screen #
wlr-randr --output HDMI-A-1 --same-as eDP-1
wlr-randr --output HDMI-A-1 --mode 1920x1080 --same-as eDP-1
wlr-randr --output HDMI-A-1 --mode 3840x2160 --same-as eDP-1

# Using a Graphical Tool for Mirroring #
sudo pacman -S wayvnc

## Start VNC server ##
    $ wayvnc :1
    $ (e.g., 192.168.1.10:1).
