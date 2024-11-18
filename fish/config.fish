if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path -m ~/.local/bin

set -x XMODIFIERS @im=fcitx
set -x QT_IM_MODULE fcitx
