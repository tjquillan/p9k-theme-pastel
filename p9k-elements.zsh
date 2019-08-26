# [ background_jobs: presence of background jobs ] ==================================================================================
typeset -g POWERLEVEL9K_BACKGROUND_JOBS_ICON=""
typeset -g POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND="none"

# [battery: current battery status ] ================================================================================================
typeset -g POWERLEVEL9K_BATTERY_LOW_THRESHOLD=20

typeset -g POWERLEVEL9K_BATTERY_LOW_FOREGROUND="$__PASTEL_COLORS[red]"
typeset -g POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND="$__PASTEL_COLORS[yellow]"
typeset -g POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND="$__PASTEL_COLORS[green]"

# [ context: user@host ] ============================================================================================================
# typeset -g 

# [chruby: ] ========================================================================================================================
typeset -g POWERLEVEL9K_CHRUBY_BACKGROUND="none"

# execution_time ====================================================================================================================
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="$__PASTEL_COLORS[yellow]"
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="none"

# [ context: user@host ] ============================================================================================================
typeset -g POWERLEVEL9K_CONTEXT_BACKGROUND="none"

# date ==============================================================================================================================
typeset -g POWERLEVEL9K_DATE_FOREGROUND="$__PASTEL_COLORS[grey]"
typeset -g POWERLEVEL9K_DATE_BACKGROUND="none"

# [ dir: current directory ] ========================================================================================================
typeset -g POWERLEVEL9K_DIR_SHOW_WRITABLE=true

typeset -g POWERLEVEL9K_SHORTEN_DELIMITER="..."
typeset -g POWERLEVEL9K_SHORTEN_DIR_LENGTH=7

typeset -g POWERLEVEL9K_FOLDER_ICON=""
typeset -g POWERLEVEL9K_HOME_ICON=""
typeset -g POWERLEVEL9K_HOME_SUB_ICON=""
typeset -g POWERLEVEL9K_ETC_ICON=""
typeset -g POWERLEVEL9K_LOCK_ICON=""

typeset -g POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="$__PASTEL_COLORS[purple]"
typeset -g POWERLEVEL9K_DIR_HOME_FOREGROUND="$__PASTEL_COLORS[blue]"
typeset -g POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="$POWERLEVEL9K_DIR_HOME_FOREGROUND"
typeset -g POWERLEVEL9K_DIR_ETC_FOREGROUND="$__PASTEL_COLORS[purple]"
typeset -g POWERLEVEL9K_DIR_NOT_WRITABLE_FOREGROUND="$__PASTEL_COLORS[red]"
typeset -g POWERLEVEL9K_DIR_{DEFAULT,HOME,HOME_SUBFOLDER,ETC,NOT_WRITABLE}_BACKGROUND="none"

# [ disk_usage: disk usage of current partition ] ===================================================================================
typeset -g POWERLEVEL9K_DISK_USAGE_BACKGROUND="none"

# [ host: host name ] ===============================================================================================================
typeset -g POWERLEVEL9K_HOST_BACKGROUND="none"

# [ ip: IP address ] ================================================================================================================
typeset -g POWERLEVEL9K_IP_FOREGROUND="$__PASTEL_COLORS[grey]"
typeset -g POWERLEVEL9K_IP_BACKGROUND="none"

# [ vpn_ip: VPN IP address ] ========================================================================================================
typeset -g POWERLEVEL9K_VPN_IP_FOREGROUND="$__PASTEL_COLORS[grey]"
typeset -g POWERLEVEL9K_VPN_IP_BACKGROUND="none"

# [ public_ip: public IP address ] ==================================================================================================
typeset -g POWERLEVEL9K_PUBLIC_IP_FOREGROUND="$__PASTEL_COLORS[grey]"
typeset -g POWERLEVEL9K_PUBLIC_IP_BACKGROUND="none"

# [ load: machine's load averages ] =================================================================================================
typeset -g POWERLEVEL9K_LOAD_BACKGROUND="none"

# [ nodenv: node.js version from nodenv (https://github.com/nodenv/nodenv) ] ========================================================
typeset -g POWERLEVEL9K_NODEENV_BACKGROUND="none"

# [ prompt_char: prompt symbol ] ====================================================================================================
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS}_FOREGROUND="$__PASTEL_COLORS[blue]"
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VICMD,VIVIS}_FOREGROUND="$__PASTEL_COLORS[red]"
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIINS_CONTENT_EXPANSION="$PASTEL_PROMPT_CHAR_INS"
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VICMD_CONTENT_EXPANSION="$PASTEL_PROMPT_CHAR_CMD"
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIVIS_CONTENT_EXPANSION="$PASTEL_PROMPT_CHAR_VIS"
typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL=""

# [ rbenv: ruby version from rbenv (https://github.com/rbenv/rbenv) ] ===============================================================
typeset -g POWERLEVEL9K_RBENV_BACKGROUND="none"

# [ pyenv: python environment (https://github.com/pyenv/pyenv) ] ====================================================================
typeset -g POWERLEVEL9K_PYENV_FOREGROUND="$__PASTEL_COLORS[yellow]"
typeset -g POWERLEVEL9K_PYENV_BACKGROUND="none"

# [ rspec_stats: ] ==================================================================================================================
typeset -g POWERLEVEL9K_RSPEC_STATS_BACKGROUND="none"

