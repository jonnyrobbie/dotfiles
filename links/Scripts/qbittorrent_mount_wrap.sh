uuid=DA1E35F71E35CCEF
nomountname=/home/marek/.local/share/data/qBittorrent/BT_backup_nomount
mountname=/home/marek/.local/share/data/qBittorrent/BT_backup_mount
torrent_dir=/home/marek/.local/share/data/qBittorrent/BT_backup
if findmnt --source UUID=$uuid > /dev/null
then {
    echo "Mount found"
    notify-send "My Book is mounted" "Linking to $mountname"
    rm $torrent_dir
    ln -s $mountname $torrent_dir
    echo "qbittorrent %U"
    qbittorrent $1
}
else {
    echo "Mount not found"
    notify-send "My Book is not mounted" "Linking to $nomountname"
    rm $torrent_dir
    ln -s $nomountname $torrent_dir
    echo "qbittorrent %U"
    qbittorrent $1
}
fi
