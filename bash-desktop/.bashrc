source ~/.bashrc.shared.sh

# Deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# bun
# export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"

# go
export GOBIN=$(go env GOPATH)/bin
export PATH="$GOBIN:$PATH"

# Nim
export PATH="$HOME/.nimble/bin:$PATH"

# Cargo (rust)
export PATH="$HOME/.cargo/bin:$PATH"

export EDITOR="nvim"
export XDG_CONFIG_HOME=~/.config

