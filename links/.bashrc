#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias nyaa='sudo'

alias mpv-360p='mpv --ytdl-format 18'
alias mpv-720p='mpv --ytdl-format 22'
alias mpv-720p60='mpv --ytdl-format 298+140'
alias mpv-1080p='mpv --ytdl-format 137+140'
alias mpv-1080p60='mpv --ytdl-format 299+140'

alias ytdl-360p='youtube-dl -f 18 --no-mtime -o "/data/Downloads/Media/[%(uploader)s] %(title)s (360p)[%(id)s]"'
alias ytdl-720p='youtube-dl -f 22 --no-mtime -o "/data/Downloads/Media/[%(uploader)s] %(title)s (720p)[%(id)s]"'
alias ytdl-720p60='youtube-dl -f 298+140 --no-mtime -o "/data/Downloads/Media/[%(uploader)s] %(title)s (720p60)[%(id)s]"'
alias ytdl-1080p='youtube-dl -f 137+140 --no-mtime -o "/data/Downloads/Media/[%(uploader)s] %(title)s (1080p)[%(id)s]"'
alias ytdl-1080p60='youtube-dl -f 299+140 --no-mtime -o "/data/Downloads/Media/[%(uploader)s] %(title)s (1080p60)[%(id)s]"'
#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;89m\][\u@\h \W$(__git_ps1 " (%s)")]\$\[\e[0m\] '

#Blur Konsole background
#konsole=$(xdotool search -name Konsole | grep $(xdotool getactivewindow))
#if [ "$konsole" != "" ]; then
#xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id 
#$konsole
#fi

#cmatrix -abs
archey3
source /usr/share/git/completion/git-prompt.sh
export WINEPREFIX=/data/Wine/win32
export WINEARCH=win32
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

export LINGO_15_HOME="/data/Software/lingo15"

export PATH="$PATH:/data/Software/lingo15"
