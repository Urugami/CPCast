/<description>/  {
   : top
   /<description>.*<\/description>/! N; s/\n//
   /<description>.*<\/description>/! b top
#   p
}