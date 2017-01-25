/amazon/ {
   s/<img[^>]*assoc-amazon[^>]*>//g
   s/<a[^>]*obidos[^>]*>[^<]*<\/a>//g
   }
/<form/  {
   : formtop
   /<form .*<\/form>/! { N; s/\n/ /; }
   /<form.*<\/form>/! b formtop
   s/<form.*\/form>//
   }
/phobos/  {
   : phobotop
   /<a .*<\/a>/! { N; s/\n/ /; }
   /<a.*<\/a>/! b phobotop
   s/<img[^>]*i-tunes[^>]*>//g
   s/<img[^>]*itunes[^>]*>//g
   s/<a[^>]*phobos[^>]*>[^<]*<\/a>//g
#   s/<p>  *<\/p>//
   }
/<script/  {
   : scriptop
   /<script .*<\/script>/! { N; s/\n/ /; }
   /<script.*<\/script>/! b scriptop
   s/<script.*\/script>//
   }
/tellafriend/ {
   s/<img[^>]*tellafriend[^>]*>//g
   s/<a[^>]*tellafriend[^>]*><\/a>//g
   }
/ *<p>/ s/ *<p>/<p>/g
/<b>/ {s/<b>//g;}
/<br/ {s/<br[^>]*> */<br \/>/g;}
/<br>/ {s/<br>/<br \/>/g;}
/<center>/ {s/<center>//g;s/<\/center>//g;}
/<em>/ {s/<em>//g;s/<\/em>//g;}
/<font/ {s/<font[^>]*>//g;}
/<p / {s/<p [^>]*>/<p>/g;}
/<span/ {s/<span[^>]*>//g;s/<\/span>//g;}
/<strong/ {s/<strong[^>]*>//g;}
/<u>/ {s/<u>//g;}
/<\/b>/ {s/<\/b>//g;}
/<\/font>/ {s/<\/font>//g;}
/<\/strong>/ {s/<\/strong>//g;}
/<\/u>/ {s/<\/u>//g;}
/align/ {s/align="[^"]*"//g;}
/CDATA/ {s/CDATA\[<p>/CDATA\[/g;s/CDATA\[^<p>/CDATA\[/g;}
/li>/ {s/<\/li><li>/@CRLF/g;}
/nospam@nospam/ {s/.nospam@nospam./@/;s/<author>/^<author><![CDATA[/;s/<\/author>/]]><\/author>^/;}
/p>/ {s/<\/p><p>/@CRLF/g;}
/rel=/ {s/ rel="[^"]*"//g;}
/start-survey/ s/<p><a [^>]*start-survey[^>]*>[^>]*<\/a><\/p>//
/style/ {s/style="[^"]*"//g;}
/type=/ s/ type="[^"]*"//g
/ul>/ {s/<\/li><\/ul><\/p>/@CRLF/g;}
/ul>/ {s/<\/li><\/ul>\^<\/p>/@CRLF/g;}
/ul>/ {s/<\/p><ul><li>/@CRLF/g;}
/ul>/ {s/<\/p>\^<ul><li>/@CRLF/g;}
s/\^ */^/g
s/ *alt="[^"]*"//g
s/ *class="[^"]*"//g
s/ *style="[^"]*"//g
s/ *title="[^"]*"//g
s/ *width="[^"]*"//g
s/ *xmlns:itunes="[^"]*"//g
s/ isPermaLink="[^"]*"//g
s/&#8482;//g
s/&amp\;/\&/g
s/&amp\;/\&/g
s/&nbsp;/ /g
s/&quot;/"/g
s/<a[^>]*><img[^>]*><\/a>//g
s/<br \/>/@CRLF/g
s/<h1>//g
s/<itunes:/^</g
s/<object.*src="\([^"]*\)".*object>/<\1>/g
s/<p> *<\/p>//g
s/<p>.*feedads.googleadservices.com.*<\/p>//g
s/<p>.*meviooffers.com\/godaddy-coupons.*<\/p>//g
s/<p>.*www.GoToMyPC.com\/podcast.*<\/p>//g
s/<p>.*www.petmeds.com\/daddy.*<\/p>//g
s/<\/a> *<a/<\/a>@CRLF<a/g
s/<\/h1>//g
s/<\/itunes:\([^>]*\)>/<\/\1>/g
s/<\/li><li>/@CRLF/g
s/<\/li><\/ul><p>/@CRLF/g
#s/<\/p>..><//g
s/<\/p><ul><li>/@CRLF/g
s/<\/p>\^<p>/@CRLF/g
s/content:encoded/encoded/g
s/dc:creator/creator/g
s/enclosure/fileURL/g
s/en_closure/fileURL_3/g
s/feedburner:origEnclosureLink/fileURL_2/g
s/feedburner:origLink/epiURL_1/g
s/height="[^"]*" *//g
s/id="[^"]*" *//g
s/media:content/fileURL_1/g
/\^\^/ {s/\^\^/\^/g;}
s/wfw:commentRss/epiRSS/g