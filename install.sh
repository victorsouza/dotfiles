echo "Installing dotfiles"
DIR=$PWD

# install powerline-shell
cd $DIR/powerline-shell/
python install.py
cd $DIR
ln -sf $DIR/powerline-shell.py $DIR/powerline-shell/powerline-shell.py

# create symlinks
ln -sf $DIR/zshrc ~/.zshrc
ln -sf $DIR/bashrc ~/.bashrc
ln -sf $DIR/gitconfig ~/.gitconfig

echo "Installation complete! Relogin to take effect"

#ln -sf $DIR/.vimrc ~/.vimrc
#ln -sf $DIR/dircolors-solarized ~/dircolors-solarized
#ln -sf $DIR/mc-solarized.ini ~/mc-solarized.ini
# ln -n (--no-dereference) prevents recursive symlinking of directory symlinks
#ln -nsf $DIR/.bash ~/.bash
# source bootstrap file to .bashrc if it's not already included
#BSINCLUDE='. ~/.bash/bootstrap.sh'
#if grep -Fq "$BSINCLUDE" ~/.bashrc;
#    then :;
#else
#    echo -e "\n\n$BSINCLUDE" >> ~/.bashrc
#fi