# [ status: exit code of the last command ] =========================================================================================
typeset -g POWERLEVEL9K_STATUS_OK_FOREGROUND="$__PASTEL_COLORS[green]"
typeset -g POWERLEVEL9K_STATUS_ERROR_FOREGROUND="$__PASTEL_COLORS[red]"
typeset -g POWERLEVEL9K_STATUS_{OK,ERROR}_BACKGROUND="none"

typeset -g POWERLEVEL9K_CARRIAGE_RETURN_ICON=

typeset -g POWERLEVEL9K_STATUS_OK=false

# [ ram: free RAM ] ==================================================================================================================
typeset -g POWERLEVEL9K_RAM_FOREGROUND="$__PASTEL_COLORS[yellow]"
typeset -g POWERLEVEL9K_RAM_BACKGROUND="none"

# [ symfony2_tests: ratio of test classes vs code classes for Symfony2 ] =============================================================
typeset -g POWERLEVEL9K_SYMFONY2_TESTS_BACKGROUND="none"

# [ time: current time ] =============================================================================================================
typeset -g POWERLEVEL9K_TIME_FOREGROUND="$__PASTEL_COLORS[grey]"
typeset -g POWERLEVEL9K_TIME_BACKGROUND="none"

# [ user: current username ] =========================================================================================================
typeset -g POWERLEVEL9K_USER_{DEFAULT,SUDO}_FOREGROUND="$__PASTEL_COLORS[orange]"
typeset -g POWERLEVEL9K_USER_ROOT_FOREGROUND="$__PASTEL_COLORS[red]"
typeset -g POWERLEVEL9K_USER_{DEFAULT,SUDO,ROOT}_BACKGROUND="none"

# [ vcs: vcs status ] ================================================================================================================
typeset -g POWERLEVEL9K_VCS_UNTRACKED_ICON="?"
typeset -g POWERLEVEL9K_VCS_UNSTAGED_ICON="!"
typeset -g POWERLEVEL9K_VCS_STAGED_ICON="+"
typeset -g POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON="<"
typeset -g POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=">"
typeset -g POWERLEVEL9K_VCS_STASH_ICON="*"

typeset -g POWERLEVEL9K_VCS_LOADING_FOREGROUND="$__PASTEL_COLORS[grey]"
typeset -g POWERLEVEL9K_VCS_LOADING_ACTION_FOREGROUND="$POWERLEVEL9K_VCS_LOADING_FOREGROUND"
typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND="$__PASTEL_COLORS[brightgreen]"
typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="$__PASTEL_COLORS[red]"
typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="$__PASTEL_COLORS[yellow]"

typeset -g POWERLEVEL9K_VCS_{CLEAN,UNTRACKED,MODIFIED}_UNTRACKEDFORMAT_FOREGROUND="$POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND"
typeset -g POWERLEVEL9K_VCS_{CLEAN,UNTRACKED,MODIFIED}_UNSTAGEDFORMAT_FOREGROUND="$POWERLEVEL9K_VCS_MODIFIED_FOREGROUND"
typeset -g POWERLEVEL9K_VCS_{CLEAN,UNTRACKED,MODIFIED}_STAGEDFORMAT_FOREGROUND="$__PASTEL_COLORS[green]"
typeset -g POWERLEVEL9K_VCS_{CLEAN,UNTRACKED,MODIFIED}_INCOMING_CHANGESFORMAT_FOREGROUND="$POWERLEVEL9K_VCS_CLEAN_FOREGROUND"
typeset -g POWERLEVEL9K_VCS_{CLEAN,UNTRACKED,MODIFIED}_OUTGOING_CHANGESFORMAT_FOREGROUND="$POWERLEVEL9K_VCS_CLEAN_FOREGROUND"
typeset -g POWERLEVEL9K_VCS_{CLEAN,UNTRACKED,MODIFIED}_STASHFORMAT_FOREGROUND="$POWERLEVEL9K_VCS_CLEAN_FOREGROUND"
typeset -g POWERLEVEL9K_VCS_{CLEAN,UNTRACKED,MODIFIED}_ACTIONFORMAT_FOREGROUND="$__PASTEL_COLORS[red]"

typeset -g POWERLEVEL9K_VCS_{STAGED,UNSTAGED,UNTRACKED,CONFLICTED,COMMITS_AHEAD,COMMITS_BEHIND}_MAX_NUM=-1

typeset -g POWERLEVEL9K_VCS_GIT_ICON=""
typeset -g POWERLEVEL9K_VCS_GIT_GITHUB_ICON=""
typeset -g POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON=""
typeset -g POWERLEVEL9K_VCS_GIT_GITLAB_ICON=""
typeset -g POWERLEVEL9K_VCS_BRANCH_ICON=""
typeset -g POWERLEVEL9K_VCS_COMMIT_ICON=""

typeset -g POWERLEVEL9K_SHOW_CHANGESET=false
typeset -g POWERLEVEL9K_CHANGESET_HASH_LENGTH=6

# vi_mode ===========================================================================================================================

# [ virtualenv: python virtual environment (https://docs.python.org/3/library/venv.html) ] ==========================================
typeset -g POWERLEVEL9K_VIRTUALENV_FOREGROUND="$__PASTEL_COLORS[green]"

typeset -g POWERLEVEL9K_PYTHON_ICON=""