wtype $(grep -v '^#' ~/.local/share/snippets | wofi --dmenu --lines 8 --width 800 | cut -d' ' -f1)
