#!/bin/bash

echo
echo "Installing system dependencies..."
echo
sudo pacman -S neovim python-pip the_silver_searcher

echo
echo "Installing user dependencies..."
echo

mkdir -p ~/.config/nvim
cp ../configs/init.vim ~/.config/nvim

pip install virtualenv
pip install neovim

cd ~
echo -e "\n## Python local export\nexport PATH=\$PATH:/home/\$USER/.local/bin" >> ~/.bash_profile
. ~/.bash_profile

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

cd ~
. ~/.bashrc
. ~/.nvm/nvm.sh

nvm install 17
nvm use 17
npm install -g yarn

yarn global add neovim

cd ~
echo -e "\n## Neovim alias\nalias vim='nvim'" >> ~/.bashrc

echo
echo "You need to restart your terminal and after restarts start vim and add this to the command :CocInstall coc-prettier coc-eslint coc-snippets coc-html coc-tsserver coc-json coc-pyright coc-markdownlint"
