# neovim config

Based on the starter template for [LazyVim](https://github.com/LazyVim/LazyVim).

## neovim install
ubuntu

```bash
sudo snap install nvim --classic
```

## Install

```bash
git clone git@github.com:lrei/vimfiles.git ~/.config/nvim
```

### Mac/brew

```bash
brew install pipx
pipx ensurepath
pipx install hererocks
hererocks ~/.local/share/nvim/lazy-rocks/hererocks -l5.1 -r latest
brew install ripgrep
brew install fd
brew install fzf
brew install lazygit
brew install pipx
pipx ensurepath
pipx install latex2text
brew install lazygit
pipx install pylatexenc
```

### ubuntu
```bash
sudo apt-get install pipx
pipx install herocks
hererocks ~/.local/share/nvim/lazy-rocks/hererocks -l5.1 -r latest
sudo apt-get install ripgrep
sudo apt-get install fd-find
sudo apt-get install luarocks
sudo snap install tectonic
```


### node

```bash
npm install -g prettier
npm install -g markdownlint-cli2
npm install -g markdown-toc
npm install -g @mermaid-js/mermaid-cli
```
