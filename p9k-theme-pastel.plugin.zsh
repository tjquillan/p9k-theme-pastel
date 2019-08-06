# Allow special featueres for powerlevel10k
[ -v PASTEL_THEME_MODE ] || PASTEL_THEME_MODE="p9k"
[ -v PASTEL_COMPAT_MODE ] || PASTEL_COMPAT_MODE="auto"

local LC_ALL=C.UTF-8

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
    typeset -g PASTEL_PROMPT_CHAR="❯"
    typeset -g PASTEL_PROMPT_CHAR_INV="❮"
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
    typeset -g PASTEL_PROMPT_CHAR=">"
    typeset -g PASTEL_PROMPT_CHAR_INV="<"
    typeset -g POWERLEVEL9K_IGNORE_TERM_COLORS=true
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


_pastel_config_p9k() {
    typeset -g POWERLEVEL9K_WHITESPACE_BETWEEN_{LEFT,RIGHT}_SEGMENTS=  # no surrounding whitespace

    typeset -g POWERLEVEL9K_PROMPT_ON_NEWLINE=true
    typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=
    typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%(?.%F{$__PASTEL_COLORS[blue]}$PASTEL_PROMPT_CHAR%f.%F{$__PASTEL_COLORS[red]}$PASTEL_PROMPT_CHAR%f) "
    typeset -g {PS2,PS3}="$POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX"
}

_pastel_config_p10k() {
    POWERLEVEL9K_LEFT_PROMPT_ELEMENTS+=(newline prompt_char)
    typeset -g POWERLEVEL9K_BACKGROUND=                            # transparent background
    typeset -g POWERLEVEL9K_{LEFT,RIGHT}_{LEFT,RIGHT}_WHITESPACE=  # no surrounding whitespace
    typeset -g POWERLEVEL9K_VISUAL_IDENTIFIER_EXPANSION=           # disable segment icons

    # typeset -g {PS2,PS3}="%(?.%F{$__PASTEL_COLORS[blue]}$PASTEL_PROMPT_CHAR%f.%F{$__PASTEL_COLORS[red]}$PASTEL_PROMPT_CHAR%f) "
}

_pastel_config() {
    typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir vcs virtualenv)
    typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)

    typeset -g POWERLEVEL9K_{LEFT,RIGHT}_SUBSEGMENT_SEPARATOR=" "  # separate segments with a space
    typeset -g POWERLEVEL9K_{LEFT,RIGHT}_SEGMENT_SEPARATOR=        # no end-of-line symbol

    typeset -g POWERLEVEL9K_RPROMPT_ON_NEWLINE=false

    if typeset -f _pastel_config_$PASTEL_THEME_MODE > /dev/null; then
        _pastel_config_$PASTEL_THEME_MODE
    fi

    for x in $POWERLEVEL9K_LEFT_PROMPT_ELEMENTS $POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS; do 
        if typeset -f _pastel_config_$x > /dev/null; then
            _pastel_config_$x
        fi
    done
}

_pastel_init() {
    unset -m 'POWERLEVEL9K_*'
    _pastel_config
    if typeset -f _pastel_config_custom > /dev/null; then
        _pastel_config_custom
    fi
}