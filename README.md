# My very basic VIM setup

## Prereqs

1. Silver Searcher

    `sudo apt-get install silversearcher-ag`

    Create a `~/.ignore` file for patterns you don't want to search, eg:

    ```
    node_modules/
    bin/
    ```

2. Fuzzy Find

    ```
    git clone https://github.com/junegunn/fzf.git .fzf
    git clone https://github.com/junegunn/fzf.vim.git .fzf.vim
    ./.fzf/install --all
    ```

    Add these to your `.bashrc` or equivalent:

    ```
    export FZF_DEFAULT_COMMAND='ag --hidden -g ""'
    export FZF_DEFAULT_OPTS='-m --preview-window=right:30%'

    alias vz='vi `fzf`'
    ```

## Sync and install

`sudo apt-get install vim`

`git clone https://github.com/jersmith/myvimrc.git .vim`

`cd .vim`

`./pack/install.sh`



