#usage: cat File.ext | sed -nf fixlinks.sed
#s/^\(.*\)<a href="\([^<]*\)">\([^<]*\)<\/a>\(.*$\)/\1\3-<\2>\4/gp
/href=/ {
 :top
  s/^\(.*\)<a .*href= *"\(.*\)">\(.*\)<\/a>\(.*\)$/\1\3-<\2>\4/;
  t top;
#  p
}