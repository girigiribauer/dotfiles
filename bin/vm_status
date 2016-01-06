#!/bin/sh

# VM が立ち上がっているかどうかチェック
vagrant_vm=`vagrant global-status | grep running | awk '{ printf " [" $2 ":ON]" }'`
docker_vm=`boot2docker status`

if [ "$docker_vm" = "running" ]; then
  output=' [docker:ON]'
fi
output="$output$vagrant_vm"
echo "$output"
