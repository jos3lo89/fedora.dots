## Development Environment with Fedora 41
### Nerd fonts
- `IosevkaTerm Nerd Font` [Download](https://www.nerdfonts.com/font-downloads)
- Install
```bash
cd ~/Downloads
unzip IosevkaTermNerdFond.zip -d IosevkaTermNerdFond
sudo cp -r IosevkaTermNerdFond /usr/share/fonts/
sudo fc-cache -fv
```
### zsh - oh-my-zsh
- Install `zsh` 
```bash
sudo dnf install zsh -y
# Set default zsh
chsh -s $(which zsh)
# Call zsh
zsh
```
- Install `Oh My Zsh` [Download](https://ohmyz.sh/)

###  Kitty
- Install `kitty`
```bash
sudo dnf install kitty -y
```
- Change theme in Kitty
```bash
kittem theme
# Search and Choose /Kanagawa_dragon
# choose to create the kitty.conf
# copy the configuration file from ./kitty
```
### Zellij
- Install `Zellij` [Fedora 41](https://copr.fedorainfracloud.org/coprs/varlad/zellij/)
```bash
sudo dnf copr enable varlad/zellij  
sudo dnf install zellij -y
```
### Home brew 
- Install `Home brew` [Link](https://brew.sh/)
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
- Install packages
```bash
brew install gcc node pnpm neovim
# error in clipboard neovim
brew uninstall neovim # uninstall
brew install neovim --HEAD # reinstall
# Check the functioning of the clipboard
:echo has('clipboard') # 1 ok
```
### LazyVim
- Install `LazyVim` [Link](https://www.lazyvim.org/)
```bash
# Neovim >= 0.9.0 (needs to be built with LuaJIT) 
# Git >= 2.19.0 (for partial clones support)
# a Nerd Font(v3.0 or greater) (optional, but needed to display some icons)
# lazygit (optional)
sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit -y
# fzf: fzf (v0.25.1 or greater)
sudo dnf install fzf -y
# live grep: ripgrep
sudo dnf install ripgrep -y
# find files: fd
dnf install fd-find -y
# Clone the starter
git clone https://github.com/LazyVim/starter ~/.config/nvim
# Remove the .git folder, so you can add it to your own repo later
rm -rf ~/.config/nvim/.git
# finish
nvim ~/.config/nvim/
# copy the configurations en ./nvim
```
