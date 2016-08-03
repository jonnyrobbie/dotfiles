#prompt
autoload -U colors
source ~/Github/zsh-git-prompt/zshrc.sh
setopt promptsubst
export ZSH_THEME_GIT_PROMPT_CACHE=1
PROMPT='┌ %{$fg_bold[white]%}%n%{$reset_color%}%{$fg_bold[blue]%}@%{$reset_color%}%{$fg_bold[blue]%}%m%{$reset_color%}%{$fg_bold[red]%}(%*)%{$reset_color%} %{$fg_bold[green]%}%0~ %{$reset_color%}
└ $(git_super_status)%(!.#.$) '
