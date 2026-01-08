# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/abhi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


export PATH=$PATH:/home/abhi/.local/bin
export PATH=$PATH:/home/abhi/.local/bin/clangd_21.1.0/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/abhi/code/scripts
eval "$(oh-my-posh init zsh --config /home/abhi/.config/oh-my-posh/viet.omp.json)"
# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

eval "$(zoxide init zsh --cmd cd)"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}




~/scripts/select_rand.sh

alias ls='ls --color=auto -X --group-directories-first'
alias vim='nvim'
