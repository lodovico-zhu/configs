HOME=$HOME

sudo apt install dialog
sudo apt install qemu-system-arm
#install 32bit libs
sudo apt-get install libc6:i386 gcc-multilib g++-multilib
#install ctags ag
sudo apt install exuberant-ctags silversearcher-ag
sudo apt install meld
#install proxychains
sudo apt install python-setup
sudo apt install python-pip
sudo -H pip install --upgrade pip
sudo -H pip install shadowsocks
sudo apt install proxychains

#configure vim && tmux 
ln -s $HOME/github/configs/tmux.conf $HOME/.tmux.conf

#compile vim
sudo apt-get install libncurses5-dev libgnome2-dev \
                     libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
                     libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
                     python3-dev ruby-dev lua5.1 lua5.1-dev liblua5.1-dev libperl-dev git


vim_src_path=$HOME/tmp/vim-master


setupVIM(){
ln -s $HOME/github/configs/vimrc $HOME/.vimrc
mkdir -p ~/.vim/autoload
cd ~/.vim/autoload
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

installVIM(){
    echo "Compile VIM from source..."
    cd $vim_src_path
    make distclean
    ./configure --with-features=huge \
        --enable-luainterp=yes \
        --enable-perlinterp=yes \
        --enable-pythoninterp=yes \
        --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
        --enable-python3interp=yes \
        --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
        --enable-fontset=yes \
        --enable-cscope=yes \
        --enable-multibyte \
        --enable-fail-if-missing \
        --enable-gui=gtk2 \
        --prefix=/usr/local \
        --with-compiledby='Professional operations'
    make -j 20
    sudo make install
}



