FILES=".config/nvim .config/i3 .config/i3blocks .config/dunst"

BASE=$(dirname $(readlink -f $0))

for ITEM in $FILES; do
    rm -rf "$HOME/$ITEM"
    ln -s "$BASE/$ITEM" "$HOME/$ITEM"
done
