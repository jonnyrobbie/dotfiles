#!/bin/bash
uuid=DA1E35F71E35CCEF
nomountname=/home/marek/.local/share/data/qBittorrent/BT_backup_nomount
mountname=/home/marek/.local/share/data/qBittorrent/BT_backup_mount
torrent_dir=/home/marek/.local/share/data/qBittorrent/BT_backup
torfile=$1
if [ "$(pidof qbittorrent)" ]; then
    echo $(date -Iseconds) "qBittorrent is already running."\
	"Skipping resymlinking." >> ~/.qBitTorrent-mount.log
    notify-send "qBittorrent is already running" "Skipping resymlinking"
	if [[ $torfile != "" ]]; then
		echo $(date -Iseconds) "Relaunching qBT with torrent."\
		>> ~/.qBitTorrent-mount.log
		qbittorrent " $torfile"
	else
		echo $(date -Iseconds) "Relaunching qBT without torrent."\
		>> ~/.qBitTorrent-mount.log
		qbittorrent
	fi
else
	echo $(date -Iseconds) "qBittorrent not running."\
	>> ~/.qBitTorrent-mount.log
    if findmnt --source UUID=$uuid > /dev/null; then
        echo $(date -Iseconds) "Mount found. Linking..."\
        >> ~/.qBitTorrent-mount.log
        notify-send "My Book is mounted" "Linking to $mountname"
		rm $torrent_dir
        ln -s $mountname $torrent_dir
		if [[ $torfile != "" ]]; then
			echo $(date -Iseconds) "Launching qBT with torrent (mount)."\
			>> ~/.qBitTorrent-mount.log
			qbittorrent " $torfile"
		else
			echo $(date -Iseconds) "Launching qBT without torrent (mount)."\
			>> ~/.qBitTorrent-mount.log
			qbittorrent
		fi
    else
        echo $(date -Iseconds) "Mount not found. Linking..."\
		>> ~/.qBitTorrent-mount.log
        notify-send "My Book is not mounted" "Linking to $nomountname"
		rm $torrent_dir
        ln -s $nomountname $torrent_dir
        if [[ $torfile != "" ]]; then
			echo $(date -Iseconds) "Launching qBT with torrent (nomount)."\
			>> ~/.qBitTorrent-mount.log
			qbittorrent " $torfile"
		else
			echo $(date -Iseconds) "Launching qBT without torrent (nomount)."\
			>> ~/.qBitTorrent-mount.log
			qbittorrent
		fi
    fi
fi
