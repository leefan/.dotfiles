TERM=xterm-256color
HOST=$(hostname)

# sets user@hostname for screen and tmux title
if [ -z "$STY" ] && [ -z "$TMUX" ] && [ -n "$SSH_TTY" ]; then
    printf "\033k$USER@$HOST\033\\"
fi
