#!/usr/bin/env sh
DIRS=$(find . -mindepth 1 -maxdepth 1 -type d)

getpubKeys() {
    echo "$(cat ~/.ssh/*.pub)"
}

for dir in $DIRS; do
    echo "$(getpubKeys)" > "$dir/authorized_keys"
done

