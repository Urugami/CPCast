# Get list of enclosure URLs in new XML file
sed -nf /SED/findenc.sed $1 > NewList.txt

# Strip Path info - we only need filenames for the next step
sed 's/.*\///' NewList.txt > NewFiles.txt

# Get list of filenames we've downloaded already
grep -f NewFiles.txt gotURLs.txt | sed 's/^.*\///' > gotFiles.txt

# From list of enclosures, remove lines with files we already have
grep -vf gotFiles.txt NewList.txt > NeedURLs.txt

# Copy URLs we're going to downlod to the list of URLs we already have, with echo to screen
cat NeedURLs.txt | tee -a gotURLs.txt

# Save out XML info from URLs that we're going to download
sh SquashItems.sh $1 | grep -f NeedURLs.txt | sed 's/<\/\([^>]*\)>/<\/\1>\^/g;s/<item>/<item>^/' | tr '^' '\n' | sed -f /SED/DeLine.desc.sed | sed -f /SED/DeLine.cont.sed   >> RSS.$2.txt