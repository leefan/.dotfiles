set TERM xterm-256color
set HOST (hostname)

function title
    printf "\033k$argv\033\\" # "
end

if status --is-login
    # Theme
    set -g theme_display_git yes
    set -g theme_display_hg yes
    set -g theme_display_virtualenv yes
    set -g theme_display_vagrant yes
    set -g theme_display_ruby no
    set -g theme_display_user yes
    set -g theme_show_exit_status yes
    set -g theme_nerd_fonts yes

    # use rg for fzf
    set -gx FZF_DEFAULT_COMMAND 'rg --files --no-ignore-vcs --hidden'

    # sets user@hostname for screen and tmux title
    if [ -n "$STY" ]
    else if [ -n "$TMUX" ]
    else
        title "$USER@$HOST"
    end

    if [ -z "$SSH_TTY" ]
        if [ -z "$TMUX" ]
            tmux
        end
    end
    fish_vi_key_bindings
end

function rgl --wraps=rg --description="Curated rg with colored less"
    rg -pM 200 $argv | less -R
end

source /opt/homebrew/opt/asdf/asdf.fish
