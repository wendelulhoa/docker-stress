# Use uma imagem base, por exemplo, Ubuntu
FROM ubuntu:latest

# Instale as dependências necessárias, incluindo o stress
RUN apt-get update && apt-get install -y \
    curl \
    stress \
    && rm -rf /var/lib/apt/lists/*

# Adicione um script de inicialização para configurar o swap
COPY init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

# Defina o comando padrão para executar o script de inicialização
CMD ["/usr/local/bin/init.sh"]