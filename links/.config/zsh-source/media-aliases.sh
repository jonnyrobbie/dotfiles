unsetopt nomatch #so the next aliases would work without quotes
#the underscores in variable names are there to avoid zsh tab autocomplete clutter. `unset` didn't work
_savelocation="/data/Downloads/Media"
_yt360p="134+140"
_yt720p="136+140"
_yt720p60="298+140"
_yt1080p="137+140"
_yt1080p60="299+140"
_ytauto="$_yt1080p60/$_yt720p60/$_yt1080p/$_yt720p/$_yt360p"
alias mpv-360p='mpv --ytdl-format $_yt360p '
alias mpv-720p='mpv --ytdl-format $_yt720p '
alias mpv-720p60='mpv --ytdl-format $_yt720p60 '
alias mpv-1080p='mpv --ytdl-format $_yt1080p '
alias mpv-1080p60='mpv --ytdl-format $_yt1080p60 '
alias mpv-auto='mpv --ytdl-format $_ytauto '
alias ytdl-360p='/home/marek/Scripts/ytdl/ytdl-add 360p '
alias ytdl-720p='/home/marek/Scripts/ytdl/ytdl-add 720p '
alias ytdl-720p60='/home/marek/Scripts/ytdl/ytdl-add 720p60 '
alias ytdl-1080p='/home/marek/Scripts/ytdl/ytdl-add 1080p '
alias ytdl-1080p60='/home/marek/Scripts/ytdl/ytdl-add 1080p60 '
alias ytdl-auto='/home/marek/Scripts/ytdl/ytdl-add auto '

