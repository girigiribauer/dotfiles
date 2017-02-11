# ---------------------------------------------------------------------------- #
# 表示、見た目の設定
# ---------------------------------------------------------------------------- #

# TERM
# http://vim.wikia.com/wiki/256_colors_in_vim
if [ -e "/usr/share/terminfo/x/xterm-256color" ]
then
  export TERM="xterm-256color"
else
  export TERM="xterm-color"
fi

# カレントディレクトリの表示
# http://news.mynavi.jp/column/zsh/002/
# https://gist.github.com/otiai10/8034038
setopt prompt_subst

function prompt_hostname {
  local hostname=""

  if [ -n "${REMOTEHOST}${SSH_CONNECTION}" ]
  then
    hostname="%B%F{yellow}[%n@%M]%f%b:"
  else
    hostname="%B[%n@localhost]%b:"
  fi

  echo $hostname
}

PROMPT="`prompt_hostname`%d%# "
PROMPT2="`prompt_hostname`%d%# "
SPROMPT="%r is correct? [n,y,a,e]: "
