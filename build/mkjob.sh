#! /bin/sh
#
#  configurator for DD system build in dispak
#
#  Copyright 2017, Mihail Popov.  
#  
#  LDSHIFT has to be in the correct environment. 
#
#  
cat << END1
шифр 419999 зс5^
лен 50(1400-ЗП)^
лен 41(2048)^
лен 66(1990-ЗП)^
лен 67(1999-ЗП)^
лен 40(9)^
eeв1а3
*name OS-Dubna-2017
*     no list
*call putflag*
5
*perso:66000
*MADLEN,L=FBG.
 LDSHIFT:,NAME,
 ,XTA,61B
 ,XTA,=0010 3700 0040 0000
 ,AAX,=7777 0077 7777 7777
 ,AOX,=:0000 03
 ,ATX,C
 ,ARX,=1
 ,ATX,C+1
 ,DRUM,C
 ,XTA,BSHIFT
 ,ATX,7776B
 ,XTA,CSHIFT
 ,ATX,7777B
 ,DRUM,=0000 0300 0066 0036
 ,DRUM,C+1
 ,DRUM,=0000 0300 0066 0037
 ,XTA,=0010 3700 0066 0036
 ,ATX,61B
 13,UJ,
 BSHIFT:,LOG,64000
 CSHIFT:,LOG,70000
 C:,BSS,2
 ,END,
*tcatalog
*CALL FICMEMOR:75550
*CALL LDSHIFT
*perso:50000
*MADLEN,L=BRGF,MODEL=SIMH,STEXT=FREQ300.
END1

#
# General system config
cat conf-sys.s
#
# Optional terminal config
if [ -f conf-tty.s ]; then
  cat conf-tty.s
fi
#
# Fixes
#
# terminal
if [ -f fix-tty.s ]; then
  cat fix-tty.s
fi
# tram70 
if [ -f fix-io.s ]; then
  cat fix-io.s
fi
# disc
if [ -f fix-disk.s ]; then
  cat fix-disk.s
fi
# misc
if [ -f fix-misc.s ]; then
  cat fix-misc.s
fi
# aux
if [ -f fix-aux.s ]; then
  cat fix-aux.s
fi

cat <<EOF2 
*tcatalog
*MAIN DD86
*CALL DATAPR*
*EXECUTE
*READ OLD 
*END FILE
EOF2
echo "\`\`\`\`\`\`"
echo еконец

