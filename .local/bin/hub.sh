wtype $(grep -v '^#' ~/.local/share/hub | wofi --dmenu --lines 10 | cut -d' ' -f1)
