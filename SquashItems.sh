sed 's/<item>/^<item>/g;s/<\/item>/^<\/item>^/g' $1 | tr '^' '\n' | sed -f /SED/DeLine.item.sed | grep '<item>'