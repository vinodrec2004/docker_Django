FROM python:3.7.2-alpine3.8

#pip install django && pip install gunicorn && pip install psycopg2-binary
#pip install django gunicorn psycopg2-binary
#pip instal -r \requirements.txt

RUN mkdir /django

RUN apk update && \
    apk add --virtual build-deps gcc python-dev musl-dev && \
    apk add postgresql-dev tree git

RUN mkdir /djangoapp

ADD djangoapp /djangoapp


RUN pip install django gunicorn psycopg2-binary

#RUN tree

#command to run the django server
#CMD python /djangoapp/manage.py runserver

EXPOSE 8000
WORKDIR  /djangoapp
RUN tree

#RUN git clone https://github.com/MrAmbiG/hello_django.git
#migrations using command
CMD ["python", "manage.py", "makemigrations"]
CMD ["python", "manage.py", "migrate"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
