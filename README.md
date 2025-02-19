useradd -m jellyfin

passwd jellyfin 

su - jellyfin

Ubuntu assigns sh as the default shell, change the shell to bash to make it easier, "chsh -s /usr/bin/bash"

Create a new folder in the jellyfin directory EX: docker

cd into that directory

mkdir for cache, media, media2, delugecfg, jellyfincfg

wget https://raw.githubusercontent.com/connor0329/Docker-Project/refs/heads/main/docker-compose.yml

Edit that file to change the gid, and uid to match the jellyfin's user gid and uid

Run "docker-compose up -d"

Launch a web browser for, deluge type "hostname:8112" for jellyfin type "hostname:8096"
docker01 configuration
hostname
