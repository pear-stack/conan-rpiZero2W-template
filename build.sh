conan install . --build missing -pr:b=default -pr:h=./profiles/raspberrypi_zero_2w
cd build
source Release/generators/conanbuild.sh
cmake .. -DCMAKE_TOOLCHAIN_FILE=Release/generators/conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
cmake --build .
source Release/generators/deactivate_conanbuild.sh
cd ..