# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#
alias om-allgroups='cut -d: -f1 /etc/group'
alias om-scp-resume="rsync --partial --progress --rsh=ssh $1"
function om-del-line () { sed -i $1d $2}
