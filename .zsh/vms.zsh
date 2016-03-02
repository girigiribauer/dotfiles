# ---------------------------------------------------------------------------- #
# VM 関連
# ---------------------------------------------------------------------------- #

function docker_env {
  if [ "$(docker-machine status default)" = "Running" ]
  then
    echo "$(docker-machine env default)" | sed -e 's/#.*//g'
    eval "$(docker-machine env default)"
  fi
}
docker_env
