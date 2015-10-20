# The following lines were added by compinstall
zstyle :compinstall filename '/home/marek/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install

[[ $- != *i* ]] && return
unset SSH_ASKPASS

#aliases
#alias ls='ls --color=auto'
alias nyaa='sudo'
alias please='eval "sudo $(fc -ln -1)"'

unsetopt nomatch #so the next aliases would work without quotes
alias mpv-360p='mpv --ytdl-format 18 '
alias mpv-720p='mpv --ytdl-format 22 '
alias mpv-720p60='mpv --ytdl-format 298+140 '
alias mpv-1080p='mpv --ytdl-format 137+140 '
alias mpv-1080p60='mpv --ytdl-format 299+140 '
alias ytdl-360p='youtube-dl -f 18 --no-mtime -o "/data/Downloads/Media/[%(uploader)s] %(title)s (360p)[%(id)s]" '
alias ytdl-720p='youtube-dl -f 22 --no-mtime -o "/data/Downloads/Media/[%(uploader)s] %(title)s (720p)[%(id)s]" '
alias ytdl-720p60='youtube-dl -f 298+140 --no-mtime -o "/data/Downloads/Media/[%(uploader)s] %(title)s (720p60)[%(id)s]" '
alias ytdl-1080p='youtube-dl -f 137+140 --no-mtime -o "/data/Downloads/Media/[%(uploader)s] %(title)s (1080p)[%(id)s]" '
alias ytdl-1080p60='youtube-dl -f 299+140 --no-mtime -o "/data/Downloads/Media/[%(uploader)s] %(title)s (1080p60)[%(id)s]" '
alias ytdl-auto='youtube-dl -f 298+140/137+140/136+140/134+140 --no-mtime -o "/data/Downloads/Media/[%(uploader)s] %(title)s (%(height)sp%(fps)s)[%(id)s]" '

#functions
pacman-orph() {
  if [[ ! -n $(pacman -Qdt) ]]; then
    echo "No orphans to remove."
  else
    sudo pacman -Rns $(pacman -Qdtq)
  fi
}
imgur() {
    for i in "$@"; do
        curl -# -F "image"=@"$i" -F "key"="4907fcd89e761c6b07eeb8292d5a9b2a" imgur.com/api/upload.xml|\
        grep -Eo '<[a-z_]+>http[^<]+'|sed 's/^<.\|_./\U&/g;s/_/ /;s/<\(.*\)>/\x1B[0;34m\1:\x1B[0m /'
    done
}

#prompt
#PS1='[\u@\h \W]\$ '
#PS1='\[\e[1;89m\][\u@\h \W$(__git_ps1 " (%s)")]\$\[\e[0m\] '
#PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
autoload -U colors && colors
PROMPT="┌ %{$fg_bold[white]%}%n%{$reset_color%}%{$fg_bold[red]%}@%{$reset_color%}%{$fg_bold[red]%}%m%{$reset_color%}%{$fg_bold[blue]%}(%*)%{$reset_color%} %{$fg_bold[green]%}%0~ %{$reset_color%}
└ %(!.#.$) "

#visual
archey3
#cmatrix -abs
source /usr/share/git/completion/git-prompt.sh

export WINEPREFIX=/data/Wine/win32
export WINEARCH=win32
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
