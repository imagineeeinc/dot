# Dotfiles

Includes dotfiles to my linux setup.
I use Linux across multiple devices thus each application (and even device) has it's own folder with config,
so I can mix and match config on device rather than installing the whole repo.

Most of the packages are installed via the package manager, some are required to follow an online guide.
This document doesn't tell you how to install the packages,
it just hints what should be in the setup,
and links to the appropriate install page if needed.

[**Desktop dotfiles**](https://github.com/imagineeeinc/desktop-dot) are stored separately to showcase just the desktop,
however the desktop experience relies on these dot files.

## Main Workflow Apps

- Editor: [Lazy Vim](https://www.lazyvim.org/) is *cool* neovim bassed editor with **extra** features built in ([Installing](https://lazyvim.org/installation)).
- Multiplexer: [tmux](https://github.com/tmux/tmux) is a *terminal multiplexer* (Install from built in package manager).
- Shell: zsh + [starship](https://starship.rs) *shell* with some smart features and **theming** (Install zsh, change the shell using `chsh` and install [starship](https://starship.rs/guide/#%F0%9F%9A%80-installation)).

## Requirement

- [Git](https://git-scm.com) (package manager)
- [Neovim v0.9.0+](https://github.com/neovim/neovim/wiki/Installing-Neovim) (package manager)
- [Zoxide](https://github.com/ajeetdsouza/zoxide?tab=readme-ov-file#installation)
- [Eza](https://eza.rocks/) (package manager)
- [Lazygit](https://github.com/jesseduffield/lazygit#installation)

## Other apps

### Programming

- [Pyhton](https://www.python.org/) & [pip](https://pypi.org/project/pip/) (**Required**)
- [Node & NPM *via nvm*](https://github.com/nvm-sh/nvm) (**Required**)
- [Nim](https://nim-lang.org/install.html) (*optional*)
- [Rust & Cargo](https://www.rust-lang.org/tools/install) (*optional*)
- [Go](https://go.dev/) (*optional*)

### Tools

- [nala](https://gitlab.com/volian/nala) (recommended on debian)
- [Glow](https://github.com/charmbracelet/glow) (recommended) - tui markdown reader
- [ani-cli](https://github.com/pystardust/ani-cli) or [jerry](https://github.com/justchokingaround/jerry/) (*optional*)
- ncdu (package manager) (recommended) - a tui file size viewer
- ranger (package manager) (recommended) - a tui file manager
- [goneovim](https://github.com/akiyosi/goneovim?tab=readme-ov-file#getting-started) - A GUI for neovim.
- [fastfetch](https://github.com/fastfetch-cli/fastfetch?tab=readme-ov-file#installation) - a fetch tool (Desktop fastfetch config stored in `desktop-dot`)

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
The `base` folder has basic/ old config like compiler things.

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

### Note on zsh

zsh relies on starship, so when installing zsh config files,
ensure to install starship config files.

Also, the reason why bashrc exists, while a zshrc also exists,
is because zsh configures the front end,
while bash manages the back end like aliases and environment variable setting.

### Note on bash

Each bash configuration is separate for each device, thus to reduce redundancy,
shared config is stored in `bash-shared/.bashrc.shared.sh`.

Also, ensure to install the corresponding main bash setup.

- Termux
- desktop
- server

