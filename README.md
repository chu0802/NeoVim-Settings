# Enhanced NeoVim Configuration
This repository contains my customized NeoVim settings for an optimized editing experience.

## Installation

1. **NewVim**: Ensure you have NeoVim installed. For installation instructions, refer [here](https://github.com/neovim/neovim/releases).
2. **Clone Repository**: Clone this repository to $HOME/.config/.
```bash
git clone https://github.com/chu0802/nvim ~/.config/nvim
```
3. **Install Packages**: Proceed to install the required packages as outlined below.

## Plugin Manager: Pathogen

I utilize [Pathogen](https://github.com/tpope/vim-pathogen) as my plugin manager for NeoVim. If you haven't set it up, you can find instructions [here](https://github.com/tpope/vim-pathogen).

## Installing Plugins

To install the plugins I use, simply run the following command:

```bash
bash packages_loader.sh
```

Alternatively, you can manually download the plugins according to your preference.

### ncm2-related Plugins

To prevent any error messages, make sure to install pynvim and jedi by running the following commands:

```bash
python3 -m pip install pynvim
python3 -m pip install jedi
```

* [ncm2](https://github.com/ncm2/ncm2)
* [ncm2-bufword](https://github.com/ncm2/ncm2-bufword)
* [ncm2-jedi](https://github.com/ncm2/ncm2-jedi)
* [ncm2-path](https://github.com/ncm2/ncm2-path)
* [nvim-yarp](https://github.com/roxma/nvim-yarp)

### Theme / Syntax
* [vim-one](https://github.com/rakr/vim-one)

#### Syntax for python
* [python-syntax](https://github.com/vim-python/python-syntax)

#### Syntax for swift
* [keith/swift.vim](https://github.com/keith/swift.vim)
### Explorer
* [nerdtree](https://github.com/preservim/nerdtree)
