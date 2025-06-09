# Dotfiles

Includes dotfiles to my linux setup.
I use Linux across multiple devices thus each application has it's own folder with config,
so I can mix and match config on device rather than installing the whole repo.

Most of the packages are installed via the package manager, some are required to follow an online guide.
This document dosen't tell you how to install the packages,
it just hints what should be in the setup.

## Main Workflow Apps
- Editor: [Lazy Vim](https://www.lazyvim.org/) is *cool* neovim bassed editor with **extra** features built in ([Installing](https://lazyvim.org/installation)).
- Multiplexer: [tmux](https://github.com/tmux/tmux) is a *terminal multiplexer* (Install from built in package manager).
- Shell: [Oh my zsh](https://ohmyz.sh/) another *shell* with some smart features and **theming** (Install zsh then add [oh my zsh](https://github.com/ohmyzsh/ohmyzsh/wiki#welcome-to-oh-my-zsh)).
- Git TUI: [Lazygit](https://github.com/jesseduffield/lazygit) a terminal based git client with a nice ui and keybinds ([Installing](https://github.com/jesseduffield/lazygit#installation)).
- Music: [cmus](https://cmus.github.io/) a terminal music player, plays through pulseaudio. (Install from built in package manager)

## Other apps

*These are installation links*

### Development

- [Neovim v0.9.0+](https://github.com/neovim/neovim/wiki/Installing-Neovim) (**Required**)
- [Git](https://cli.github.com/) (**Required**)
- [GNU Make](https://www.gnu.org/software/make/) ([Windows](https://gnuwin32.sourceforge.net/packages/make.htm)) (**Required**)
- [Powershell 7+](https://learn.microsoft.com/en-us/powershell/scripting/whats-new/migrating-from-windows-powershell-51-to-powershell-7?view=powershell-7.2) (Windows) (**Required**)
- [oh my posh](https://ohmyposh.dev/) (Windows) (recommended)

### Programming

- [Pyhton](https://www.python.org/) & [pip](https://pypi.org/project/pip/) (**Required**)
- [Node & NPM](https://nodejs.org/) (**Required**)
- [Nim](https://nim-lang.org/install.html) (*optional*)
- [Rust & Cargo](https://www.rust-lang.org/tools/install) (*optional*)
- [Go](https://go.dev/) (*optional*)
- GCC (from package manager) (**Required**)

### Tools

- [Eza](https://eza.rocks/) (recommended)
- [nala](https://gitlab.com/volian/nala) (recommended)
- [Glow (markdown reader)](https://github.com/charmbracelet/glow) (recommended)
- [Ollama (llm runtime)](https://github.com/ollama/ollama) ([ollama on termux requires compiling from source](https://gitlab.com/-/snippets/3682973)) (required for my setup) 
- [ani-cli](https://github.com/pystardust/ani-cli) (can be installed from package manager) (*optional*)
- ncdu (a tui file size viewer) (from package manager) (recommended)
- ranger (a tui file manager) (from package manager) (recommended)
- [zoxide (better `cd`)](https://github.com/ajeetdsouza/zoxide) (recommended)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) (recommended)
- [atuin](https://docs.atuin.sh/guide/installation/) (recommended)
- [goneovim](https://github.com/akiyosi/goneovim?tab=readme-ov-file#getting-started) - A GUI for neovim.

## Post Install

- Install [Nerdfont](https://www.nerdfonts.com/)

## Installing the dotfiles

Make sure git is installed, then clone this repo.

Install [`GNU Stow`](https://www.gnu.org/software/stow/).
```bash
# Debain/ Ubuntu/ Termux
apt install stow -y
```

To install see the folders in the root of the repo and run `stow --adopt <application>`,
passing the correct folder name into the `<application>` to install to the `$HOME` folder.
The `base` folder has basic config like compiler things.

e.g.:
```bash
# Adopt Neovim
stow --adopt nvim
# Adopt tmux
stow --adopt tmux
# Adopt bashrc and zshrc
stow --adopt bash
stow --adpot zsh
```

## Note on bashrc and zshrc
My main Linux setup is on Termux on android so my setup is not optimal and I don't have a permanent contemporary setup.
I store self complied/ downloaded binaries in `~/.local/bin/`.
