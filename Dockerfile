# Use a imagem base do Python
FROM python:3.9

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie os arquivos necessários para o diretório de trabalho

COPY web.py ./

RUN git clone https://github.com/Ricardo200211/idade_calculator.git .

# Instale as dependências
RUN pip install Flask
RUN python3 -m flask db init && python3 -m flask db migrate && python3 -m flask db upgrade

# Exponha a porta 80 para acesso HTTP
EXPOSE 80

# Defina o comando para iniciar o aplicativo
CMD ["python3", "web.py"]
