{print "echo Processing "$4}
{print "echo 'SubDir=$BaseDir`/" $2 "/" $3"`' >> Newdown.$1.sh"}
{print "echo 'cd $SubDir' >> Newdown.$1.sh"}
{print "echo 'pwd' >> Newdown.$1.sh"}
{print "cat $BaseDir`/" $2 "/" $3 "/" $4 ".RAW.$1.xml`" $5 " > $BaseDir`/" $2 "/" $3 "/" $4 ".$1.xml` " }
#{print "wget -cS -U CPCast -O - " $1 " | tee "$SubDir"/" $4 ".RAW.$1.xml" $5 " > "$SubDir"/" $4 ".$1.xml " }
{print "sh FilterNew.sh $BaseDir`/" $2 "/" $3 "/" $4 ".$1.xml` $1" }
{print "cat NeedURLs.txt | sed -f /SED/AddPrfx.sed | sed -nf /SED/tac.sed  >>Newdown.$1.sh"}
{print "echo 'cd $BaseDir' >> Newdown.$1.sh"}
{print "echo '# *********************************************************' >> Newdown.$1.sh"}
