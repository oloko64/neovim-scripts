# neovim-scripts

Scripts to install neovim with some plugins

## Apps used in this project

[Vim Bootstrap](https://vim-bootstrap.com/) - A app to generate a basic `.vim` file.

[coc.vim](https://github.com/neoclide/coc.nvim) - Nodejs extension host for vim & neovim, load extensions like VSCode and host language servers.

## How to install

Go to the folder `scripts` and run the desired file for your distribution (Current is Arch or Ubuntu).

If the file is not executable just run `chmod +x [THE_FILE_HERE]`.

After the installation is complete restart your terminal and run `vim`, it will start vim and download it's plugins, wait a minute for everything to download.

After that restart `vim` and type into it's command line `:CocInstall coc-sh coc-prettier coc-eslint coc-snippets coc-html coc-tsserver coc-json coc-pyright coc-markdownlint
`, this will download some of my favorite [language servers](https://github.com/neoclide/coc.nvim/wiki/Language-servers), check the link to a lot more.
