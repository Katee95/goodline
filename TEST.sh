./BUILD.sh

COUNT_ALL=0
COUNT_SUC=0

function test {
    MSG=$1; shift
    EXPECTED=$1
    shift

    echo
    echo $MSG
    ./RUN.sh "$@"
    RES=$?
    let COUNT_ALL++
    if [ $RES -eq $EXPECTED ]; then
        echo Test passed
        let "COUNT_SUC = $COUNT_SUC + 1"
    else
        echo est failed. Expected $EXPECTED Actual $RES
        fi
}

test "No args" 0
test "1 args" 1 foo
test "2 args" 2 foo bar
test "Many args" 100 foo bar baz "1 2 3"


echo ***
if [ $COUNT_ALL -eq $COUNT_SUC ]; then
echo All tests passed
exit 0
else
echo $COUNT_SUC success tests out of $COUNT_ALL
exit 1
fi

echo Many args
./RUN.sh foo bar baz "1 2 3"