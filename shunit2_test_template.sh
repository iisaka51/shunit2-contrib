
[ -f shunit2 ] || {
    BASEURL=https://raw.githubusercontent.com/iisaka51/shunit2/master
    curl -s -L  ${BASEURL}/shunit2 -o  shunit2
}
[ -f shunit2_functions.sh ] || {
    BASEURL=https://raw.githubusercontent.com/iisaka51/shunit2-contrib/master
    curl -s -L  ${BASEURL}/shunit2_functions.sh -o  shunit2_functions.sh
}

[ -f shunit2_colors.sh ] || {
    BASEURL=https://raw.githubusercontent.com/iisaka51/shunit2-contrib/master
    curl -s -L  ${BASEURL}/shunit2_colors.sh -o  shunit2_colors.sh
}

. shunit2_functions.sh

. shunit2_colors.sh

BANNER() {
    TEST_NUMBER=$(( TEST_NUMBER + 1 ))
    echo "## ---------------------------------- "
    printf "## TEST %02d: $@\n" ${TEST_NUMBER}
    echo "## ---------------------------------- "
}

END_BANNER() {
    echo; echo
    echo "## ---------------------------------- "
}

test_sample() {
    BANNER "first example"

    MODE=$( get_file_mode ${_HOME}/.ssh )
    assertEquals "authkey_dir mode mismatch" "0700" "${MODE}"
}

. shunit2
