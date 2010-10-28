# Must have in .zshrc
# export GAE_SDK=/Users/mikko/Work/Projects/gaesdk
# export GAE_PASS="xxx"
# export GAE_EMAIL="xxx@gmail.com"
# TODO: not very safe
alias gaeup="echo $GAE_PASS|$GAE_SDK/appcfg.py update . --email=$GAE_EMAIL --passin"
alias gaeupdate="$GAE_SDK/appcfg.py update ."
alias gaedev="python2.5 $GAE_SDK/dev_appserver.py ."
alias gaeapi="python2.5 $GAE_SDK/google/appengine/tools/remote_api_shell.py"

# helpers for bulkloader
# usage gaebulkdl Kind appname
function gaebulkdl() {
    echo $GAE_PASS|$GAE_SDK/bulkloader.py --dump --kind $1 --filename=$1.bin --url=http://$2.appspot.com/_ah/remote_api --email=$GAE_EMAIL --passin   
}
# usage gaebulkup Kind localhost.fi:8080 app_id email 
function gaebulkup() {
    echo $5|$GAE_SDK/bulkloader.py --restore --kind=$1 --filename=$1.bin --url=http://$2/_ah/remote_api --app_id=$3 --email=$4 --passin
} 
# remove all python files in current folder
alias rmpyc="find . -name '*.pyc' -print0|xargs -0 rm"
