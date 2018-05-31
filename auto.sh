mkdir build
cd build
rm * -rf
cmake ..
make
./DisplayImage ../test.jpg
