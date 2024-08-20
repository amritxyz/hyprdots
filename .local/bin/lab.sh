wtype $(grep -v '^#' ~/.local/share/lab | wofi --dmenu --lines 2 | cut -d' ' -f1)
