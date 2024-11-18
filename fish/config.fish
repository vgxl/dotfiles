if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path -m ~/.local/bin

set -x XMODIFIERS @im=fcitx
set -x QT_IM_MODULE fcitx

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end
