/<item>/,/<\/item>/ {
   /item/ {
      s/<item>/^|<item>^/
      s/<\/item>/^|<\/item>^/
      }
   /title>/ {
      s/<title>/^|<title>/
      s/<\/title>/<\/title>^/
      }
   /guid>/ {
      s/<guid>/^|<epiURL>/
      s/<\/guid>/<\/epiURL>^/
      }
   /description>/ {
      s/<description>/^|<description>/
      s/<\/description>/<\/description>^/
      }
   /content:encoded>/ {
      s/<content:encoded>/^|<encoded>/
      s/<\/content:encoded>/<\/encoded>^/
      }
   /pubDate>/ {
      s/<pubDate>/^|<pubDate>/
      s/<\/pubDate>/<\/pubDate>^/
      }
   /<enclosure/ {
      s/length="\([^"]*\).*"/^|<size>\1<\/size>^/
      s/url="\([^"]*\)"/^|<fileURL>\1<\/fileURL>^/
      }
   /<feedburner:origEnclosureLink/ {n
      s/\(.*\)/^|<fileURL1>\1<\/fileURL1>^/
      }
   /<media:content/ {
      s/\url="\([^"]*\)"/^|<fileURL2>\1<\/fileURL2>^/
      }
   /author>/ {
      s/<author>/^|<author>/
      s/<\/author>/<\/author>^/
      }
   /link>/ {
      s/<link>/^|<epiURL>/
      s/<\/link>/<\/epiURL>^/
      }
  }
   