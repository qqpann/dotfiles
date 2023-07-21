mkdir -p $HOME/.local/bin

# Check if zsh is installed
if ! command -v zsh >/dev/null 2>&1; then
    echo "zsh is not installed."
    echo "ex: sudo apt install zsh; sudo chsh -s /usr/bin/zsh"
    echo "Exiting."
    exit 1
fi

# check if sh is POSIX-compliant
if sh -c 'true' >/dev/null 2>&1; then
    posix_sh=sh
else
    # check if dash or ash is installed and use it as posix_sh
    if command -v dash >/dev/null 2>&1; then
        posix_sh=dash
    elif command -v ash >/dev/null 2>&1; then
        posix_sh=ash
    else
        echo "No POSIX-compliant shell found (checked sh, dash, and ash)."
        exit 1
    fi
fi
echo "Using POSIX-compliant shell: $posix_sh"

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# echo "Install brew in advance."
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/zsh/.zprofile ~/.zprofile
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/vim/vimrc ~/.vim_runtime/my_configs.vim

git -C "$HOME/.dotfiles" update-index --assume-unchanged ~/.dotfiles/zsh/.zshrc

# Starship prompt
curl -fsSL https://starship.rs/install.sh | $posix_sh -s -- --bin-dir $HOME/.local/bin

# zsh-completions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# pnpm
curl -fsSL https://get.pnpm.io/install.sh | sh -

# pyenv
curl https://pyenv.run | bash

