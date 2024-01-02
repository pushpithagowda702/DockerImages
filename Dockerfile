FROM ubuntu

RUN apt update && apt install -y python3  python3-pip

RUN pip3 install Flask

RUN mkdir -p /home/encrypt

COPY . /home/encrypt

EXPOSE 5000

CMD ["python3", "/home/encrypt/app.py"]

