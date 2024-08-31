wtype $(grep -v '^#' ~/.local/share/chars/emoji | wofi --dmenu --lines 8 | cut -d' ' -f1)
