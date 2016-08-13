# return status of the last command
local return_status="%(?::%{$fg[red]%}● )%{$reset_color%}"

# when connected via ssh show user@host in the prompt
local user_and_host="${SSH_TTY:+%n@%m:}"

# when inside screen show the session name
local screen_session="${STY+⟨${STY#[0-9]*.}⟩ }"

# show a red # for root. % otherwise
local prompt_char="%(#:%{$fg[red]%}:%{$fg[black]%})%#%{$reset_color%} "

# git info
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[white]%}] "
ZSH_THEME_GIT_PROMPT_SEPARATOR=""
ZSH_THEME_GIT_PROMPT_BRANCH=""
ZSH_THEME_GIT_PROMPT_STAGED=" %{$fg[blue]%}%{+%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS=" %{$fg[red]%}%{✗%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED=" %{$fg[white]%}%{*%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND=" %{$fg[yellow]%}%{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD=" %{$fg[green]%}%{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg[yellow]%}%{!%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# empty right prompt
RPROMPT=''

# prompt
PROMPT='${return_status}%{$fg[yellow]%}${screen_session}%{$reset_color%}${user_and_host}%{$fg[blue]%}$(shrink_path -f) $(git_super_status)${prompt_char}'
