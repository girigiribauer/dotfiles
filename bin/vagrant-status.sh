#!/bin/sh

# VM が立ち上がっているかどうかチェック
cd ~/Vagrant
display=`vagrant status`
echo -e "$display" | grep "running" | sed 's/\([^ ]*\)  *\(running.*$\)/[\1:ON]/' | paste -s --delimiters=''
