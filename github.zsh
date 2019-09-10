alias gs='git status'
alias push="git push"
alias pull="git pull upstream master"
alias clean-branch="git branch | grep -v "master" | xargs git branch -D"
alias clean-stash="git stash clear"
alias remote='git remote -v'
alias amend='git commit --amend'

alias oneline='echo "$(git log --oneline --reverse)"'
alias ol='oneline'
alias scan='git secrets --scan --before'

# Checks out a branch, or creates and checks it out if it doesn't exist
co () {
	git checkout -b "$1"
}

# Makes a commit without having to use -m or quotes
cm () {
	message="$@"
    git commit -m "$message"
}

# Opens the github page for a repo/branch in your browser.
#
# gh [remote] [branch]
gh() {
  git rev-parse 2>/dev/null

  if [[ $? != 0 ]]
  then
      echo "Not a git repository."
      return 1
  fi

  remote="origin"
  if [ ! -z "$1" ]
  then
      remote="$1"
  fi

  remote_url="remote.${remote}.url"

  giturl=$(git config --get $remote_url)
  if [ -z "$giturl" ]
  then
      echo "$remote_url not set."
      return 1
  fi

  giturl=$(echo "$giturl" | cut -d '@' -f 2)
  #giturl=${giturl/git\@github\.com\:\https://github.com/}
  giturl=${giturl%\.git}
  giturl=$(echo "$giturl" | tr ':' '/')
  giturl="https://$giturl"

  if [ -z "$2" ]
  then
      branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  else
      branch="$2"
  fi

  if [ ! -z "$branch" ]
  then
      giturl="${giturl}/tree/${branch}"
  fi

  echo "Opening GitURL $giturl"
  open $giturl
  return 0
}
