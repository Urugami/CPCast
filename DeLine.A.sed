/^<a /  {
   : top
   /^<a .*<\/a>/! N; s/\n//
   /^<a .*<\/a>/! b top
#   p
}