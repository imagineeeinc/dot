# Dotfiles

Includes dotfiles to my linux setup.
I use Linux across multiple devices thus each application (and even device) has it's own folder with config,
so I can mix and match config on device rather than installing the whole repo.

Most of the packages are installed via the package manager, some are required to follow an online guide.
This document dosen't tell you how to install the packages,
it just hints what should be in the setup.

[**Desktop dotfiles**](https://github.com/imagineeeinc/desktop-dot) are stored separately to showcase just the desktop,
however the desktop experience relies on these dot files.

## Main Workflow Apps
- Editor: [Lazy Vim](https://www.lazyvim.org/) is *cool* neovim bassed editor with **extra** features built in ([Installing](https://lazyvim.org/installation)).
- Multiplexer: [tmux](https://github.com/tmux/tmux) is a *terminal multiplexer* (Install from built in package manager).
- Shell: zsh + [Oh my zsh](https://ohmyz.sh/) another *shell* with some smart features and **theming** (Install zsh then add [oh my zsh](https://github.com/ohmyzsh/ohmyzsh/wiki#welcome-to-oh-my-zsh)).
- Git TUI: [Lazygit](https://github.com/jesseduffield/lazygit) a terminal based git client with a nice ui and keybinds ([Installing](https://github.com/jesseduffield/lazygit#installation)).

## Other apps

*These are installation links*

### Development

- [Neovim v0.9.0+](https://github.com/neovim/neovim/wiki/Installing-Neovim) (**Required**)
- [Git](https://git-scm.com) (**Required**)
- [GNU Make](https://www.gnu.org/software/make/) ([Windows](https://gnuwin32.sourceforge.net/packages/make.htm)) (**Required**)
- [Powershell 7+](https://learn.microsoft.com/en-us/powershell/scripting/whats-new/migrating-from-windows-powershell-51-to-powershell-7?view=powershell-7.2) (Windows) (**Required**)
- [oh my posh](https://ohmyposh.dev/) (Windows) (recommended)

### Programming

- [Pyhton](https://www.python.org/) & [pip](https://pypi.org/project/pip/) (**Required**)
- [Node & NPM *via nvm*](https://github.com/nvm-sh/nvm) (**Required**)
- [Nim](https://nim-lang.org/install.html) (*optional*)
- [Rust & Cargo](https://www.rust-lang.org/tools/install) (*optional*)
- [Go](https://go.dev/) (*optional*)
- GCC (from package manager) (**Required**)

### Tools

- [Eza](https://eza.rocks/) (recommended) - better `ls`, aliased to `lss`
- [nala](https://gitlab.com/volian/nala) (recommended on debian)
- [Glow](https://github.com/charmbracelet/glow) (recommended) - tui markdown reader
- [ani-cli](https://github.com/pystardust/ani-cli) or [jerry](https://github.com/justchokingaround/jerry/) (*optional*)
- ncdu (from package manager) (recommended) - a tui file size viewer
- ranger (from package manager) (recommended) - a tui file manager
- [zoxide](https://github.com/ajeetdsouza/zoxide) (recommended) - better `cd`
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) (recommended)
- [McFly](https://github.com/cantino/mcfly) (recommended) - shell history
- [goneovim](https://github.com/akiyosi/goneovim?tab=readme-ov-file#getting-started) - A GUI for neovim.

## Installing the dotfiles

Make sure git is installed, then clone this repo.

Install [`GNU Stow`](https://www.gnu.org/software/stow/).
```bash
# Debian/ Ubuntu/ Termux
apt install stow -y
# Fedora
dnf install stow -y
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

### Note on bash

Each bash configuration is separate for each device, thus to reduce redundancy,
shared config is stored in `bash-shared/.bashrc.shared.sh`.

Also, ensure to install the corresponding main bash setup.
- Termux
- desktop
- server

## Note on different devices
My Linux setup is spread across Termux, server and desktop, so each setup has been split into it's separate folder.
I store self complied/ downloaded binaries in `~/.local/bin/`.
