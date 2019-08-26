# Allow special featueres for powerlevel10k
[ -v PASTEL_COMPAT_MODE ] || PASTEL_COMPAT_MODE="auto"

local LC_ALL=C.UTF-8

_pastel_compat_mode_fancy () {
    typeset -gAh __PASTEL_COLORS=(
        red 009
        green 010
        brightgreen 041
        yellow 011
        orange 003
        blue 012
        purple 134
        grey 244
    )
    typeset -g PASTEL_PROMPT_CHAR_INS="❯"
    typeset -g PASTEL_PROMPT_CHAR_CMD="❮"
    typeset -g PASTEL_PROMPT_CHAR_VIS="Ⅴ"
}

_pastel_compat_mode_compat() {
    typeset -gAh __PASTEL_COLORS=(
        red 001
        green 002
        brightgreen 002
        yellow 003
        orange 003
        blue 004
        purple 005
        grey 008
    )
    typeset -g PASTEL_PROMPT_CHAR_INS=">"
    typeset -g PASTEL_PROMPT_CHAR_CMD="<"
    typeset -g PASTEL_PROMPT_CHAR_VIS="V"
    typeset -g POWERLEVEL9K_IGNORE_TERM_COLORS=true
}

_pastel_prompt_char_precmd() {
    echo $P9K_PROMPT_CHAR_STATE

    case $P9K_PROMPT_CHAR_STATE in
    OK_VIINS | OK_VICMD | OK_VIVIS)
        local char_color="$__PASTEL_COLORS[blue]"
    ;;
    ERROR_VIINS | ERROR_VICMD | ERROR_VIVIS)
        local char_color="$__PASTEL_COLORS[red]"
    ;;
    *)
        local char_color="$__PASTEL_COLORS[blue]"
    ;;
    esac

    typeset -g PS2="%F{$char_color}%_$PASTEL_PROMPT_CHAR_INS%f "
    typeset -g PS3="%F{$char_color}$PASTEL_PROMPT_CHAR_INS%f "
}

# precmd_functions+=_pastel_prompt_char_precmd

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

unset -m 'POWERLEVEL9K_*'

typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs virtualenv newline prompt_char)
typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)

typeset -g POWERLEVEL9K_BACKGROUND=""                            # transparent background
typeset -g POWERLEVEL9K_{LEFT,RIGHT}_{LEFT,RIGHT}_WHITESPACE=""  # no surrounding whitespace
typeset -g POWERLEVEL9K_{LEFT,RIGHT}_SUBSEGMENT_SEPARATOR=" "    # separate segments with a space
typeset -g POWERLEVEL9K_{LEFT,RIGHT}_SEGMENT_SEPARATOR=""        # no end-of-line symbol
typeset -g POWERLEVEL9K_VISUAL_IDENTIFIER_EXPANSION=""           # disable segment icons
typeset -g POWERLEVEL9K_RPROMPT_ON_NEWLINE=false

typeset -g PS2="%F{%(?.$__PASTEL_COLORS[blue].$__PASTEL_COLORS[red])}%_$PASTEL_PROMPT_CHAR_INS%f "
typeset -g PS3="%F{%(?.$__PASTEL_COLORS[blue].$__PASTEL_COLORS[red])}$PASTEL_PROMPT_CHAR_INS%f "
typeset -gx PS4="%F{$__PASTEL_COLORS[blue]}%N:%i$PASTEL_PROMPT_CHAR_INS%f "

source "$(dirname $0)/p9k-elements.zsh"

if typeset -f _pastel_config_custom > /dev/null; then
        _pastel_config_custom
fi
