# ---------------------------------------------------------------------------- #
# VM 関連
# ---------------------------------------------------------------------------- #

# 開いた時点で docker が起動していれば環境変数をセットする
function denv {
  if [ "$(docker-machine status default)" = "Running" ]
  then
    echo "$(docker-machine env default)" | sed -e 's/#.*//g'
    eval "$(docker-machine env default)"
  fi
}
denv
