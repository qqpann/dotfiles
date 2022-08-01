if [ -f $HOME/.dotfiles/zsh/.omz.zshrc ]; then
	source $HOME/.dotfiles/zsh/.omz.zshrc
fi

# =================================================================
# Aliases
alias c.='code .'
# =================================================================

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# pyenv
eval "$(pyenv init -)"