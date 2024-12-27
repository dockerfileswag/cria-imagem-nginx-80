## dockerfile expoe porta 80 nome:detran/img-nginx-80
FROM ubuntu:latest

## Email mantenedor
MAINTAINER Uchoa Labs "uchoawagner80@hotmail.com"

## Atualizar pacotes
RUN apt-get update

## Instalar nginx
RUN apt-get install -y nginx

## Criar index default pra teste
RUN echo 'Wagner criou imagem(dockerfile) para usar no no openshift' > /var/www/html/index.html

## Iniciar Nginx por meio do ENTRYPOINT para rodar em modo background
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]

## Expor porta 80
EXPOSE 80
