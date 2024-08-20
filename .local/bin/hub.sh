wtype $(grep -v '^#' ~/.local/share/hub | wofi --dmenu --lines 2 | cut -d' ' -f1)
