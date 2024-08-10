sudo docker build . -t conan
sudo docker run --name conan --mount type=bind,source=.,target=/build -dit conan /bin/bash
sudo docker exec -d conan bash build.sh