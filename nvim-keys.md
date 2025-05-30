#  Neovim Keys
Lazy Vim is a distro for neovim which is a terminal text editor.

This is a list full of neovim keybinds and commands.
Few of these keys are specific to my configratuon, thus a braket is next to it to suggest the actual command/ keys.
If you would like you can cutomize it and anything else in the `config.lua`
## Leader
Leader is a key to initlize some commands, in this config is the 'spacebar', you can customise it to be '/' if you would like.

In this document it is addressed as `<leader>`

Also a neat feature about lunar vim is pressing the `<leader>` will opena pane after 1 second which shows all the commands mapped to it (with descriptions),
pressing one will run it or if it has a sub command it will show more commands. Try doing `<leader>-g` to show all the git commands.

## Cursor
- `i`: insert text mode.
- `I`: Insert at start of line.
- `v`: selection mode (visual mode).
- `Ctrl+Alt+up/down (ctrl+v)`: Block selection mode, follow it by a `I` type your change and `esc` to do multiline editing.
- `o`: insert new line bellow.
- `O`: insert new line above.
- `a`: enter after the cursor.
- `A`: go to end of the line.
- `c`: after doing visual selection, deletes text and enters insert mode.
- `Arrowkeys`: move around.
- `b`: move to start of the word currently on.
- `n (e)`: move to end of the word currently on.

## Funtions
- `ctrl+s (:w/ <leader>w)`: save.
- `shift+x (:q/ <leader>q)`: close current buffer.
- `:qa`: close all buffer (quit).
- `ctrl+c (:Gen)`: opens a ai chat window to talk to, when run on selection it sends the selection to the ai. (make sure `ollama` is installed on the system).
- `<leader>f`: opens Telesocpe file finder.
- `q:`: see vim command history.
- `:Oil`: opens `oil.nvim` buffer file manager, reffer to project for more details.
- `:Glow`: opens a preview of the current markdown file.
- `:Beacon`: highlights where the cursor is.

## Terminal
- `ctrl+t`: terminal (popup).
- `alt+1`: bottom terminal.
- `alt+2`: side terminal.
- `alt+3`: popup terminal.

## Manipulations
- `y`: copy (visual mode).
- `x`: cut (visual mode).
- `c`: delete and insert (visual mode).
- `ctrl+shift+v (p)`: paste.
- `shift+p`: paste before the cursor.
- `d`: delete.
- `shift+z ("_d)`: delete (do not put in clipboard) (visual mode).
- `tab (>)`: indent (visual mode).
- `shift+tab (<)`: unindent (visual mode).
- `<number[optional]>gcc`: automaticly comment out or in a line or `<number>` of lines down.
- `.`: replays last change.

## Find and Replace
- `/<search>`: searches buffer for <search> 
  - `m (/)`: moves to next result
  - `shift+M (?)`: moves to previous result
  - `:noh`: stops search and removes highlights.
  - `gn`: selects in visual mode the search.
- `*`: searches buffer for the current word under the cursor. The  use like normal search
- `:%s/<search>/<replace>/g`: searches the whole buffer for `<search>` and replaces it with `<repalce>`. `%` sets it to the whole buffer. Adding `c` to the end adds a confirmation to all the replacements.

## Tabs
- `shift+h (<leader>bb)`: prev tab.
- `shift+h (<leader>bn)`: next tab.
- `<leader>c`: close tab.
- `<leader>bj`: jump to tab.
- `:tabnew <filename>`: new file in a new tab with `<filename>` as the filename.

## Window (Buffer)
- `ctrl+left/right`: increase/decrese size horizontly.
- `ctrl+up/down`: increase/decrese size verticaly.
- `ctrl+m (:WinShift)`: rearange buffers (reference the winshift plugin).

## Git
- `<leader>g`: open up git menu
- `<leader>gg`: open up lazygit
refer to [lazygit plugin](https://github.com/kdheepak/lazygit.nvim) for usage.

## Neovide
- `ctrl++`: scale window bigger.
- `ctrl+-`: scale window smaller.
