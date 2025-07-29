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

# NVM
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# PIP
export PATH="$HOME/.local/lib/python3.13/site-packages:$PATH"

export PATH="$HOME/bin:$PATH"

export EDITOR="nvim"
export XDG_CONFIG_HOME=~/.config

# SSH agent
[ -z "$SSH_AUTH_SOCK" ] && eval "$(ssh-agent -s)"

