#!/usr/bin/env sh
DIRS=$(find . -mindepth 1 -maxdepth 1 -type d)

getpubKeys() {
    echo "$(cat ~/.ssh/*.pub)"
}

wget -O kitty.terminfo https://raw.githubusercontent.com/kovidgoyal/kitty/master/terminfo/kitty.terminfo

for dir in $DIRS; do
    echo "$(getpubKeys)" > "$dir/authorized_keys"
    cp *.terminfo "$dir"
    cp bootstrap.sh "$dir"
    chmod +x "$dir/bootstrap.sh"
done

