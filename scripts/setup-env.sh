#!/bin/bash

# Cores para o output ficar legível
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}=== [1/4] Atualizando o sistema... ===${NC}"
sudo apt-get update && sudo apt-get upgrade -y

echo -e "${GREEN}=== [2/4] Instalando o Docker... ===${NC}"
sudo apt-get install docker.io -y
sudo systemctl enable --now docker
# Permite executar o docker sem sudo (aplica-se no próximo login)
sudo usermod -aG docker $USER

echo -e "${GREEN}=== [3/4] Instalando o Minikube... ===${NC}"
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
rm minikube-linux-amd64

echo -e "${GREEN}=== [4/4] Instalando o kubectl... ===${NC}"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm kubectl

echo -e "${GREEN}=== ¡Ambiente configurado com sucesso! Reinicie a sessão para aplicar as permissões do Docker. ===${NC}"
