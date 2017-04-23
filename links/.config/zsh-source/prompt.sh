#prompt
autoload -U colors
source ~/Github/zsh-git-prompt/zshrc.sh
setopt promptsubst
export ZSH_THEME_GIT_PROMPT_CACHE=1
PROMPT='%B%K{10}%F{10} %K{7}%F{16} %n %K{17}%F{7}%F{7} @%m %K{88}%F{17}%F{7} (%*) %F{88}%k %f%0~  %b
%K{10}%F{10} %k%f $(git_super_status)%(!.#.$) '
#PROMPT='┌ %{$fg_bold[white]%}%n%{$reset_color%}%{$fg_bold[blue]%}@%{$reset_color%}%{$fg_bold[blue]%}%m%{$reset_color%}%{$fg_bold[red]%}(%*)%{$reset_color%} %{$fg_bold[green]%}%0~ %{$reset_color%}
#└ $(git_super_status)%(!.#.$) '
