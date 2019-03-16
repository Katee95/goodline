echo Begin Build
mkdir out
kotlinc -d out/untitled.jar -include-runtime src
echo End Build