# Prequisites
1. Have a `~/.config/` directory
2. Have `yarn` installed
3. Install `node` globally
4. Have `python3` installed

# Setup instructions
Note: Instructions will only work for Unix-based system (ie. Linux, Mac, etc.)

1. Run `git clone https://github.com/sahilkamboj3/nvim` into the `~/.config/` directory
2. Install neovim with `sudo apt install neovim` or `brew install neovim` [run `nvim` to ensure properly installed]
3. Open init.vim with `nvim init.vim`
4. In visual mode, run `:PlugInstall`
5. Once ran, close file, go to `~/.config/nvim/plugged/coc.nvim/` and run `yarn` and `yarn run`
6. Install python3 neovim library globally with `pip install neovim` or `pip3 install neovim`
7. Open `init.vim` again and in visual mode, run `:CocInstall` 
8. For any languages you want supported, install their language servers (ie. for C/C++ - ccls, for Go - gopls) and add to `coc-settings.json`. C/C++ and Go supported in `coc-settings.json` currently
