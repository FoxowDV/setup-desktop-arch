if status is-interactive
end

set TERM xterm-256color

fish_config theme choose "CatppuccinMocha"
export MANPAGER='nvim +Man!'

set -x LIBGL_DRIVERS_PATH /usr/lib/nvidia
set -x __GLX_VENDOR_LIBRARY_NAME nvidia

