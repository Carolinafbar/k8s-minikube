# k8s-minikube

# 🚀 Practical Exploration of Kubernetes Using Minikube

Este repositório contém o desenvolvimento prático do trabalho laboratorial para a unidade curricular de **Networking and Systems Virtualization** na UMAIA. O objetivo principal é demonstrar a instalação, configuração e gestão de um cluster Kubernetes local utilizando o Minikube, além do deploy e exposição de uma aplicação web (Nginx).

---

## 📁 Estrutura do Projeto

* `scripts/`: Scripts de automação para preparação do ambiente Linux.
* `manifests/`: Ficheiros de configuração declarativa (YAML) do Kubernetes.
* `docs/`: Documentação de suporte e capturas de ecrã (evidências).

---

## 🛠️ Desenvolvimento do Projeto

### 🖥️ Fase 0 — Infraestrutura Base (Máquina Virtual)
Configuração do ambiente de virtualização no VirtualBox/VMware:
* **SO:** Ubuntu Server / Desktop 24.04 LTS
* **Recursos:** 2 vCPUs, 4GB RAM, 20GB Disco (Requisitos mínimos do Minikube).
* **Nota Técnica:** Ativação de *Nested Virtualization* para otimização do Docker.

### 📦 Part I — Conhecimento Teórico
Breve contextualização sobre o papel do Kubernetes no ecossistema de orquestração de containers e as suas principais vantagens (Alta Disponibilidade, Escalonamento Automático e Self-healing).

### ⚙️ Part II — Instalação e Setup
Passo a passo replicável para instalação dos pré-requisitos:
1. Atualização do sistema e instalação do Docker Engine.
2. Instalação do Minikube.
3. Instalação do `kubectl`.

> 💡 **Automação:** Disponibilizámos o script `scripts/setup-env.sh` para automatizar todo este processo de uma só vez.

### 🚀 Part III — Deploy da Aplicação (Nginx)
Aplicação declarativa utilizando o manifesto contido em `manifests/deployment.yaml`.
* Comando base: `kubectl apply -f manifests/deployment.yaml`

### 🌐 Part IV — Exposição da Aplicação
Demonstração e análise comparativa de métodos para expor o servidor web fora do cluster através de um serviço `NodePort`.

### 🗂️ Part V — Compreensão de Objetos Kubernetes
Análise detalhada e contextualizada dos principais objetos estudados (Pods, ReplicaSets, Services, Volumes, Namespaces, ConfigMaps, Secrets, StatefulSets e DaemonSets).

---

## 👥 Grupo de Trabalho
* Carolina Fernandes | Beatriz Almeida  - UMAIA 2026
