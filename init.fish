set PATH /usr/local/bin /usr/local/sbin $PATH
set TERM xterm-256color
set HOST (hostname)

function title
    printf "\033k$argv\033\\" # "
end

# vi-mode
# function fish_mode_prompt --description "Displays the current mode"
#     if test "$fish_key_bindings" = "fish_vi_key_bindings"
#         switch $fish_bind_mode
#         case default
#             printf "\e[1;38;5;%d;48;5;%dm N \e[0m" 0 144
#         case insert
#             printf "\e[1;38;5;%d;48;5;%dm I \e[0m" 0 45
#         case visual
#             printf "\e[1;38;5;%d;48;5;%dm V \e[0m" 0 208
#         end
#         set_color normal
#         echo -n ''
#     end
# end

if status --is-login
    # Theme
    set -g theme_display_git yes
    set -g theme_display_hg no
    set -g theme_display_virtualenv no
    set -g theme_display_ruby no
    set -g theme_display_user yes

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
