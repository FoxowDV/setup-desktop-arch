#
sudo cp -f ./pacman.conf /etc/pacman.conf


#
mapfile -t packages < <(grep -v '^#' "$./ashy.packages" | grep -v '^$')
sudo pacman -S --noconfirm --needed "${packages[@]}"


#
yayFlags='-q --save --answerclean N --answerdiff N --cleanmenu=false --diffmenu=false --norebuild'

sudo git clone https://aur.archlinux.org/yay.git && cd yay && yes | makepkg -si
