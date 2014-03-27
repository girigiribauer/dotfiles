# ----------------------------------------
# color settings
# ----------------------------------------

# http://news.mynavi.jp/column/zsh/009/index.html
# LSCOLORS 用
# 01: ディレクトリ前景色
# 02: ディレクトリ背景色
# 03: シンボリックリンク前景色
# 04: シンボリックリンク背景色
# 05: ソケットファイル前景色
# 06: ソケットファイル背景色
# 07: FIFOファイル前景色
# 08: FIFOファイル背景色
# 09: 実行ファイル前景色
# 10: 実行ファイル背景色
# 11: ブロックスペシャルファイル前景色
# 12: ブロックスペシャルファイル背景色
# 13: キャラクタスペシャルファイル前景色
# 14: キャラクタスペシャルファイル背景色
# 15: setuidつき実行ファイル前景色
# 16: setuidつき実行ファイル背景色
# 17: setgidつき実行ファイル前景色
# 18: setgidつき実行ファイル背景色
# 19: スティッキビットありother書き込み権限つきディレクトリ前景色
# 20: スティッキビットありother書き込み権限つきディレクトリ背景色
# 21: スティッキビットなしother書き込み権限つきディレクトリ前景色
# 22: スティッキビットなしother書き込み権限つきディレクトリ背景色
#
# a: 黒
# b: 赤
# c: 緑
# d: 茶
# e: 青
# f: マゼンタ
# g: シアン
# h: 白
# A: 黒(太字)
# B: 赤(太字)
# C: 緑(太字)
# D: 茶(太字)
# E: 青(太字)
# F: マゼンタ(太字)
# G: シアン(太字)
# H: 白(太字)
# x: デフォルト色
#
# LS_COLORS 用
# 00: なにもしない
# 01: 太字化
# 04: 下線
# 05: 点滅
# 07: 前背色反転
# 08: 表示しない
# 22: ノーマル化
# 24: 下線なし
# 25: 点滅なし
# 27: 前背色反転なし
# 30: 黒(前景色)
# 31: 赤(前景色)
# 32: 緑(前景色)
# 33: 茶(前景色)
# 34: 青(前景色)
# 35: マゼンタ(前景色)
# 36: シアン(前景色)
# 37: 白(前景色)
# 39: デフォルト(前景色)
# 40: 黒(背景色)
# 41: 赤(背景色)
# 42: 緑(背景色)
# 43: 茶(背景色)
# 44: 青(背景色)
# 45: マゼンタ(背景色)
# 46: シアン(背景色)
# 47: 白(背景色)
# 49: デフォルト(背景色)

export LSCOLORS=dxadexhxbxcxcxbxbxdxdx
export LS_COLORS='di=33:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
alias ls="gls --color -G"

