FROM python:3.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /Naa-Ready-2
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
WORKDIR /Naa-Ready-2
COPY . .
CMD ["/bin/bash", "/start.sh"]
