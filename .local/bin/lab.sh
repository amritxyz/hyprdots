wtype $(grep -v '^#' ~/.local/share/lab | wofi --dmenu --lines 10 | cut -d' ' -f1)
