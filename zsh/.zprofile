# only mac
if [[ "$OSTYPE" == "darwin"* ]]; then
	source $HOME/.dotfiles/zsh/.mac.zshrc

	# brew
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi
