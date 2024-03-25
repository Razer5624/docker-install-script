git clone -b master https://github.com/misskey-dev/misskey.git
cd misskey
git checkout master
cp .config/docker_example.yml .config/default.yml
cp .config/docker_example.env .config/docker.env
cp ./docker-compose_example.yml ./docker-compose.yml
sudo docker compose build
sudo docker compose run --rm web pnpm run init
cd ..
bash run.sh
