# Right Monitor
xrandr --output HDMI-1 --auto --mode 1920x1080 --right-of eDP-1
xrandr --output HDMI-1 --auto --mode 3840x2160 --right-of eDP-1

# Mirror Primary Screen
xrandr --output HDMI-1 --same-as eDP-1
xrandr --output HDMI-1 --mode 1920x1080 --same-as eDP-1
xrandr --output HDMI-1 --mode 3840x2160 --same-as eDP-1

# Using a Graphical Tool for Mirroring
sudo xbps-install -S arandr

# Using VNC or X11 Forwarding for Screen Sharing
sudo xbps-install -S tigervnc
## Start VNC server
    $ vncserver :1
    $ (e.g., 192.168.1.10:1).
