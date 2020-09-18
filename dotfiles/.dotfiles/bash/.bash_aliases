# alias htb_vpn='openvpn ~/Documents/htb/vpn/Glasgow.ovpn'

alias start_htb_vpn="sudo openvpn --config $HOME/Documents/htb/vpn/Glasgow.ovpn --daemon"
alias start_htb_release_vpn="sudo openvpn --config $HOME/Documents/htb/vpn/Glasgow-release.ovpn --daemon"
alias stop_htb_vpn="sudo killall openvpn"
alias endgame_vpn='openvpn ~/Documents/htb/vpn/Glasgow-endgame.ovpn'

alias kali_update='sudo apt-get clean && sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y'

alias fix_VBox="pkill VBoxClient 2>/dev/null; VBoxClient --clipboard && VBoxClient --seamless && VBoxClient --draganddrop"

alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"

alias ccat="pygmentize -g"

alias dirsearch="python3 /opt/dirsearch/dirsearch.py"
alias reconnoitre='python /opt/Reconnoitre/Reconnoitre/reconnoitre.py --services -o `pwd` -t'

alias ascii='man ascii | grep -m 1 -A 63 --color=never Oct'
alias ascii_2='man ascii | grep -m 1 -A 20 Tables'

alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'

alias backgitup='if git rev-parse --is-inside-work-tree >/dev/null; then git add .; git commit -a -m "Backup"; git push origin master; fi'

alias chrome="xhost +; su Glasgow -c google-chrome 2>/dev/null"

cgrep() {
  grep --color=always "$1\|$" $2;
}

alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"


# https://unix.stackexchange.com/questions/92447/bash-script-to-get-ascii-values-for-alphabet
chr() {
  [ "$1" -lt 256 ] || return 1
  printf "\\$(printf '%03o' "$1")"
}

ord() {
  LC_CTYPE=C printf '%d' "'$1"
}

alias lolcat=/usr/games/lolcat

alias search_notes='grep -rni /root/Documents/github/htb_notes/completed -e '
