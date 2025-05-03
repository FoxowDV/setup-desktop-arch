if status is-interactive
end

fish_config theme choose "CatppuccinMocha"
export MANPAGER='nvim +Man!'
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

set -x LIBGL_DRIVERS_PATH /usr/lib/nvidia
set -x __GLX_VENDOR_LIBRARY_NAME nvidia

