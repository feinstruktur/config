# Install via:
# curl https://raw.github.com/sas71/zsh-stuff/master/zshrc.zsh-template -o ~/.zshrc

source ~/Projects/antigen/antigen.zsh

antigen-lib
antigen-bundle git
antigen-bundle osx
antigen-bundle autojump
antigen-bundle zsh-users/zsh-syntax-highlighting
antigen-theme sas71/zsh-stuff sas
antigen-apply

setopt AUTO_CD

alias hist='history'
alias .='open .'
alias dir='ls -Al'
alias an='antigen'

export EDITOR='mate -w'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
