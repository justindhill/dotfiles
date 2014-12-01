# oh-my-zsh config
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="steeef"
DISABLE_AUTO_UPDATE="true"
plugins=(git)

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# aliases
alias confs="nano ~/.zshrc"
alias lsd="python /home/justin/dropbox.py ls"
alias syslog="sudo tail -f /private/var/log/system.log"
alias oitdb="ssh root@oitdb.bernhard.wmich.edu"
alias cupsbcc="ssh root@cupsbcc.bernhard.wmich.edu"
alias cupsucc="ssh root@cupsucc.bernhard.wmich.edu"
alias snarkling="mosh herpderp.me"
alias seedbox="lftp -u sear nqhf056.dediseedbox.com"
alias mergelogs="cat \$(ls -tr ./log-*) > log-merged.txt"
alias log="git log --no-merges --format=%B"
alias symbolicate="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/PrivateFrameworks/DTDeviceKitBase.framework/Versions/A/Resources/symbolicatecrash"
alias minecraft="java -d64 -Xms4096M -Xmx5130M -jar /Applications/Minecraft.app/Contents/Resources/Java/Bootstrap.jar > /dev/null &"
alias webstrap="~/.web-bootstrap/bootstrap.sh"

# path modifications
PATH=$PATH:/opt/local/bin:/Users/justinhill/.rvm/gems/ruby-1.9.2-p320/bin:$HOME/.rvm/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Disable Crashlytics launching in Xcode on build completion
launchctl setenv FC_CRASHLYTICS_DISABLE "YES"

