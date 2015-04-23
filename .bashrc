export TERM=xterm-256color
export HOST=$(hostname)

# sets user@hostname for screen and tmux title
if [ -z "$STY" ] && [ -z "$TMUX" ] && [ -n "$SSH_TTY" ]; then
    printf "\033k$USER@$HOST\033\\"
fi

PS1="\[\e[35m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\] \w \[\e[31m\]\\$\[\e[m\] "
