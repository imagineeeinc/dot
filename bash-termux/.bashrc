alias ani="ani-cli -v"
alias mov="mov-cli"
alias pd="proot-distro"
alias pbcopy="xsel --input --clipboard"
alias pbcopy="xsel --output --clipboard"

source .bashrc.shared.sh

export PATH="~/.cargo/bin:~/go/bin:$PATH"
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

export EDITOR="nvim"
export NDK=~/android-ndk-r26b
export android_ndk_path=~/android-ndk-r26b

# fzf
# export FZF_DEFAULT_OPTS="--border --bind 'enter:become(lvim {})"

eval "$(zoxide init bash)"
eval $(ssh-agent -s)

#./duckdns/duck.sh

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
