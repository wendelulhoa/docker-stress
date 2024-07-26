#!/bin/bash

# Verificar se o arquivo de swap já existe
# if [ ! -f /swapfile ]; then
#   Criar um arquivo de swap de 1GB
#   fallocate -l 1G /swapfile
#   chmod 600 /swapfile
#   mkswap /swapfile
# fi

# Ativar o swap
swapon /swapfile

# Executar o comando stress
stress --cpu 4 --vm 1 --vm-bytes 1400M --timeout 600s

# Manter o contêiner em execução
# tail -f /dev/null