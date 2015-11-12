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

# added by Anaconda3 2.3.0 installer
export PATH="/Users/sas/anaconda/bin:$PATH"
