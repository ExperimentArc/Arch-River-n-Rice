if status is-interactive
	alias ls='ls --color=auto'
	alias grep='grep --color=auto'
	abbr -a in sudo pacman -Sy
	abbr -a fk sudo pacman -Rns
	abbr -a nv nvim
	abbr -a up sudo pacman -Syu
	set -gx EDITOR nvim
	set -gx VISUAL kate
	set -gx QT_QPA_PLATFORM wayland
	set -gx BROWSER firefox
	set -gx FILE_MANAGER y
	set -gx TERMINAL footclient
	set -gx XDG_CONFIG_HOME ~/.config
	set -gx XDG_CACHE_HOME ~/.cache
	set -gx XDG_DATA_HOME ~/.local/share
	set -gx XDG_SESSION_TYPE wayland
	function y
	    set tmp (mktemp -t "yazi-cwd.XXXXXX")
	    yazi $argv --cwd-file="$tmp"
	    if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
      end
end
