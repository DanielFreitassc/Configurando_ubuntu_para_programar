# Configurando [ubuntu(22.04.3 LTS)](https://ubuntu.com/download/desktop) para programar
___

# Este guia foi feito por daniel freitas para quem tem interesse em começar a programar com o linux, em especial o Ubuntu que é uma otima distro que vem sempre se atualizando.

## Ferramentas Devs que iremos instalar
### - Visual Studio Code
###  - PostgresSql
###  - pgAdmin
###  - Java 17(JDK 17)
###  - Apidog
____ 
# [Visual Studio Code](https://code.visualstudio.com/)
### - Baixe o arquivo .deb
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/314d229d-6a56-4d85-a72b-8ca46174b057)

### - Vá até a pasta onde foi feito o download clicando no icone de pasta do navegador. 
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/e46552e5-fb9a-4c6d-a94f-fe0aec5be88b)

### - Agora abra o terminal na pasta clicando com o botão direito e clique em Abrir com terminal ou Open in Terminal caso seu ubuntu esteja em inglês 

![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/e4bb9ccb-c4bd-4fc3-9404-a3ebdf9bc17f)

### - No terminal cole o comando abaixo insira sua senha e de Enter.
```
sudo dpkg -i code_1.85.1-1702462158_amd64.deb
```

![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/9d24bdf8-4b9a-435f-8a22-f573d9680d13)

### - Agora cole esse outro comando e de Enter.
```
sudo apt-get install -f
```
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/7c8dc1ec-2f1e-437f-9c1a-063eb5a96ee4)

### - Pronto agora só pesquisar pelo nome.
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/99d8d9a5-8a4d-4a6c-854c-af2ca3f41561)

# [PostgresSQL](https://www.postgresql.org/download/linux/ubuntu/)
### - Primeiro abra o terminal segurando CTRL + ALT + T e cole o comando abaixo de Enter e insira sua senha.
```
sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
```
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/41674af5-f271-4a41-afeb-a223dce61791)
### - Ainda no terminal insira o proximo comando no terminal e de Enter.
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/6ce8f7f4-dc8b-4627-8a74-b996904b9146)

### - Atualize os pacotes do linux inserindo o comando abaixo e dando Enter.

```
sudo apt-get update
```
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/e131bd59-e18f-4dd4-8e61-ad4256f4b0f1)

### - Por fim instale o PostgresSQL inserindo o comando abaixo e dando Enter.
```
sudo apt-get -y install postgresql
```
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/0a2c949d-d77d-4b88-8189-ea82937c74a4)

### - Verifique se foi instalado corretamente com o comando abaixo.
```
psql --version
```
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/75e5b059-60ae-4d23-9268-777ecbcc2e48)
### - Pronto instalação do postgresSQL feita mas agora vamos configurar nosso usario que acessara o banco de dados cole o comando abaixo no terminal.
```
sudo -u postgres psql
```
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/fcee6b6f-725f-428b-a8cc-5a77582dfa2a)

### Agora vamos configurar a nossa senha do nosso usario cole no terminal o comando abaixo e antes de dar enter Substitua  ```seu_usuario``` e a ```sua_senha``` 
```
CREATE USER seu_usuario WITH PASSWORD 'sua_senha';
```
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/d9dbfebb-d302-4e29-91dc-6e12f6759e31)

### Digite ```exit``` e pra sair das configurações do postgresSQL.


