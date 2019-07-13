# Allow special featueres for powerlevel10k
[ -v PASTEL_THEME_MODE ] || PASTEL_THEME_MODE="p9k"
[ -v PASTEL_COMPAT_MODE ] || PASTEL_COMPAT_MODE="auto"


_pastel_compat_mode_fancy () {
    typeset -gAh __PASTEL_COLORS=(
        red 009
        green 010
        brightgreen 041
        yellow 011
        blue 012
        purple 134
        grey 244
    )
    PROMPT_PREFIX_CHAR="❯"
}

_pastel_compat_mode_compat() {
    typeset -gAh __PASTEL_COLORS=(
        red 001
        green 002
        brightgreen 002
        yellow 003
        blue 004
        purple 005
        grey 008
    )
    PROMPT_PREFIX_CHAR=">"
    POWERLEVEL9K_IGNORE_TERM_COLORS=true
}


if [[ $PASTEL_COMPAT_MODE == "auto" ]]; then
    # Set different config if in tty
    if [[ -n $DISPLAY ]]; then
        _pastel_compat_mode_fancy
    else
        _pastel_compat_mode_compat
    fi
else
    if typeset -f _pastel_compat_mode_$PASTEL_COMPAT_MODE > /dev/null; then
        _pastel_compat_mode_$PASTEL_COMPAT_MODE
    else
        echo "Invalid Pastel Compat Mode: '$PASTEL_COMPAT_MODE'"
    fi
fi

source "$(dirname $0)/p9k-elements.zsh"

_pastel_config() {
    [ -v POWERLEVEL9K_LEFT_PROMPT_ELEMENTS ] || POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir vcs virtualenv)
    [ -v POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS ] || POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)

    POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=""
    POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=" "
    POWERLEVEL9K_WHITESPACE_BETWEEN_LEFT_SEGMENTS=""
    POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=""
    POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=" "
    POWERLEVEL9K_WHITESPACE_BETWEEN_RIGHT_SEGMENTS=""

    for x in $POWERLEVEL9K_LEFT_PROMPT_ELEMENTS $POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS; do 
        if typeset -f _pastel_config_$x > /dev/null; then
            _pastel_config_$x
        fi
    done

    POWERLEVEL9K_PROMPT_ON_NEWLINE=true
    POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
    POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
    POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%(?.%F{$__PASTEL_COLORS[blue]}$PROMPT_PREFIX_CHAR%f.%F{$__PASTEL_COLORS[red]}$PROMPT_PREFIX_CHAR%f) "
    PS2="$POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX"
    PS3="$POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX"
}

_pastel_init() {
    _pastel_config
    if typeset -f _pastel_custom_config > /dev/null; then
        _pastel_config_custom
    fi
}