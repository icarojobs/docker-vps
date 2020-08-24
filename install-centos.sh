# CentOS Linux 7 (Core), logado como sudo

yum check-update

yum install -y yum-utils device-mapper-persistent-data lvm2

yum-config-manager  https://download.docker.com/linux/centos/docker-ce.repo

yum install docker-ce

systemctl enable docker
systemctl start docker

sudo usermod -aG docker $USER

curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

systemctl status docker

docker-compose --version