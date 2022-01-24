abbr -a l 'exa'
abbr -a ls 'exa'
abbr -a ll 'exa -l --git'
abbr -a lll 'exa -la --git'
abbr -a c cargo
abbr -a e nvim
abbr -a g git
abbr -a gs 'git status'
abbr -a ga 'git add'
abbr -a vimdiff 'nvim -d'
abbr -a src 'source ~/.config/fish/config.fish'

[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

# Fish should not add things to clipboard when killing
# See https://github.com/fish-shell/fish-shell/issues/772
set FISH_CLIPBOARD_CMD "cat"

# Fish git prompt
set __fish_git_prompt_use_informative_chars 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate ''
set __fish_git_prompt_showupstream 'none'
set -g fish_prompt_pwd_dir_length 3


function fish_prompt
	set_color brblack
	echo -n "["(date "+%H:%M")"] "
	set_color blue
	echo -n (hostname)
	if [ $PWD != $HOME ]
		set_color brblack
		echo -n ':'
		set_color yellow
		echo -n (basename $PWD)
	end
	set_color green
	printf '%s ' (__fish_git_prompt)
	set_color red
	echo -n '| '
	set_color normal
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/benholmes/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

