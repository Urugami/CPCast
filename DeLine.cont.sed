/^<content:encoded>/  {
   : top
   /^<content:encoded>.*<\/content:encoded>$/! N; s/\n/ /
   /^<content:encoded>.*<\/content:encoded>$/! b top
#   p
}