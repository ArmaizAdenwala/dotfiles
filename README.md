# dotfiles

My dotfiles used for `nvim` and `zsh`.

## Setup

### nvim

Download `dein`: `curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh`

Install `dein`: `sh ./installer.sh ~/.cache/dein`

Create symlink: `$ ln -s ~/path/to/dotfiles/init.vim ~/.config/nvim/init.vim`

Create `modules` folder: `$ mkdir ~/.config/nvim/modules`

Create symlink: `$ ln -s ~/code/dotfiles/modules/theme.vim ~/.config/nvim/modules/theme.vim`

Install silver searcher: `$ brew install the_silver_searcher`

### zsh
Install `oh-my-zsh`: `$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

Clone spaceship theme: `$ git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"`

Create symlink for spaceship: `$ ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"`

[Install Powerline Fonts](https://github.com/powerline/fonts)

Create symlink: `$ ln -s ~/path/to/dotfiles/.zshrc ~/.zshrc`

### iterm
Import `ArmaizItermConfig.json` to `item > Profiles` and set it to default.

[Install `onedark` theme for iterm2](https://github.com/nathanbuchar/atom-one-dark-terminal)

_Note: you may need to edit the `Font` to `Roboto Mono for Powerline` under `Profiles > text`_

## Notes

[Notes for nvim / vim commands](NVIM_NOTES.md)

[Notes for iterm commands](ITERM_NOTES.md)

[Notes for fzf commands](FZF_NOTES.md)
