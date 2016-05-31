unsetopt nomatch #so the next aliases would work without quotes
savelocation="/data/Downloads/Media"
yt360p="134+140"
yt720p="136+140"
yt720p60="298+140"
yt1080p="137+140"
yt1080p60="299+140"
ytauto="$yt1080p60/$yt720p60/$yt1080p/$yt720p/$yt360p"
alias mpv-360p='mpv --ytdl-format $yt360p '
alias mpv-720p='mpv --ytdl-format $yt720p '
alias mpv-720p60='mpv --ytdl-format $yt720p60 '
alias mpv-1080p='mpv --ytdl-format $yt1080p '
alias mpv-1080p60='mpv --ytdl-format $yt1080p60 '
alias mpv-auto='mpv --ytdl-format $ytauto '
alias ytdl-360p='youtube-dl -f $yt360p -o "$savelocation/[%(uploader)s] %(title)s (360p)[%(id)s]" '
alias ytdl-720p='youtube-dl -f $yt720p -o "$savelocation/[%(uploader)s] %(title)s (720p)[%(id)s]" '
alias ytdl-720p60='youtube-dl -f $yt720p60 -o "$savelocation/[%(uploader)s] %(title)s (720p60)[%(id)s]" '
alias ytdl-1080p='youtube-dl -f $yt1080p -o "$savelocation/[%(uploader)s] %(title)s (1080p)[%(id)s]" '
alias ytdl-1080p60='youtube-dl -f $yt1080p60 -o "$savelocation/[%(uploader)s] %(title)s (1080p60)[%(id)s]" '
alias ytdl-auto='youtube-dl -f $ytauto -o "$savelocation/[%(uploader)s] %(title)s (%(height)sp%(fps)s)[%(id)s]" '
unset savelocation
unset yt360p
unset yt720p
unset yt720p60
unset yt1080p
unset yt1080p60
unset ytauto
