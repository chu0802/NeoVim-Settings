# nvim
My customized NeoVim's settings.

***Install Nvim**: See [here](https://github.com/neovim/neovim/releases).*

***Usage**: Clone the repo to `$HOME/.config/`, and install the below packages.*

## Plugin Manager:
I'm using [pathogen](https://github.com/tpope/vim-pathogen) as my vim-plugin manager. See [here](https://github.com/tpope/vim-pathogen) for installing.

## Plugin:

Type the following command to automatically download all packages I'm using.

```
bash packages_loader.sh
```

or

Download packages ***in your favor***.

### ncm2-related

***Note**: To avoid error message, one must first install `pynvim`, `jedi`, type the following command:*
```
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
