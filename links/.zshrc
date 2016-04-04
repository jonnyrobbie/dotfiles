[[ $- != *i* ]] && return
unset SSH_ASKPASS

#source files
for sourcefile in ~/.config/zsh-source/*.sh; do
	source "$sourcefile"
done
