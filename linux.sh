# Lista de downloads feitos
# 1 - Curl
# 2 - Git
# 3 - Docker
# 4 - Docker compose
# 5 - Npm
# 6 - Node
# 7 - Java 21 e 22
# 8 - Vscode
# 9 - Postgres
# 10 - PgAdmin
# 11 - Maven
# 12 - Api dog
# 13 - Discord
sudo apt-get update -y
sudo apt-get upgrade -y
# Instalar curl
sudo apt-get install curl -y

# Instalar git
sudo apt-get install git -y

# Instalar docker

for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Instalar docker compose
sudo apt-get update -y
sudo apt-get install docker-compose-plugin -y 

#Instalando npm
sudo apt-get install nodejs npm -y

#Intalando node

# installs NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# download and install Node.js
nvm install 22

# verifies the right Node.js version is in the environment
node -v # should print `v22.1.0`

# verifies the right NPM version is in the environment
npm -v # should print `10.7.0`

# Instalando java 21
wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.deb
sudo dpkg -i jdk-21_linux-x64_bin.deb 

# Instalando java 22
wget https://download.oracle.com/java/22/latest/jdk-22_linux-x64_bin.deb
sudo dpkg -i jdk-22_linux-x64_bin.deb 

# Instalando vscode
wget https://vscode.download.prss.microsoft.com/dbazure/download/stable/b58957e67ee1e712cebf466b995adf4c5307b2bd/code_1.89.0-1714530869_amd64.deb
sudo dpkg -i code_1.89.0-1714530869_amd64.deb

# Instalar Postgres 
sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get -y install postgresql
sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD 'senha1234';"

# PgAdmin
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
sudo apt install pgadmin4-desktop -y 

# Maven
sudo apt install maven -y

# Api dog
wget https://file-assets.apidog.com/download/Apidog-linux-arm64-deb-latest.zip
unzip Apidog-linux-deb-latest.zip
sudo dpkg -i apidog_2.4.7_amd64.deb

# Google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Discord
sudo snap install discord