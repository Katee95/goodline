./BUILD.sh

echo
echo No args
./RUN.sh
RES=$?
if [ $? -eq 0 ]; then
    echo Test passed
else
    echo est failed. Expected 0 Actual $RES
    fi

echo
echo 1 arg
./RUN.sh foo
RES=$?
if [ $? -eq 1 ]; then
    echo Test passed
else
    echo est failed. Expected 1 Actual $RES
    fi

echo
echo 2 arg
./RUN.sh foo bar
RES=$?
if [ $? -eq 2 ]; then
    echo Test passed
else
    echo est failed. Expected 2 Actual $RES
    fi

echo Many args
./RUN.sh foo bar baz "1 2 3"