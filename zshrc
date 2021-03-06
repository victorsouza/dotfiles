export EDITOR="atom -nw"
export PATH=/usr/sbin:/sbin:${PATH}

if [[ $TERMINIX_ID ]]; then
  source /etc/profile.d/vte.sh
fi

source "$HOME/.dotfiles/antigen/antigen.zsh"

antigen-use oh-my-zsh

antigen bundles <<EOBUNDLES
  zsh-users/zsh-syntax-highlighting
  desyncr/vagrant-zsh-completion
  zsh-users/zsh-completions src
  colored-man-pages
EOBUNDLES

function powerline_precmd() {
	PS1="$(~/.dotfiles/powerline-shell/powerline-shell.py $? --shell zsh 2> /dev/null)"
}

function install_powerline_precmd() {
	for s in "${precmd_functions[@]}"; do
		if [ "$s" = "powerline_precmd" ]; then
			return
		fi
	done
	precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
	install_powerline_precmd
fi

antigen-apply
