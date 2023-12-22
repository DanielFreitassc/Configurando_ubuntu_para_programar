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
___
# [PostgresSQL](https://www.postgresql.org/download/linux/ubuntu/)
### - Primeiro abra o terminal segurando CTRL + ALT + T e cole o comando abaixo de Enter e insira sua senha.
```
sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
```
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/41674af5-f271-4a41-afeb-a223dce61791)
### - Ainda no terminal insira o proximo comando no terminal e de Enter.
```
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
```
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
___
# [pgAdmin](https://www.pgadmin.org/download/pgadmin-4-apt/)
### - Primeiro vamos instalar o curl cole o comando abaixo no terminal.
```
sudo apt  install curl
```
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/02d7dadc-0313-4864-a784-655ab4a4eb62)

### - Agora vamos instalar a public key para o repositorio insira o comando abaixo e digite ```Y```quando for pedido a confirmação
```
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg
```
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/2ecdb6b0-5518-4d58-a2c6-f1c03c99cd53)

### - E agora crie o arquivo de configuração do repositório.
```
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
```
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/2df17188-52fc-4c5e-8474-5ee4b5941895)

### - Instale o pgAdmin colando o comando abaixo agora e digite ```Y```quando for pedido a confirmação.
```
sudo apt install pgadmin4-desktop
```
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/a06df160-72c9-4cb3-9934-c112fc9a5bcf)

### - Por fim pesquise por pgAdmin.
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/cd3f9e4b-8270-4a89-9dde-c73a69e4c5ac)
___
# [Java JDK 17](https://www.oracle.com/br/java/technologies/downloads/#java17)
### Acesse o link e selecione JDK 15 e linux e por fim baixe o aquivo x64 Debian Package
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/0180b6b5-9e18-4325-a7e6-e7bb9ac66b48)
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/42bfec85-0307-41fd-a951-315faffe8a57)
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/44425417-5410-415c-a10a-8591732fbff5)
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/dafcfe22-171d-4f5a-9a3a-84227d0e4a82)

### - Vá até a past onde foi baixado clicando no icone de pasta do seu navegador.
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/b0935bd2-9699-47e4-bbec-377a0baa6070)
### - Abra o terminal na pasta 
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/e4a92192-6319-4914-b6e7-c8fa7e0e376f)
### - Agora vamos instlar o pacote cole o comando abaixo.
```
sudo dpkg -i jdk-17_linux-x64_bin.deb
```
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/aa9148b3-36c7-4639-be99-8a1777240372)

### - Vamos garantir que todas as dependências foram instalas cole o comando abaixo.
```
sudo apt-get install -f
```
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/cca9527c-c7b8-4206-bb80-11b9fe65a990)

### - Por fim vamos ver se instalou o java cole o comando abaixo no terminal.
```
java -version
```
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/d9888ac1-f514-4087-bee2-eed600582d01)

___

# [APIDOG](https://apidog.com/?utm_source=google_search&utm_medium=g&utm_campaign=18544428894&utm_content=153517438552&utm_term=api%20dog&gad_source=1&gclid=EAIaIQobChMIwdv1_9qfgwMVsUNIAB07bgq0EAAYASAAEgIf4vD_BwE)
### - Vá até a pagina do apidog pelo link e clique em download.

![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/a7534e8f-1d25-473b-9740-7a002935e37f)

### - Escolha o download .deb
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/18104468-b6d9-458c-84b2-d42e71a616c5)

### - Vá até a pasta onde foi instalado o .deb  clicando no icone de pasta do seu navegador
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/ced70e21-5a18-4bfd-b7cb-cb0f70af0029)

### - Aperte o botão direito do mouse e abra com o termial.
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/3be47011-200a-4f5b-990b-5a2ab9943f5f)

### - Agora vamos descompactar o .zip cole o comando abaixo no terminal.
```
unzip Apidog-linux-deb-latest.zip
```
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/fe1cc18d-3d1a-485a-8d50-78853c3e9bb3)

### - Agora vamos instalar o pacote .deb
```
sudo dpkg -i apidog_2.4.7_amd64.deb
```
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/71ee6b0e-b9d6-40ad-989a-76fb896c5a11)

### - Agora é só pesquisar o apidog.
![image](https://github.com/DanielFreitassc/Configurando_ubuntu_para_programar/assets/129224303/95883a5a-beed-4113-aac7-9e53ff629ce9)


# Pronto agora você tem diversas ferramentas para poder fazer seus projetos se gostou de um estrela no repositório. 

