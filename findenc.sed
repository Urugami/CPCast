#usage: cat File.ext | sed -nf findenc.sed
#s/.*<enclosure.*url\s*=\s*"\([^"]\+\)".*/\1/p
/<enclosure/ s/.*<enclosure.*url\s*=\s*"\([^"]\+\)".*/\1/p
/<fileURL>/ s/.*<fileURL>\([^<]\+\)<\/fileURL>.*/\1/p