/<[Aa] / {
   s/<A HREF/<a href/
   s/<A /<a /
   s/ rel="[^"]*"//
   s/ id="[^"]*"//
   s/ target="[^"]*"//
   s/ style="[^"]*"//
   s/ title="[^"]*"//
   s/ name="[^"]*"//
   s/<a *><\/a>//
   s/<a>@CRLF//
   }
/<\/A>/ s/<\/A>/<\/a>/
/B>/ {
   s/<B>/<b>/
   s/<\/B>/<\/b>/
   }
/<[IMG|img]/ {
   s/<IMG SRC/<img src/
   s/ BORDER="[^"]*"//
   s/ border="[^"]*"//
   s/ align="[^"]*"//
   s/ alt="[^"]*"//
   s/ class="[^"]*"//
   s/ height="[^"]*"//
   s/ hspace="[^"]*"//
   s/ title="[^"]*"//
   s/ vspace="[^"]*"//
   s/ width="[^"]*"//
   }
   /<img / {
      s/<img[^>]*src="\([^"]*\)"[^>]*>/<img src="\1">/
      s/<img[^>]*src='\([^']*\)'[^>]*>/<img src="\1">/
   }
   /<a / {
      s/<a[^>]*href="\([^"]*\)"[^>]*>/<a href="\1">/
      s/<a[^>]*href='\([^']*\)'[^>]*>/<a href="\1">/
   }
/<[BR|br]/ {
   s/<BR[^>]*>/<br \/>/
   s/<br[^>]*>/<br \/>/
   }
/<P/ {
   s/<P [^>]*>/<p>/
   s/<P>/<p>/
   s/<\/P>/<\/p>/
   }
/<ul/ s/<ul [^>]*>/<ul>/
/<p / s/<p [^>]*>/<p>/
/<[Hh][0-9] / s/<[Hh]\(.\) [^>]*>/<h\1>/
/<guid / s/<guid [^>]*>/<guid>/
/<em / s/<em [^>]*>/<em>/
/<\/*em>/ d
/<\/*b>/ d
/<\/*i>/ d
/<\/*sup>/ d
/<\/*o:p>/ d
/<\/*st1:[^>]*>/ d
/<span / s/<span [^>]*>/<span>/
/<strong / s/<strong [^>]*>/<strong>/
/<font/ s/<font [^>]*>/<font>/
/&amp;/ {
   s/&amp;#34;/"/g
   s/&amp;#60;/</g
   s/&amp;#62;/>/g
   s/&amp;#8217;/'/g
   s/&amp;#8220;/'/g
   s/&amp;#8221;/'/g
   s/&amp;amp;/\&/g
   s/&amp;&amp;/\&/g
   s/&amp;#8230;/.../g
   s/&amp;mdash;/-/g
   s/&amp;/\&/g
   }
/&#/ {
   s/&#38;/\&/g
   s/&#39;/'/g
   s/&#95;/_/g
   s/&#038;/\&/g
   s/&#039;/'/g
   s/&#124;/|/g
   s/&#160;/ /g
   s/&#215;/x/g
   s/&#8211;/-/g
   s/&#8212;/-/g
   s/&#8216;/'/g
   s/&#8217;/'/g
   s/&#8220;/'/g
   s/&#8221;/'/g
   s/&#8230;/.../g
   s/&#8242;/'/g
   s/&#8243;/"/g
   }
/&/ {
   s/&rsquo;/'/g
   s/&ndash;/-/g
   s/&lt;/</g
   s/&gt;/>/g
   }
/#/ {
   s/#38;amp;/\&/g
   s/#38;/\&/g
   s/#124;/|/g
   }
/nbsp/ {
   s/&nbsp;/ /g
   s/nbsp;/ /g
   }
/<description>/,/<\/description>/ {
   /;/ {
      s/&quot;/"/g
      s/squo;/'/g
      s/ldquo;/'/g
      s/rdquo;/'/g
      s///g
      }
   }
/�/ {
   s/’/'/g
   s/’r/'/g
   s/’s/'/g
   s/’/'/g
   s/“/'/g
   s/”/'/g
   s/…/.../g
   s/—/-/g
   }

/�/ {
   s/â/'/g
   s/ //
   }
