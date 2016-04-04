#prompt
autoload -U colors && colors
PROMPT="┌ %{$fg_bold[white]%}%n%{$reset_color%}%{$fg_bold[red]%}@%{$reset_color%}%{$fg_bold[red]%}%m%{$reset_color%}%{$fg_bold[blue]%}(%*)%{$reset_color%} %{$fg_bold[green]%}%0~ %{$reset_color%}
└ %(!.#.$) "
