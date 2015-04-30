export TERM=xterm-256color
export HOST=$(hostname)

# sets user@hostname for screen and tmux title
if [ -z "$STY" ] && [ -z "$TMUX" ] && [ -n "$SSH_TTY" ]; then
    printf "\033k$USER@$HOST\033\\"
fi

export PS1="\[\e[01;36m\]\u\[\e[0m\]\[\e[01;37m\]@\[\e[0m\]\[\e[01;32m\]\h\[\e[0m\]\[\e[01;37m\]:\[\e[0m\]\[\e[01;33m\]\w\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[01;31m\]\\$\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"
