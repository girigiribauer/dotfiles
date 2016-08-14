#!/bin/bash

# VM が立ち上がっているかどうかチェック
vagrant_statuses=`cat ~/.vagrant.d/data/machine-index/index | jq '.machines | .[] | {key: .name, value: .state} | join(" ")' --raw-output`
vagrant=`echo $vagrant_statuses | grep -e "running" | awk '{ printf " [" $1 ":ON]" }'`

if [ $(docker-machine status default) = "Running" ]; then
  docker='[docker:ON]'
fi
echo "$docker $vagrant"
