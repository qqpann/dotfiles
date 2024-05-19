# only mac
if [[ "$OSTYPE" == "darwin"* ]]; then
	# brew
	eval "$(/opt/homebrew/bin/brew shellenv)"

	source $HOME/.dotfiles/zsh/.mac.zshrc
fi
