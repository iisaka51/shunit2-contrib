
get_file_mode() {
    _FILE=$1
    stat -c "%#a" ${_FILE}
}

get_file_owner() {
    _FILE=$1
    stat -c "%U" ${_FILE}
}

get_file_group() {
    _FILE=$1
    stat -c "%G" ${_FILE}
}

get_file_owner_group() {
    _FILE=$1
    stat -c "%U.%G" ${_FILE}
}

is_symlink() {
    _FILE=$1
    # FILE exists and is a symbolic link
    test -h ${_FILE}
}

is_directory() {
    _FILE=$1
    # FILE exists and is a directory
    test -d ${_FILE}
}

is_exists() {
    _FILE=$1
    # FILE exists and is a regular file
    test -f ${_FILE}
}

is_readable() {
    _FILE=$1
    # FILE exists and is readable
    test -r ${_FILE}
}

is_writable() {
    _FILE=$1
    # FILE exists and is writable
    test -w ${_FILE}
}

is_executable() {
    _FILE=$1
    # FILE exists and is executable
    test -x ${_FILE}
}

# ----------------------------------
# Colors
# ----------------------------------

ESC=$(printf '\033')
RED="${ESC}[0;31m"
GREEN="${ESC}[0;32m"
ORANGE="${ESC}[0;33m"
BLUE="${ESC}[0;34m"
PURPLE="${ESC}[0;35m"
CYAN="${ESC}[0;36m"
LIGHTGRAY="${ESC}[0;37m"
DARKGRAY="${ESC}[1;30m"
LIGHTRED="${ESC}[1;31m"
LIGHTGREEN="${ESC}[1;32m"
YELLOW="${ESC}[1;33m"
LIGHTBLUE="${ESC}[1;34m"
LIGHTPURPLE="${ESC}[1;35m"
LIGHTCYAN="${ESC}[1;36m"
WHITE="${ESC}[1;37m"
NOCOLOR="${ESC}[0m"

ECHO() {
# Usage:
#    ECHO "" "This is normal string"
#    ECHO -- "This is normal string"
#    ECHO $RED "This is ERROR"
#    ECHO $YOUR_CUSTOM_COLOR "This is your colored string"

    case "$1" in
    --|"") unset _COLOR ; shift ;;
    *)     _COLOR=$1 ; shift
    esac

    echo ${_COLOR} "$@" ${NOCOLOR}
}
