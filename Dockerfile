# Use a imagem base do Python
FROM python:3.9

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie os arquivos necessários para o diretório de trabalho
<<<<<<< HEAD
COPY web.py requirements.txt ./
=======
COPY conteiner/web.py requirements.txt ./
>>>>>>> e5a08d753c01181e856f3e29da6c40df9e7ca14c

# Instale as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Exponha a porta 80 para acesso HTTP
EXPOSE 8001

# Defina o comando para iniciar o aplicativo
CMD ["python", "web.py"]
