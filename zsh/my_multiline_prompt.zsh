# Copied and modified by me from external/git-prompt.zsh/examples

ZSH_GIT_PROMPT_FORCE_BLANK=1
ZSH_GIT_PROMPT_SHOW_UPSTREAM="full"

ZSH_THEME_GIT_PROMPT_PREFIX="%B  %b"
#ZSH_THEME_GIT_PROMPT_PREFIX="%B · %b"
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
ZSH_THEME_GIT_PROMPT_SEPARATOR=" ["
ZSH_THEME_GIT_PROMPT_BRANCH="⎇ %{$fg_bold[cyan]%}"
ZSH_THEME_GIT_PROMPT_UPSTREAM_SYMBOL="%{$fg_bold[yellow]%}⟳ "
ZSH_THEME_GIT_PROMPT_UPSTREAM_PREFIX="%{$fg[yellow]%} ⤳ "
ZSH_THEME_GIT_PROMPT_UPSTREAM_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DETACHED="%{$fg_no_bold[cyan]%}:"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg_no_bold[cyan]%}↓"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_no_bold[cyan]%}↑"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[red]%}x"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[green]%}●"
ZSH_THEME_GIT_PROMPT_UNSTAGED="%{$fg[red]%}+"
ZSH_THEME_GIT_PROMPT_UNTRACKED="…"
ZSH_THEME_GIT_PROMPT_STASHED="%{$fg[blue]%}⚑"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✔"

PROMPT=$'\n%K{#223344}  %(?..%F{red}%?%f · )%B%~%b  %k\n%F{#334455}>%f '
#PROMPT=$'>╸%(?..%F{red}%?%f · )%B%~%b$(gitprompt)\n┗╸%F{blue}❯%f%F{cyan}❯%f%F{green}❯%f '
RPROMPT=$'$(gitprompt)'
