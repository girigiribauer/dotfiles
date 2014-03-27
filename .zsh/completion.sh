# ----------------------------------------
# completion settings
# ----------------------------------------

# completion for zsh
# http://d.hatena.ne.jp/ywatase/20071103
autoload -U compinit
compinit -u

# show current directory
# http://news.mynavi.jp/column/zsh/002/
case ${UID} in
  0)
    PROMPT="%B%{${fg[red]}%}%/#%{${reset_color}%}%b "
    PROMPT2="%B%{${fg[red]}%}%_#%{${reset_color}%}%b "
    SPROMPT="%B%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%}%b "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
    PROMPT="%{${fg[cyan]}%}$(echo ${HOST%%.*} | tr '[a-z]' '[A-Z]') ${PROMPT}"
    ;;
  *)
    PROMPT="%{${fg[red]}%}%/%%%{${reset_color}%} "
    PROMPT2="%{${fg[red]}%}%_%%%{${reset_color}%} "
    SPROMPT="%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%} "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
    PROMPT="%{${fg[cyan]}%}$(echo ${HOST%%.*} | tr '[a-z]' '[A-Z]') ${PROMPT}"
    ;;
esac

# 'cd -' [Tab] で以前移動したディレクトリに移動する
setopt pushd_ignore_dups

# ディレクトリの補完で、末尾のスラッシュを自動的に追加する
setopt auto_param_slash

# 末尾のスラッシュを取り除かない
setopt noautoremoveslash

