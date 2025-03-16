wtype $(grep -v '^#' ~/.local/share/key | wofi --dmenu --lines 4 --width 500 --cache=/dev/null | cut -d' ' -f1)
