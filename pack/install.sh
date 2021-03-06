#!/usr/bin/env bash
#
# See https://stories.abletech.nz/get-rid-of-your-vim-plugin-manager-7c8ff742f643#.abnjauzgk
#
# This file lives in ~/.vim/pack/install.sh
# Remember to add executable: chmod +x ~/.vim/pack/install.sh
#
# Create new folder in ~/.vim/pack that contains a start folder and cd into it.
#
# Arguments:
#   package_group, a string folder name to create and change into.
#
# Examples:
#   set_group syntax-highlighting
#
function set_group () {
  package_group=$1
  path="$HOME/.vim/pack/$package_group/start"
  mkdir -p "$path"
  cd "$path" || exit
}
# Clone or update a git repo in the current directory.
#
# Arguments:
#   repo_url, a URL to the git repo.
#
# Examples:
#   package https://github.com/tpope/vim-endwise.git
#
function package () {
  repo_url=$1
  expected_repo=$(basename "$repo_url" .git)
  if [ -d "$expected_repo" ]; then
    cd "$expected_repo" || exit
    result=$(git pull --force)
    echo "$expected_repo: $result"
  else
    echo "$expected_repo: Installing..."
    git clone -q "$repo_url"
  fi
}
(
set_group formatting
package https://github.com/editorconfig/editorconfig-vim.git &
package https://github.com/bkad/CamelCaseMotion.git &
package https://github.com/rust-lang/rust.vim.git &
wait
) &
(
set_group syntax
package https://github.com/tpope/vim-markdown.git &
package https://github.com/ap/vim-css-color.git &
package https://github.com/mustache/vim-mustache-handlebars.git &
package https://github.com/leafgarland/typescript-vim.git
wait
) &
(
set_group colorschemes
package https://github.com/itchyny/lightline.vim &
wait
) &
wait
