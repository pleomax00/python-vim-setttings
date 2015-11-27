export PS1="\[$(tput setaf 7)\][\u@\h \[$(tput setaf 1)\]\W \[$(tput setaf 7)\]\\$] \[$(tput sgr0)\]"
#export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH:/usr/local/mysql/bin:/Users/shamail/Bin:/Users/shamail/Bin/maven/bin:/Applications/Postgres.app/Contents/Versions/9.4/bin:/Users/shamail/Bin/activator-1.3.5-minimal"

alias ls='ls --color=auto'
alias ww='cd ~/Development/Wigzo2.0'
alias td='cd ~/Development/Tunesdiary'
alias panel='ssh ubuntu@panel.wigzo.com'
alias stage='ssh wigzo@10.0.0.1'
alias aws='ssh wigzo@ec2-54-169-213-44.ap-southeast-1.compute.amazonaws.com'
alias tunesdiary='ssh tunesdiary@tunesdiary.com'
alias mishan='ssh ubuntu@mishanenergy.com'
alias finder='open -a Finder'
alias photoshop='open -a "Adobe Photoshop CS5"'
alias ss="hdiutil attach -imagekey diskimage-class=CRawDiskImage -nomount ~/.Data.fs"
alias stopmongo='launchctl stop homebrew.mxcl.mongodb'
alias startmongo='launchctl start homebrew.mxcl.mongodb'
alias mongolog='tail -f /usr/local/var/log/mongodb/mongo.log'

