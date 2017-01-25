cd ..
ls -R | grep -E "\.mp3|\.MP3|\.ogg|\.OGG" > CPCast/Files.$1.txt
cd CPCast
./SquashItems.sh RSS.$1.txt | grep -f Files.$1.txt >> Temp1.$1.txt
echo "</xml>" | tr -d '\042' > Temp2.$1.txt
cat RSSpattern.xml Temp1.$1.txt Temp2.$1.txt > RSS.$1.xml
rm Temp1.$1.txt
rm Temp2.$1.txt
cat RSS.$1.xml | grep "<otherURL>" | grep "<item>" | sed "s/.*<otherURL>\(.*\)<\/otherURL>.*/\1/" > getart.$1.sh
cat getart.$1.sh | sed -e "s/http/wget http/" -e "s/\(.*\/images\/\)\([^\/]*\)\(\/front.*\)/\1\2\3 NASA.\2.jpg/"
./getart.$1.sh