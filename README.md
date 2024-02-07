# Dotfiles
Includes dotfiles to my linux setup.

Most of the packeges are installed via the pacakge manager, some are required to follow an onlije guide. 
This document dosen't tell you how to install the pacakges, 
it just hints what should be in the setup.

## Main Workflow Apps
- Editor: [Lunarvim](https://lunarvim.org/) is *cool* neovim bassed editor with **extra** features built in ([Installing](https://www.lunarvim.org/docs/installation)).
- Multiplexer: [tmux](https://github.com/tmux/tmux) is a *terminal multiplexer* (Install from built in package manager).
- Shell: [Oh my zsh](https://ohmyz.sh/) another *shell* with some smart features and **theming** (Install zsh then add [oh my zsh](https://github.com/ohmyzsh/ohmyzsh/wiki#welcome-to-oh-my-zsh)).
- Music: [cmus](https://cmus.github.io/) a terminal music player. (Install from built in package manager)

## Other apps
*These are installation links*
- [Neovim v0.9.0+](https://github.com/neovim/neovim/wiki/Installing-Neovim) (**Required**)
- [Git](https://cli.github.com/) (**Required**)
- [GNU Make](https://www.gnu.org/software/make/) ([Windows](https://gnuwin32.sourceforge.net/packages/make.htm))
- [Pyhton](https://www.python.org/) & [pip](https://pypi.org/project/pip/)
- [Node & NPM](https://nodejs.org/)
- [Nim](https://nim-lang.org/install.html)
- [Rust & Cargo](https://www.rust-lang.org/tools/install)
- [Powershell 7+](https://learn.microsoft.com/en-us/powershell/scripting/whats-new/migrating-from-windows-powershell-51-to-powershell-7?view=powershell-7.2) (Windows)
- [Lazygit](https://github.com/jesseduffield/lazygit#installation) (required for my setup)
- [Exa](https://the.exa.website/) (optinal extra)
- [Glow (markdown reader)](https://github.com/charmbracelet/glow) (optinal extra)
- GCC (from package manager)

## Post Install
- Add lvim to path
- Install [Nerdfont](https://www.nerdfonts.com/)

## Installing the dotfiles
Make sure git is installed, then clone this repo.

Install [`GNU Stow`](https://www.gnu.org/software/stow/).
```bash
apt install stow -y
```
Then install by running `stow` to create thw symlinks.
> Note: using `stow` will overwrite the existing config, 
so back it up before running this command.
```bash
cd dotfiles
stow --append .
```

## Note on bashrc and zshrc
My main linux setup is on termux on android so my setup is not optimal.
I store my binaries in `~/.local/bin/`.  
