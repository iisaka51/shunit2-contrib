
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

