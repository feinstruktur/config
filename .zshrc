# Install via:
# curl https://raw.github.com/sas71/zsh-stuff/master/zshrc.zsh-template -o ~/.zshrc

source ~/Projects/antigen/antigen.zsh

antigen-use oh-my-zsh
antigen-bundle git
antigen-bundle osx
antigen-bundle autojump
antigen-bundle zsh-users/zsh-syntax-highlighting
antigen-theme sas71/zsh-stuff sas
antigen-apply

setopt AUTO_CD

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

alias hist='history'
alias .='open .'
alias dir='ls -Al'
alias an='antigen'

export EDITOR='mate -w'

# environment variable that should not be under version control
if [ -e ~/.env.sh ]; then
	source ~/.env.sh
fi

export PATH="$HOME/bin:$PATH"

# docker
eval "$(docker-machine env default 2> /dev/null)"

source /usr/local/bin/virtualenvwrapper.sh
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# iterm2
source ~/.iterm2_shell_integration.zsh
