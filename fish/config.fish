if status is-interactive
    # Commands to run in interactive sessions can go here
end

#Cargo completion
set -Ua fish_user_paths $HOME/.cargo/bin $fish_user_paths

set -Ua fish_user_paths /opt/devkitpro/tools/bin $fish_user_paths
set -U fish_user_paths /opt/devkitpro/devkitPPC/bin $fish_user_paths

#Fish Completion    
kitty + complete setup fish | source

#Starship Prompt // https://starship.rs
starship init fish | source
