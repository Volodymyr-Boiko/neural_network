FROM ubuntu:bionic

RUN mkdir app

RUN apt-get -qq -y update && apt-get -y install python3-dev python3-pip libpq-dev && pip3 install virtualenv

ADD . /app

WORKDIR /app

RUN pip3 install --upgrade setuptools

ADD requirements.txt ./app

RUN pip3 install -r requirements.txt

EXPOSE 8888