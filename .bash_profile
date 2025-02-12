# ~/.bash_profile
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
[[ "$(fgconsole 2>/dev/null)" -eq 1 ]] && exec Hyprland > /dev/null 2>&1
