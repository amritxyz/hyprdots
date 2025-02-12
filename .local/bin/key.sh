wtype $(grep -v '^#' ~/.local/share/key | wofi --dmenu --lines 4 | cut -d' ' -f1)
