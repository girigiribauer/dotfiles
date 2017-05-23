# ---------------------------------------------------------------------------- #
# $HOME/.zsh/appearance.zsh
# ---------------------------------------------------------------------------- #

export TERM="screen-256color"

# ref: http://news.mynavi.jp/column/zsh/002/
# ref: https://gist.github.com/otiai10/8034038
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
