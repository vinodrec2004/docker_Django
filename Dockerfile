FROM python:3.7.2-alpine3.8

#pip install django && pip install gunicorn && pip install psycopg2-binary
#pip install django gunicorn psycopg2-binary
#pip instal -r \requirements.txt

RUN mkdir /django

RUN apk update && \
    apk add --virtual build-deps gcc python-dev musl-dev


RUN pip install django gunicorn psycopg2-binary
