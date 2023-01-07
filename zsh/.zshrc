if [ -f $HOME/.dotfiles/zsh/.omz.zshrc ]; then
	source $HOME/.dotfiles/zsh/.omz.zshrc
fi

# =================================================================
# Aliases
alias c.='code .'
alias ls='ls --color=auto'
# =================================================================

# asdf - cross-language version manager
#. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Flutter
export PATH="$PATH:$HOME/Applications/flutter/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"

# cocoapods (required by flutter)
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/qiushi/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# pyenv
eval "$(pyenv init -)"

# poetry
export PATH="$HOME/.local/bin:$PATH"

# openssl
# required for some python packages such as grpcio
export LDFLAGS="-L/opt/homebrew/opt/openssl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl/include"
# zlib
export LDFLAGS="-L/opt/homebrew/opt/zlib/lib"
export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/qiushi/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/qiushi/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/qiushi/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/qiushi/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# GNU coreutils for mac, from brew
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
