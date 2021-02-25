#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## Useful aliases
alias ls='exa -al --color=always --group-directories-first' # preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias aup="pamac upgrade --aur"
alias grubup="sudo update-grub"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias wget='wget -c '
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias upd='sudo reflector --latest 5 --age 2 --fastest 5 --protocol https --sort rate --save /etc/pacman.d/mirrorlist && cat /etc/pacman.d/mirrorlist && sudo pacman -Syu && fish_update_completions'

# Hardware Info
alias hw='hwinfo --short'
# Sort installed packages according to size in MB
alias big="expac -H M '%m\t%n' | sort -h | nl"
# List amount of -git packages
alias gitpkg='pacman -Q | grep -i "\-git" | wc -l'
#Cleanup orphaned packages
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'
#get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"
#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"

# PS1='[\u@\h \W]\$ '

# Starship
eval "$(starship init bash)"
