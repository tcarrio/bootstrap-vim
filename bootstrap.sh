function validate_installed() {
  prog=$1
  if ! which "$prog"
  then
    echo "$prog is not installed"
    exit 1
  fi
}

for req in git node wget
do
  validate_installed $req
done

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget -O $HOME/.vimrc https://git.sr.ht/~tcarrio/bootstrap-vim/blob/master/.vimrc

