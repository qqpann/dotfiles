if [ -f $HOME/.dotfiles/update.sh ]; then
	source $HOME/.dotfiles/update.sh
fi
if [ -f $HOME/.dotfiles/zsh/.omz.zshrc ]; then
	source $HOME/.dotfiles/zsh/.omz.zshrc
fi

# =================================================================
# Aliases
alias c.='code .'
alias ls='ls -GFh'
alias ll='ls -alFh'
alias la='ls -A'
alias lt='ls -lt'
alias lr='ls -R'
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
# do not track pnpm setup in git, as it is machine specific

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

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
