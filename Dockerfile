FROM ubuntu:latest

#install all the commands that will be used to download terraform
RUN \
apt-get update -y && \
apt-get install unzip -y && \
apt-get install wget -y && \
apt-get install vim -y 

#download terraform package (zip file) for linux
RUN wget https://releases.hashicorp.com/terraform/1.0.1/terraform_1.0.1_linux_amd64.zip 
#unzip the downloaded terraform packagecd
RUN unzip terraform_1.0.1_linux_amd64.zip

#moving the unzipped file to local bin
RUN mv terraform /usr/local/bin/
#check if terraform is actually installed
RUN terraform --version
