wtype $(grep -v '^#' ~/.local/share/snippets | wofi --dmenu --lines 10 | cut -d' ' -f1)
