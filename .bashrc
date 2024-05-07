alias cls="clear"
alias ll="ls -alF"
alias lss="eza --icons -lh --tree -L=1 -GF --no-permissions --no-user --git"
alias lsr="eza --icons -lh --tree --no-permissions --no-user --git"
alias lz="lazygit"
alias ani="ani-cli -v"
alias mov="mov-cli"
alias frees="du -h -d 1 . | sort -hr"
alias pd="proot-distro"
alias :q="exit"

export PATH="~/.local/bin:~/.cargo/bin:~/go/bin:$PATH"
export PATH="~/.detaspace/bin:$PATH"
# Deno
export DENO_INSTALL="~/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
# go
export GOBIN=$(go env GOPATH)/bin
export PATH="$GOBIN:$PATH"

export EDITOR="lvim"
export NDK=~/android-ndk-r26b

# fzf
# export FZF_DEFAULT_OPTS="--border --bind 'enter:become(lvim {})"

eval "$(zoxide init bash)"

#./duckdns/duck.sh

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
# already in zsh
# eval "$(atuin init bash)"
