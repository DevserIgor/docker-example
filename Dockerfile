#de onde vai pegar a imagem base
FROM node:latest
#mantenedor no caso eu
MAINTAINER devserigor
#copia a pasta atual para dentor da pasta www do container
COPY . /var/www
#onde vai ser executado o comando "npm start"
WORKDIR /var/www
#instala as dependencias
RUN npm install
#comando a ser executado quando iniciar
ENTRYPOINT ["npm", "start"]
#porta que vai ser usada
EXPOSE 3000

