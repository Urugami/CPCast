/strong>/ s/<\/*strong>//
/u>/ s/<\/u*>//
/b>/ s/<\/b*>//
/category[ >]/ d
/<p>.*[Ss]ponsor.*isc=gnc1006g.*<\/p>/ d
/<p>/ s/<p>.*[Ss]ponsor.*isc=gnc1006g.*<\/p>//
/<p>.*[Ss]ponsor.*[Gg]o[Tt]o[Mm]eeting\.com\/techpodcasts*/ d
/<p>/ s/<p>.*[Ss]ponsor.*[Gg]o[Tt]o[Mm]eeting\.com\/techpodcasts*<\/p>//
/\/wa\/viewPodcast?id=73331167/ d
/<p>/ s/<p>Twitter Me.*<br \/>/<p>@CRLF@CRLF/
/<p>/ s/<p>.*[Tt]witter.*<br \/>\([^<]*\)<\/p>/@CRLF\1@CRLF/
/<p>/ s/<p>Listener Link/<p>@CRLF@CRLFListener Link/
/<p>/ s/<p>Show Notes/<p>@CRLF@CRLFShow Notes/
/<p>/ s/<p>Show Topic Notes/<p>@CRLF@CRLFShow Topic Notes/
/<p>/ s/<br \/>/@CRLF/g
/<p>/ s/<p>//;s/<\/p>//
/<item>/,/<\/item>/ {
   /item>/ s/<item>/^|<item>^/;s/<\/item>/^|<\/item>^/
      /title>/ {
      s/<title>/^|<title>/
      s/<\/title>/<\/title>^/
      }
   /content:encoded>/ {
      s/<content:encoded>/^|<description>/
      s/<\/content:encoded>/<\/description>^/
      }
   /<guid>/ s/<guid>/^|<epiURL>/;s/<\/guid>/<\/epiURL>^/
   /<pubDate>/ s/<pubDate>/^|<pubDate>/;s/<\/pubDate>/<\/pubDate>^/
   /<enclosure/ {
      s/<enclosure\(.* length="\)\([0-9]*\)\(.*\)\/>/<enclosure\1\2\3\/>^|<size>\2<\/size>^/
      s/<enclosure\([^>]*>\)/^|<enclosure\1^/
      s/ length="[^"]*"//;s/ type="[^"]*"//
      s/<enclosure url="\([^"]*\)" \/>/<fileURL>\1<\/fileURL>/
      }
   }
/CDATA/ s/CDATA\[ /CDATA[/