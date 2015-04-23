set fish_path $HOME/.oh-my-fish
set TERM xterm-256color
set HOST (hostname)

# Theme
set fish_theme bobthefish
set -g theme_display_git yes
set -g theme_display_hg no
set -g theme_display_virtualenv no
set -g theme_display_ruby no
set -g theme_display_user yes

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
set fish_plugins git brew ssh vi-mode

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
. $fish_path/oh-my-fish.fish

tmux
