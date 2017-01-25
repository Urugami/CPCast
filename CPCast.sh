if [ $# = 0 ] ; then
   DtStr=`date +%y%m%d`
else
   DtStr=$1
fi
echo DateStr is $DtStr

BaseDir='/PodCasts/New'
echo BaseDir="$BaseDir" > NewDown.$DtStr.sh
echo BaseDir="$BaseDir" > PodProc.$DtStr.sh
echo BaseDir="$BaseDir" > GetXML.$DtStr.sh
echo '# *********************************************************' >>Newdown.$DtStr.sh
echo 'DirPrfx="'$BaseDir'/Home/WREK_Country"' >>Newdown.$DtStr.sh
echo 'cd $DirPrfx' >> Newdown.$DtStr.sh
echo wget -cS -U CPCast http://archive.oit.wrek.org/main/128kb/Fri1630.mp3 -O WREK_Country.$DtStr.A.mp3 >>NewDown.$DtStr.sh
echo wget -cS -U CPCast http://archive.oit.wrek.org/main/128kb/Fri1700.mp3 -O WREK_Country.$DtStr.B.mp3 >>NewDown.$DtStr.sh
echo wget -cS -U CPCast http://archive.oit.wrek.org/main/128kb/Fri1730.mp3 -O WREK_Country.$DtStr.C.mp3 >>NewDown.$DtStr.sh
echo wget -cS -U CPCast http://archive.oit.wrek.org/main/128kb/Fri1800.mp3 -O WREK_Country.$DtStr.D.mp3 >>NewDown.$DtStr.sh
echo cd $BaseDir >> Newdown.$DtStr.sh
echo '# *********************************************************' >>Newdown.$DtStr.sh
echo 'DirPrfx="'$BaseDir'/Home/PorkRoost"' >>NewDown.$DtStr.sh
echo 'cd $DirPrfx' >> Newdown.$DtStr.sh
echo wget -cS -U CPCast http://archive.oit.wrek.org/main/128kb/Sun2030.mp3 -O PorkRoost.$DtStr.A.mp3 >>Newdown.$DtStr.sh
echo wget -cS -U CPCast http://archive.oit.wrek.org/main/128kb/Sun2100.mp3 -O PorkRoost.$DtStr.B.mp3 >>Newdown.$DtStr.sh
echo wget -cS -U CPCast http://archive.oit.wrek.org/main/128kb/Sun2130.mp3 -O PorkRoost.$DtStr.C.mp3 >>Newdown.$DtStr.sh
echo wget -cS -U CPCast http://archive.oit.wrek.org/main/128kb/Sun2200.mp3 -O PorkRoost.$DtStr.D.mp3 >>Newdown.$DtStr.sh
echo cd $BaseDir >> Newdown.$DtStr.sh
echo '# *********************************************************' >>Newdown.$DtStr.sh
echo 'cd /PodCasts/CPCast' >>Newdown.$DtStr.sh
echo 'sh FiltRSS.sh '$DtStr >>Newdown.$DtStr.sh
echo '# *********************************************************' >>Newdown.$DtStr.sh

gawk -F '`' '{print "wget -cS -U CPCast  " $1 " -O $BaseDir/" $2 "/" $3 "/" $4 ".RAW.'$DtStr'.xml"}' servlist.rc >> GetXML.$DtStr.sh
gawk -F'`' -f DLpod.awk ServList.rc | tr '`' '\042' >> PodProc.$DtStr.sh

#echo grep otherURL RSS."$DtStr.txt" | grep jpg | sed 's/<[^>]*>//g' > Art."$DtStr".txt >> PodProc."$DtStr".shn
