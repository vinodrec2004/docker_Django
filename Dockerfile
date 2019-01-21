FROM python:3.7.2-alpine3.8

#pip install django && pip install gunicorn && pip install psycopg2-binary
#pip install django gunicorn pyscopg2-binary
#pip instal -r \requirements.txt

pip install django \
        gunicorn \
        psycopg2-binary
