# Aliases
alias g='git'
alias gst='git status -sb'
alias gl='git pull'
alias gup='git pull --rebase && git submodule update'
alias gp='git push'
alias gd='git diff | mate'
alias gdv='git diff -w "$@" | vim -R -'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias glg5='git log --stat --max-count=5'
alias gstash='git stash'
alias gstasha='git stash apply'
alias gcp='git cherry-pick'
alias gupbr='git fetch && git rebase origin/master'

# Git and svn mix
alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'

#
# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

# these aliases take advangate of the previous function
alias ggpull='git pull origin $(current_branch)'
alias ggpush='git push origin $(current_branch)'
alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'

# update branch from master
alias gupmaster='git pull origin master'
alias gres='git reset --hard && git clean -f'
alias gunstage='git reset HEAD'              # remove files from index (tracking)
alias guncommit='git reset --soft HEAD^'     # go back before last commit, with files in uncommitted state
alias grev1='git reset --hard HEAD~1' #revert last commit
alias gamend='git commit -a --amend'