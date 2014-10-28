" ---------------------------------------------------------------------------- "
" vimrc entrypoint
" ---------------------------------------------------------------------------- "

" 設定ファイルを探しにいく runtimepath ディレクトリの追加
" Linux系だと標準で追加されてるが、
" Windowsだと入ってないので念のため追加する
set runtimepath^=$HOME/.vim

" 文字コードや改行コードなど、日本語に関わる設定
source $HOME/.vim/settings/encoding.vim

" プラグイン管理
source $HOME/.vim/settings/bundle.vim

" 基本的な設定いろいろ
source $HOME/.vim/settings/basic.vim

" 各種プラグインの共通設定
source $HOME/.vim/settings/bundle_settings.vim

" ステータスラインの設定
source $HOME/.vim/settings/statusline.vim

" 差分表示
source $HOME/.vim/settings/diff.vim

" 表示、見た目
source $HOME/.vim/settings/appearance.vim

" コマンド追加
source $HOME/.vim/settings/commands.vim

" キーマッピング設定
source $HOME/.vim/settings/mappings.vim

" ネットワーク系
source $HOME/.vim/settings/network.vim

