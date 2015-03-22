# oh-my-zsh config
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="steeef"
DISABLE_AUTO_UPDATE="true"
plugins=(git)

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# aliases
alias lsd="python /home/justin/dropbox.py ls"
alias syslog="sudo tail -f /private/var/log/system.log"
alias mergelogs="cat \$(ls -tr ./log-*) > log-merged.txt"
alias log="git log --no-merges --format=%B"
alias symbolicate="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/PrivateFrameworks/DTDeviceKitBase.framework/Versions/A/Resources/symbolicatecrash"
alias webstrap="~/.web-bootstrap/bootstrap.sh"
alias gitp="git push --recurse-submodules=on-demand"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export GOPATH="~/go"

