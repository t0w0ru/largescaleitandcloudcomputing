(
cd database || exit 1
./build_db_images.sh
)
(
cd dataService || exit 2
./build_docker_image.sh
)
(
cd authenticationService || exit 3
./build_docker_image.sh
)
docker-compose up -d