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
alias symbolicate="/Applications/Xcode.app/Contents/SharedFrameworks/DVTFoundation.framework/Versions/A/Resources/symbolicatecrash"

export DEVELOPER_DIR="`readlink /private/var/db/xcode_select_link`"
export PATH="$PATH:$DEVELOPER_DIR/usr/bin"
export PATH="$PATH:/opt/homebrew/bin"
export PATH="$PATH:/Users/justin/Library/Android/sdk/platform-tools"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
