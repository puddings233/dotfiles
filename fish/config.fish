if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx EDITOR nvim
    fish_vi_key_bindings 
    set fish_key_bindings fish_user_key_bindings
end
