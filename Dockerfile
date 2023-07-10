FROM python:3.11

WORKDIR /app

COPY . /app

RUN apt update
RUN apt install python3-pip -y
RUN pip3 install Flask

EXPOSE 3000

CMD python3 ./web.py
