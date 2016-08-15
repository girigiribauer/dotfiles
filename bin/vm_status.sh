#!/bin/bash

vagrant_configfile_raw="$HOME/.vagrant.d/data/machine-index/index"
jq_filter='[ .machines | .[] | [.name, .state] | join(" ") ] | join("\\n")'

# VM が立ち上がっているかどうかチェック
vagrant_statuses=`cat $vagrant_configfile_raw | jq "$jq_filter" --raw-output`
vagrant=`echo -e $vagrant_statuses | grep "running" | awk '{ printf " [" $1 ":ON]" }'`

if [ $(docker-machine status default) = "Running" ]; then
  docker='[docker:ON]'
fi

# xargs as trailing spaces
echo "$docker $vagrant" | xargs
