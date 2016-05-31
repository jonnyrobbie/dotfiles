pacman-orph() {
  if [[ ! -n $(pacman -Qdt) ]]; then
    echo "No orphans to remove."
  else
    sudo pacman -Rns $(pacman -Qdtq)
  fi
}
#imgur() {
#    for i in "$@"; do
#        curl -# -F "image"=@"$i" -F "key"="4907fcd89e761c6b07eeb8292d5a9b2a" imgur.com/api/upload.xml|\
#        grep -Eo '<[a-z_]+>http[^<]+'|sed 's/^<.\|_./\U&/g;s/_/ /;s/<\(.*\)>/\x1B[0;34m\1:\x1B[0m /'
#    done
#}
anils() {
	filelist=`find '/run/media/marek/My Book/downloads/アニメ' -iregex .*$1.*\.mkv -print0`
	if [[ -n $filelist ]] then;
		#find '/run/media/marek/My Book/downloads/アニメ' -iregex .*$1.*\.mkv -print0 | xargs -0 ls -lrt1hgo | sed -r "s|.{10}\ [0-9]\ .{4}\ (.{12})\ .{39}(\[[a-zSA-Z0-9]+\])\ (.+)\ -\ ([0-9]{1,3})((\ -\ (.+))?)\ (\[a-zA-Z0-9\]+)?\[[a-zA-Z0-9]+\]\.mkv|\\4*\\1*\\2*\\3*\\4*\\5|" | sort -g | sed -r s/^[0-9]+\\*// | column -s "*" -t
		find '/run/media/marek/My Book/downloads/アニメ' -iregex .*$1.*\.mkv -print0 | xargs -0 ls -lrt1hgo | sed -r "s~.{10}\ [0-9]\ .{4}\ (.{12})\ .{39}(\/.+)?\/\[(.+)\](\ |_)?(.+?)(\ -\ |_-_|\ |\.)(EP|SP)?([0-9]{1,3})(\ -\ |\ |_)?(.+)?(\[.+\])\.mkv\'~\8*\5*\3*\8~" | sort -g | sed -r s/^[0-9]+\\*// | column -s "*" -t
		#echo $filelist | xargs -0 ls -lrt1hgo
	else
		echo "No anime found using the search pattern '${1}'."
	fi
}
imgur-screenshot(){
#dependency: maim, slop, AUR:imgurbash2
screenname=`date "+%Y-%m-%d_%H-%M"`	
	if [[ -z $2 ]] then;
		delay="0"
	else
		delay=$2
	fi
	if [[ -n $1 ]] then;
		screenfile="/home/marek/Pictures/screenshots/${1}.png"
		maim -s -d $delay $screenfile
		echo "Screenshot saved as $screenfile"
		imgurbash2 $screenfile
	else
		screenfile="/home/marek/Pictures/screenshots/${screenname}.png"
		maim -s -d $delay $screenfile
		echo "Screenshot saved as $screenfile"
		imgurbash2 $screenfile
	fi
}
