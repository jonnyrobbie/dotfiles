unsetopt nomatch #so the next aliases would work without quotes
alias mpv-360p='mpv --ytdl-format 18 '
alias mpv-720p='mpv --ytdl-format 22 '
alias mpv-720p60='mpv --ytdl-format 298+140 '
alias mpv-1080p='mpv --ytdl-format 137+140 '
alias mpv-1080p60='mpv --ytdl-format 299+140 '
alias mpv-auto='mpv --ytdl-format 299+140/298+140/137+140/136+140/134+140 '
alias ytdl-360p='youtube-dl -f 18 --no-mtime -o "/data/Downloads/Media/[%(uploader)s] %(title)s (360p)[%(id)s]" '
alias ytdl-720p='youtube-dl -f 22 --no-mtime -o "/data/Downloads/Media/[%(uploader)s] %(title)s (720p)[%(id)s]" '
alias ytdl-720p60='youtube-dl -f 298+140 --no-mtime -o "/data/Downloads/Media/[%(uploader)s] %(title)s (720p60)[%(id)s]" '
alias ytdl-1080p='youtube-dl -f 137+140 --no-mtime -o "/data/Downloads/Media/[%(uploader)s] %(title)s (1080p)[%(id)s]" '
alias ytdl-1080p60='youtube-dl -f 299+140 --no-mtime -o "/data/Downloads/Media/[%(uploader)s] %(title)s (1080p60)[%(id)s]" '
alias ytdl-auto='youtube-dl -f 299+140/298+140/137+140/136+140/134+140 --no-mtime -o "/data/Downloads/Media/[%(uploader)s] %(title)s (%(height)sp%(fps)s)[%(id)s]" '
