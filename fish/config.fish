if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx EDITOR nvim
    set -gx fish_cursor_insert line
    fish_vi_key_bindings 
    set fish_key_bindings fish_user_key_bindings
end
