# ----------------------------------
# Colors
# ----------------------------------
# See Also: https://en.wikipedia.org/wiki/ANSI_escape_code

# Original:
# Alexander Schilling's great works.
# https://gitlab.com/alinex/bash-lib/-/tree/master/

# FG_RED "Failed"
# echo "$(FG_RED)Failed$(_RESET)"
# echo "$(FG_RED ERROR): error message here"

[ "$TERM" = "unknown" ] && TERM=''
_TERM=${TERM:-xterm-256color}

_ECHO() {
    if [ -z "$1" ] && [ ! -t 0 ]; then
      cat </dev/stdin
      tput -T$_TERM sgr0;
    elif [ -n "$1" ] && [ ! "$1" = "+" ]; then
      echo -n "$@"
      tput -T$_TERM sgr0;
    fi
}

# Foreground color
FG_BLACK() { tput -T$_TERM setaf 0; _ECHO "$@"; }
FG_RED() { tput -T$_TERM setaf 1; _ECHO "$@"; }
FG_GREEN() { tput -T$_TERM setaf 2; _ECHO "$@"; }
FG_YELLOW() { tput -T$_TERM setaf 3; _ECHO "$@"; }
FG_BLUE() { tput -T$_TERM setaf 4; _ECHO "$@"; }
FG_MAGENTA() { tput -T$_TERM setaf 5; _ECHO "$@"; }
FG_CYAN() { tput -T$_TERM setaf 6; _ECHO "$@"; }
FG_WHITE() { tput -T$_TERM setaf 7; _ECHO "$@"; }

# Background color
#
# If you want to use background colors, uncomment bellows.
#
# BG_BLACK() { tput -T$_TERM setab 0; _ECHO "$@"; }
# BG_RED() { tput -T$_TERM setab 1; _ECHO "$@"; }
# BG_GREEN() { tput -T$_TERM setab 2; _ECHO "$@"; }
# BG_YELLOW() { tput -T$_TERM setab 3; _ECHO "$@"; }
# BG_BLUE() { tput -T$_TERM setab 4; _ECHO "$@"; }
# BG_MAGENTA() { tput -T$_TERM setab 5; _ECHO "$@"; }
# BG_CYAN() { tput -T$_TERM setab 6; _ECHO "$@"; }
# BG_WHITE() { tput -T$_TERM setab 7; _ECHO "$@"; }

# Styles
#
# If you want to use styles, uncomment bellows.
#
# _BOLD() { tput -T$_TERM bold; _ECHO "$@"; }
# _UNDERLINE() { tput -T$_TERM smul; _ECHO "$@"; }
# _INVERSE() { tput -T$_TERM rev; _ECHO "$@"; }
# _DIM() { tput -T$_TERM dim; _ECHO "$@"; }

# Reset
_RESET() { tput -T$_TERM sgr0; }

