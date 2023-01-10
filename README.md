Note: Instructions will only work for Unix-based system (ie. Linux, Mac, etc.)
# Prequisites
1. Have a `~/.config/` directory
2. Have `python3` installed
3. Have `npm` installed with `sudo apt install npm` or `brew install npm`
4. Have `yarn` installed with `sudo apt install yarn` or `brew install yarn`
5. Install `node` globally with `npm install -g node` or `[sudo apt/brew] install nodejs`

# Setup instructions
1. Run `git clone https://github.com/sahilkamboj3/nvim` into the `~/.config/` directory
2. `cd nvim` to go into `nvim` directory
3. Install neovim with `sudo apt install neovim` or `brew install neovim` [run `nvim` to ensure properly installed]
4. Open init.vim with `nvim init.vim`
5. In visual mode, run `:PlugInstall`
6. Once ran, close file, go to `~/.config/nvim/plugged/coc.nvim/` and run `yarn` and `yarn run`
7. Install python3 neovim library globally with `pip install neovim` or `pip3 install neovim`
8. Open `init.vim` again and in visual mode, run `:CocInstall` 
9. For any languages you want supported, install their language servers (ie. for C/C++ - ccls, for Go - gopls) and add to `coc-settings.json`. C/C++ and Go supported in `coc-settings.json` currently

Optional: Add `alias vim='nvim'` in `~/.bash_profile` or `~/.bash_rc` to open neovim using the `vim` command
