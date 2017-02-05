#!/bin/sh
set -x

while read a
do
	dispak $a.b6 > $a.list
done <<EOF
madlen2
monsys
disps
macro67.dd1
tasksav.dd2
nrespost.dd3
sluga.dd4
EOF