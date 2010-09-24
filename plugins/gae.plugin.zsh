# Must have in .zshrc
# export GAE_SDK=/Users/mikko/Work/Projects/gaesdk
# export GAE_PASS="xxx"
# export GAE_EMAIL="xxx@gmail.com"
# TODO: not very safe
alias gaeup="echo $GAE_PASS|$GAE_SDK/appcfg.py update . --email=$GAE_EMAIL --passin"
alias gaeupdate="$GAE_SDK/appcfg.py update ."
alias gaedev="python2.5 $GAE_SDK/dev_appserver.py ."
# remove all python files in current folder
alias rmpyc="find . -name '*.pyc' -print0|xargs -0 rm"