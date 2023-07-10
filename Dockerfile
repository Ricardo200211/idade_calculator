FROM python:3.11

WORKDIR /app

<<<<<<< HEAD
COPY . /app

RUN apt update
RUN apt install python3-pip -y
RUN pip3 install Flask

EXPOSE 3000

CMD python3 ./web.py
=======
# Copie os arquivos necessários para o diretório de trabalho

COPY . .

# Instale as dependências
RUN apt update
RUN apt install python3-pip -y
RUN pip3 install Flask

# Defina o comando para iniciar o aplicativo
CMD ["python3", "-m", "id_cal", "run", "--host=0.0.0.0"]
>>>>>>> ea5f298f739de81cf2df4fe16d4ec37865d2ca98
