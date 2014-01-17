if [ -f "/usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh" ]; then
  source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
fi
if [ -f "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

export ACRO_DISABLE_FONT_CONFIG=1
export AWT_TOOLKIT=MToolkit
export DEVKITPRO="$HOME/Program/devkitPRO"
export DEVKITPPC="$HOME/Program/devkitPRO/devkitPPC"
export DOTFONTPATH="/usr/share/fonts/local:/usr/share/fonts/encodings:/usr/share/fonts/encodings/large:/usr/share/fonts/util:/usr/share/fonts/misc:/usr/share/fonts/75dpi:/usr/share/fonts/100dpi:/usr/share/fonts/cyrillic:/usr/share/fonts/Type1:/usr/share/fonts/CID:/usr/share/fonts/TTF:/usr/share/fonts/ukr:/usr/share/fonts/arphicfonts:/usr/share/fonts/baekmuk-fonts:/usr/share/fonts/default:/usr/share/fonts/default/ghostscript:/usr/share/fonts/kochi-substitute:/usr/share/fonts/aquafont:/usr/share/fonts/aquapfont:/usr/share/fonts/monafont:/usr/share/fonts/mikachan-font:/usr/share/fonts/sazanami:/usr/share/fonts/shinonome:/usr/share/fonts/ja-ipafonts"
export EDITOR="vim"
export JAVA_HOME="/opt/java/jre"
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
export LANG="ja_JP.UTF-8"
export LS_COLORS='rs=0:di=00;44:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:'
export PATH="$HOME/bin:/usr/lib/ccache/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/opt/java/jre/bin:${PATH}"
export PERLDOC_PAGER="less -+C"
export SAL_EMBEDDED_BITMAP_PRIORITY=0
export TZ="JST-9"
#export JAVA_HOME="/usr/lib/jvm/java-7-openjdk"
#export _JAVA_OPTIONS='-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'


### for open office font

#if [ ${+TERM} = 1 ] && [ $TERM = kterm -o $TERM = xterm ]; then
#    eval `resize`
#fi


### alias
if [ `uname` = "FreeBSD" ]; then
  alias l="ls -laF"
else
  alias l="ls -laF --color=auto"
fi
alias l="ls -laF --color=auto"
alias s="slogin"
alias sr="slogin -l root"
alias ssr="ssh-keygen -R"
alias ak="env ACCEPT_KEYWORDS=~x86"
alias kcd='eval "cd $(kdialog --getexistingdirectory ${HOME})"'
alias gcd='eval "cd $(zenity --file-selection --directory)"'
alias unzip2='unzip -O cp932'
alias x2goclient="unset SSH_ASKPASS; x2goclient"
alias grpe="grep"
alias cgrep='grep -v -e "^[ \t]*#" -e "^$"'
alias urxvt="$HOME/bin/urxvtc-start.sh"
alias pp="setxkbmap -layout jp; xmodmap -e \"keycode 123 = backslash underscore\""
alias epg='/srv/http/epgrec/shepherd.php'
alias mosh="mosh --server=\"LANG=$LANG mosh-server\""
alias smallx="xrandr -s 1680x1050"
alias normalx="xrandr -s 1920x1200"
alias vi="vim"
alias curl="curl -s"
alias json="python -mjson.tool"
alias utf="printf \"\33]701;ja_JP.utf8\007\""
alias euc="printf \"\33]701;ja_JP.EUC-JP\007\""
alias jis="printf \"\33]701;ja_JP.ISO-2022-JP\007\""
alias knife="$HOME/knife-solo/bin/knife"
alias bd='popd'
alias gd='dirs -v; echo -n "select number: "; read newdir; cd +"$newdir"'

### dstat aliases
alias dstat-full='dstat -tclmdrn'
alias dstat-mem='dstat -tclm'
alias dstat-cpu='dstat -tclr'
alias dstat-net='dstat -tclnd'
alias dstat-disk='dstat -tcldr'

#alias tome="tome -mgcu -- -b"
#alias tome="tome -- -n3"

if which pbcopy >/dev/null 2>&1 ; then
    # Mac
    alias -g C='pbcopy'
elif which xsel >/dev/null 2>&1 ; then
    # Linux
    alias -g C='xsel --input --clipboard'
    alias -g CC='xsel --input --primary'
elif which putclip >/dev/null 2>&1 ; then
    # Cygwin
    alias -g C='putclip'
fi

function gettime(){
  echo $1 | awk "{print strftime(\"%Y/%m/%d %H:%M:%S\", \$1)}"
}


mtitle () {echo -n "\033]61;$*\a"}
title() {
  print -nR $'\033k'$1$'\033'\\
}
title2() {
  print -nR $'\033_'$2$'\033'\\
}

bindkey -e

_cache_hosts=(`perl -ne  'if (/^([a-zA-Z0-9.-]+)/) { print "$1\n";}' $HOME/.ssh/known_hosts`)
autoload -U compinit promptinit
compinit
promptinit

### 補完 ###
setopt auto_list			# 補完候補を一覧で表示(d)
setopt auto_menu			# 補完キー連打で補完候補を順に表示(d)
setopt list_packed			# 補完候補をできるだけ詰めて表示
setopt list_types			# 補完候補にファイルの種類も表示
setopt extended_glob
#setopt complete_aliases
unsetopt caseglob			# ファイルグロブで大文字小文字を区別しない
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion:*' menu select=1
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
bindkey "^[[Z" reverse-menu-complete			# Shift-Tabで補完候補を逆順("\e[Z"でも動作する)
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z} r:|[-_.]=**'	# 補完時に大文字小文字を区別しない
#bindkey '^R' history-incremental-search-backward

autoload -U colors; colors

