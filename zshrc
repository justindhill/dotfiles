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
alias webstrap="~/.web-bootstrap/bootstrap.sh"
alias gitp="git push --recurse-submodules=on-demand"
alias v='vagrant'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export GOPATH="~/go"

export DEVELOPER_DIR="`xcode-select -p`"
export PATH="$PATH:$DEVELOPER_DIR/usr/bin"
export PATH="$PATH:/Users/justin/Library/Android/sdk/platform-tools"
export HOMEBREW_GITHUB_API_TOKEN=294383f748c80f09959d8f3729976e5723e17f7d

# The next line updates PATH for the Google Cloud SDK.
source '/Users/justin/.google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/justin/.google-cloud-sdk/completion.zsh.inc'

vir() { source $1/bin/activate }
