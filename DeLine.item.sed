/<item>/  {
   : top
   /<item>.*<\/item>/! {N; s/\n/ZQZ/;}
   /<item>.*<\/item>/! b top
   #p
}
/ZQZ/ {
   s/ZQZZQZ//g
   s/>ZQZ/>/g;s/ZQZ</</g
   s/ *ZQZ/ /g
   s/ZQZ */ /g
   s/[a-zA-Z]ZQZ[a-zA-Z]/ /g
   s/ZQZ//g
   }