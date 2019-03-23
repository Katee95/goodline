./BUILD.sh

COUNT_ALL=0
COUNT_SUC=0

echo
echo No args
./RUN.sh
RES=$?
let COUNT_ALL++
if [ $RES -eq 0 ]; then
    echo Test passed
    let "COUNT_SUC = $COUNT_SUC + 1"
else
    echo est failed. Expected 0 Actual $RES
    fi

echo
echo 1 arg
./RUN.sh foo
RES=$?
let COUNT_ALL++
if [ $RES -eq 1 ]; then
    echo Test passed
    let "COUNT_SUC = $COUNT_SUC + 1"
else
    echo est failed. Expected 1 Actual $RES
    fi

echo
echo 2 arg
./RUN.sh foo bar
RES=$?
let COUNT_ALL++
if [ $RES -eq 2 ]; then
    echo Test passed
    let "COUNT_SUC = $COUNT_SUC + 1"
else
    echo est failed. Expected 2 Actual $RES
    fi

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