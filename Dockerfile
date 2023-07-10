# Use a imagem base do Python
FROM python:3.9

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie os arquivos necessários para o diretório de trabalho

COPY . .

# Instale as dependências
RUN apt update
RUN apt install python3-pip -y
RUN pip3 install Flask

# Defina o comando para iniciar o aplicativo
CMD ["python3", "-m", "id_cal", "run", "--host=0.0.0.0"]
