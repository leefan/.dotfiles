set fish_path $HOME/.oh-my-fish
set PATH /usr/local/bin /usr/local/sbin $PATH
set TERM xterm-256color
set HOST (hostname)

# Theme
set -g theme_display_git yes
set -g theme_display_hg no
set -g theme_display_virtualenv no
set -g theme_display_ruby no
set -g theme_display_user yes

function title
    printf "\033k$argv\033\\"
end

# sets user@hostname for screen and tmux title
if [ -n "$STY" ]
else if [ -n "$TMUX" ]
else
    title "$USER@$HOST"
end

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
source $fish_path/oh-my-fish.fish

# Theme and Plugins
Theme "bobthefish"
Plugin "ssh"

if [ -z "$SSH_TTY" ]
    tmux
end

# vi-mode
function fish_mode_prompt --description "Displays the current mode"
    if set -q __fish_vi_mode
        switch $fish_bind_mode
        case default
            printf "\e[1;38;5;%d;48;5;%dm N \e[0m" 0 144
        case insert
            printf "\e[1;38;5;%d;48;5;%dm I \e[0m" 0 45
        case visual
            printf "\e[1;38;5;%d;48;5;%dm V \e[0m" 0 208
        end
        set_color normal
        echo -n ''
    end
end
fish_vi_mode
