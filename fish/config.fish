#function fish_prompt -d "Write out the prompt"
#    # This shows up as USER@HOST /home/user/ >, with the directory colored
#    # $USER and $hostname are set by fish, so you can just use them
#    # instead of using `whoami` and `hostname`
#    printf '[ %s@%s ][%d] %s%s%s  > ' $USER $hostname $status\
#        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
#end
# Defined in /usr/share/fish/functions/fish_prompt.fish @ line 4
fish_add_path ~/.bin
fish_add_path ~/.venv/bin/
fish_add_path ~/.local/bin/
fish_add_path ~/.config/herd-lite/bin
alias nt 'nvim --cmd :terminal'
alias cb 'xclip -selection clipboard'

function fish_prompt --description 'Write out the prompt'
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status # Export for __fish_print_pipestatus.
    set -l normal (set_color normal)
    set -q fish_color_status
    or set -g fish_color_status red

    # Color the prompt differently when we're root
    set -l color_cwd $fish_color_cwd
    set -l suffix '>'
    if functions -q fish_is_root_user; and fish_is_root_user
        if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
        end
        set suffix '#'
    end

    # Write pipestatus
    # If the status was carried over (if no command is issued or if `set` leaves the status untouched), don't bold it.
    set -l bold_flag --bold
    set -q __fish_prompt_status_generation; or set -g __fish_prompt_status_generation $status_generation
    if test $__fish_prompt_status_generation = $status_generation
        set bold_flag
    end
    set __fish_prompt_status_generation $status_generation
    set -l status_color (set_color $fish_color_status)
    set -l statusb_color (set_color $bold_flag $fish_color_status)
    set -l prompt_status (__fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" $last_pipestatus)
    echo -n -s (prompt_login)' ' (set_color $color_cwd) (prompt_pwd) $normal (fish_vcs_prompt) $normal " "$prompt_status "  " $suffix " "
end
if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Custom
autostartx
function command_exists
	if command -v $argv[1] &> /dev/null
		return 0
	end
	return 1
end

function file_exists
	set file $argv[1]
	if ls $file &> /dev/null
		return 0
	end
	return 1
end

function ex_assert
	set command_ $argv[1]
	if not command_exists command_
		echo "Error: $command_ does not exist! please make sure to install $command_ before calling " >&2
		exit NOT_FOUND
	end
end
