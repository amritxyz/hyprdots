wtype $(grep -v '^#' ~/.local/share/snippets | wofi --dmenu --lines 8 | cut -d' ' -f1)