autoload -Uz vcs_info			# VCSの情報を取得するzshの便利関数 vcs_infoを使う

# 表示フォーマットの指定
# %b ブランチ情報
# %a アクション名(mergeなど)
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:*' formats '[%b]%c%u'
zstyle ':vcs_info:*' actionformats '[%b|%a]%c%u'
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

# バージョン管理されているディレクトリにいれば表示，そうでなければ非表示
RPROMPT="%1(v|%F{black}%K{green}%1v%k%f|)"

#setopt auto_cd			# ディレクトリ名の入力のみで移動
setopt auto_pushd		# cd時にディレクトリスタックにpushdする
setopt pushd_ignore_dups	# 重複したdirectoryをpushdしない
setopt correct			# コマンドのスペルを訂正する
setopt magic_equal_subst	# =以降も補完する(--prefix=/usrなど)
setopt prompt_subst		# プロンプト定義内で変数置換やコマンド置換を扱う
setopt notify			# バックグラウンドジョブの状態変化を即時報告
setopt equals			# =commandを`which command`と同じ処理

### ユーザーごとに色を変える。
typeset -A user_color_table
user_color_table['root']='%F{red}'
user_color_table['anthrax']='%B%F{white}'
user_color_table['gitlab']='%B%F{magenta}'
user_color_table['jenkins']='%B%F{blue}'
user_color=${user_color_table['$USER']}
if [ ${user_color:-default} = 'default' ]; then
  user_color='%B%F{black}'
fi

### ホストごとに色を変える。未定義は赤くしとく
typeset -A color_table
color_table['joker']='${user_color}%K{green}%n@%m:%y%k%f%b'
color_table['rise2']='${user_color}%K{cyan}%n@%m:%y%k%f%b'
color_table['sakura']='${user_color}%K{magenta}%n@%m:%y%k%f%b'
color_table['docker1']='${user_color}%K{blue}%n@%m:%y%k%f%b'
prompt_color=${color_table['$HOST']}
if [[ ${prompt_color} = '' ]]; then
  prompt_color='%B${user_color}%K{red}%n@%m:%y%k%f%b'
fi

### rootのときはちょっと変えてみる
if [ $UID -eq 0 ]; then
  if [ "$HOST" = "sakura" ]; then
    PROMPT="%U%(?..[%F{red}exit=%?%f])[%F{black}%K{magenta}%n@%m:%y%k%f %d]%F{black}%K{red}%#%k%f%b%u "
  else
    PROMPT="%U%(?..[%F{red}exit=%?%f])[${prompt_color} %d]%F{black}%K{red}%#%k%f%b%u "
  fi
else
  PROMPT="%(?..[%F{red}exit=%?%f])[${prompt_color} %d]%# "
fi

#setopt PRINT_EXIT_VALUE
#PROMPT="%(?..[%F{red}exit=%?%f])[${prompt_color} %d]%# "
SPROMPT="%F{cyan}%{$suggest%} < もしかして %B%r%b %F{red}? [そう!(y), 違う!(n),a,e]:%f "

HISTFILE=$HOME/.zsh-history		# 履歴をファイルに保存する
HISTSIZE=100000				# メモリ内の履歴の数
SAVEHIST=10000000			# 保存される履歴の数
setopt extended_history			# 履歴ファイルに時刻を記録
function history-all { history -E 1 }	# 全履歴の一覧を出力する
#setopt share_history			# history の share

setopt inc_append_history
#setopt correct_all

function ssh_screen(){
  eval server=\${$#}
  screen -t $server ssh "$@"
}
function ssh_root_screen(){
  screen ssh -l root "$@"
}
if [ x$TERM = xscreen ]; then
  alias ssh=ssh_screen
  alias sr=ssh_root_screen
fi

if [ "$TERM" = "screen" ]; then
title `hostname`
fi

#if [ ${+TERM} = 1 ] && [ $TERM = kterm -o $TERM = xterm ]; then
#    eval `resize`
#fi
if [ $TERM = kterm ]; then
    eval `resize`
fi

### perl
if [ $UID -ne 0 ]; then
	export PERL_LOCAL_LIB_ROOT="$HOME/perl5";
	export PERL_MB_OPT="--install_base $HOME/perl5";
	export PERL_MM_OPT="INSTALL_BASE=$HOME/perl5";
	export PERL5LIB="$HOME/perl5/lib/perl5/x86_64-linux-thread-multi:$HOME/perl5/lib/perl5";
	export PATH="$HOME/perl5/bin:$PATH";
fi

### Python virtualenv
if [ $UID -ne 0 ]; then
	alias 2.7="source $HOME/virtualenv/python2.7/bin/activate"
	if [ -x '/usr/bin/virtualenvwrapper.sh' ]; then
		source `which virtualenvwrapper.sh`
		export WORKON_HOME=$HOME/virtualenv
	fi
fi
## sample:
##     create:     mkvirtualenv -p /usr/bin/python2.7 my_env
##     activate:   workon my_env
##     deactivate: deactivate

### ruby environment
if [ $UID -ne 0 ]; then
	#export GEM_HOME="$HOME/.gem"
	#export PATH="$GEM_HOME/ruby/1.9.1/bin:$PATH"
	export PATH="$HOME/.rbenv/bin:$PATH"
	## rbenv
	if [ -x "/bin/rbenv" -o -x "/usr/bin/rbenv" -o -x "$HOME/.rbenv/bin/rbenv" ]; then
	  eval "$(rbenv init -)"
	fi
fi

### ^ で cd ..(^ の入力はCtrl-V押してから)
#function cdup() {
#echo
#cd ..
#zle reset-prompt
#}
#zle -N cdup
#bindkey '\^' cdup

if [ -f "~/.zshrc_local" ]; then
	. ~/.zshrc_local
fi
