echo "Installing dotfiles"
DIR=$PWD

# install powerline-shell
$DIR/powerline-shell/install.sh

# create symlinks
ln -sf $DIR/zshrc ~/.zshrc
ln -sf $DIR/powerline-shell.py $DIR/powerline-shell/powerline-shell.py

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
