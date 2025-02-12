useradd -m jellyfin

passwd jellyfin 

su - jellyfin

Create a new folder in the jellyfin directory EX: docker

cd into that directory

mkdir for cache, media, media2, config

wget https://raw.githubusercontent.com/connor0329/Docker-Project/refs/heads/main/docker-compose.yml

Edit that file to change the gid, and uid to match the jellyfin's user gid and uid

Run "docker-compose up -d"

