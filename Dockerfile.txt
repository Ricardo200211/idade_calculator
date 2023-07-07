# Imagem base
FROM python:3.9

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos do projeto para o diretório de trabalho do container
COPY . /app

# Instala as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Define o comando para iniciar a aplicação
CMD ["python", "app.py"]
