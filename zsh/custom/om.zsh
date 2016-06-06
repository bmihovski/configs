# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#
alias om-allgroups='cut -d: -f1 /etc/group'
alias om-scp-resume="rsync --partial --progress --rsh=ssh $1"
alias om-arch-upgrade="sudo pacman -Syu"

function om-del-line () { sed -i $1d $2}

alias om-antfs-cli="
until  antfs-cli; do
    echo '-------------->Antfs-cli returns error. Try again !'
    sleep 1
done"
