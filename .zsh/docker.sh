# ---------------------------------------------------------------------------- #
# docker 関連
# ---------------------------------------------------------------------------- #

function docker-env {
  echo "$(docker-machine env default)" | sed -e 's/#.*//g'
  eval "$(docker-machine env default)"
}

