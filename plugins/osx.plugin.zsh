function tab() {
  osascript 2>/dev/null <<EOF
    tell application "System Events"
      tell process "Terminal" to keystroke "t" using command down
    end
    tell application "Terminal"
      activate
      do script with command "cd \"$PWD\"; $*" in window 1
    end tell
EOF
}

alias f='mdfind'
alias gitx='/Applications/Work/GitX.app/Contents/MacOS/GitX . &'
# requires https://github.com/trentm/json
alias pastejson='pbpaste | json'
# copies your external ip to clipboard
alias myip="curl http://icanhazip.com/ | pbcopy"