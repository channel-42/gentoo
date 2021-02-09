PROMPT=$'%{$fg_bold[blue]%}%n  %{$reset_color%} $(git_bubble)\
%{$fg[blue]%}%{$fg_bold[blue]%}%{$reset_color%} '
RPROMPT='%{$fg[cyan]%}﬌ %~%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}[ "
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""


git_branch_symbol=''
git_clean_symbol=''
git_modified_symbol='•'
git_added_symbol=''
git_deleted_symbol=''
git_renamed_symbol=''
git_untracked_symbol='裸'
git_copied_symbol=''
git_unmerged_symbol='!'
git_stashed_symbol=''

git_clean_color='green'
git_unstaged_color='yellow'
git_staged_color='magenta' 
git_stashed_color='blue'
git_unmerged_color='red'
git_symbols_color='black'


#from https://github.com/hohmannr/bubblified
# PROMPT FUNCTIONS
foreground () {
    # Helper function for 256 color support beyond basic color terms such as 'black', 'red' ...
    if [[ $1 =~ '[0-9]{3}' && $1 -le 255 && $1 -ge 0 ]]; then
        echo -n "%{$FG[$1]%}"
    else
        echo -n "%{$fg[$1]%}"
    fi
}
git_bubble () {
    # This parses 'git status -s' to retrieve all necessary information...I am new to this zsh scripting...mercy!
    local git_branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)

    if [[ -n $git_branch ]]; then
        # branch name with symbol, initialize symbols and git status output
        local git_info="$git_branch_symbol $git_branch"
        local git_symbols=""
        local git_status=$(git status -s 2> /dev/null | awk '{print substr($0,1,2)}') 

        # used for coloring (and some for icons)
        local git_unmerged=$(grep -m1 -E -- 'U|DD|AA' <<< $git_status)
        local git_branch_stashed=$(git stash list | grep $git_branch)
        local git_unstaged=$(echo -n $git_status | awk '{print substr($0,2,1)}')

        # used for icons
        local git_not_clean=$git_status
        local git_modified=$(grep -m1 'M' <<< $git_status)
        local git_added=$(grep -m1 'A' <<< $git_status)
        local git_deleted=$(grep -m1 'D' <<< $git_status)
        local git_untracked=$(grep -m1 '??' <<< $git_status)
        local git_renamed=$(grep -m1 'R' <<< $git_status)
        local git_copied=$(grep -m1 'C' <<< $git_status)

        # coloring
        if [[ -n $git_unmerged ]]; then
            local git_color=$git_unmerged_color   
            git_symbols="$git_symbols$git_unmerged_symbol"
        elif [[ -n $git_branch_stashed ]]; then
            local git_color=$git_stashed_color
            git_symbols="$git_symbols$git_stashed_symbol"
        elif [[ -n "${git_unstaged//[$' \t\r\n']}" && -n $git_not_clean ]]; then
            local git_color=$git_unstaged_color
        elif [[ -z "${git_unstaged//[$' \t\r\n']}" && -n $git_not_clean ]]; then
            local git_color=$git_staged_color
        else
            local git_color=$git_clean_color
            git_symbols="$git_symbols$git_clean_symbol"
        fi

        # icons
        if [[ -n $git_modified ]]; then
            git_symbols="$git_symbols$git_modified_symbol"
        fi
        if [[ -n $git_added ]]; then
            git_symbols="$git_symbols$git_added_symbol"
        fi
        if [[ -n $git_deleted ]]; then
            git_symbols="$git_symbols$git_deleted_symbol"
        fi
        if [[ -n $git_untracked ]]; then
            git_symbols="$git_symbols$git_untracked_symbol"
        fi
        if [[ -n $git_renamed ]]; then
            git_symbols="$git_symbols$git_renamed_symbol"
        fi
        if [[ -n $git_copied ]]; then
            git_symbols="$git_symbols$git_copied_symbol"
        fi

        echo -n "$(foreground $git_color)[ $git_info $git_symbols ]"
    fi
}
