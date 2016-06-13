# verification requires
command -v xclip >/dev/null 2>&1 || { 
        echo >&2 "Require 'xclip - command line interface to X selections (clipboard)' but it's not installed.  Aborting."; exit 1; }

command -v ctags >/dev/null 2>&1 || { 
        echo >&2 "Require 'ctags − Generate tag files for source code' but it's not installed.  Aborting."; exit 1; }

if ! vim --version | grep +python >/dev/null ; then 
    echo "Require 'vim with python enable' but it's not installed.  Aborting."; exit 1; 
fi
# end verification requires

ROOT_PATH="$(pwd)"

if [ -f ~/.vimrc ]; then
    echo "--------------------~/.vimrc exist. backup it ~/.vimrc_bck"
    mv ~/.vimrc ~/vimrc_bck
fi

echo "---------------- Create vimrc and .vim/--------------------------------"
ln -s $ROOT_PATH"/vimrc" ~/.vimrc
ln -s $ROOT_PATH"/vim" ~/.vim

echo "------------------ Cloning Vundle--------------------------------------"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle

mkdir ~/.vim/vimswap_files/
mkdir ~/.vim/undodir
mkdir ~/.vim/bundle
mkdir ~/.vim/colors

curl -L -o ~/.vim/colors/kolor.vim https://raw.githubusercontent.com/zeis/vim-kolor/master/colors/kolor.vim
curl -L -o ~/.vim/colors/blackboard.vim https://raw.githubusercontent.com/ovidiumiron/vim_setup/master/blackboard.vim
curl -L -o ~/.vim/colors/random1.vim https://raw.githubusercontent.com/ovidiumiron/vim_setup/master/random1.vim
echo "---------------- Next steps -------------------------------------------"
# http://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin
echo "--> 1. install fonts cp ~/.vim/bundle/powerline/font/* ./fonts; fc-cache -vf ~/.fonts---"
echo "--> 2. restart the terminal                                              ---"
echo "--> 3. launch vim and run :BundleInstall                                 ---"
