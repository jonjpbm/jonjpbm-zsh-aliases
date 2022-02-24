alias vi="nvim"
alias rep="cd ~/dev/repositories"
alias dev="cd ~/dev/"
alias cls="clear"
alias flc='vim ~/fave_linux_commands'
alias simd='date +%Y%m%d%H%M'
alias cs="bash $HOME/scripts/Bash/createSQL.sh"
#alias np="vi $HOME/notepad"
alias np="vi ~/$home/np"
alias cp="cp -v"
alias cpd="copydir"
alias cpf="copyfile"
alias mv="mv -v"
alias saw='saml2aws'

# Convert decimal to binary
function decimal2binary () {
  echo "obase=2;$1" | bc
}

alias d2b="decimal2binary"

# Export AWS Profile
function ExportAWSProfile () {
  export AWS_PROFILE=${1}
}
alias eap="ExportAWSProfile"

# Unset AWS Profile
function UnsetAWSProfile () {
  unset AWS_PROFILE
}
alias uap="UnsetAWSProfile"

# UTC Conversion
function to_utc () {
  if [ -z "${1}" ];then
    date -u
    TZ=":US/Eastern" date
    TZ=":US/Central" date
    TZ=":US/Mountain" date
    TZ=":US/Arizona" date
    TZ=":US/Pacific" date
    TZ=":US/Alaska" date
    TZ=":US/Hawaii" date
    unset TZ
  else
    gdate --date="TZ=\":US/Central\" ${1}" -u
  fi
}
alias utc="to_utc"

# Convert utc time passed to now
# NOTE: b/c this is on mac, I used coreutils tool gdate and NOT
# the mac native date command
function from_utc () {
  gdate --date="TZ=\"UTC\" ${1}"
}
alias futc="from_utc"
