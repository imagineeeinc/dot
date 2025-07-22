source .bashrc.shared.sh

export PATH=":~/go/bin:$PATH"

# Deno
export DENO_INSTALL="~/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
# go
export GOBIN=$(go env GOPATH)/bin
export PATH="$GOBIN:$PATH"

# Nim
export PATH=~/.nimble/bin:$PATH

export EDITOR="nvim"
export NDK=~/android-ndk-r26b
export android_ndk_path=~/android-ndk-r26b

export XDG_CONFIG_HOME=~/.config

# fzf
# export FZF_DEFAULT_OPTS="--border --bind 'enter:become(lvim {})"

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh

. "$HOME/.cargo/env"
