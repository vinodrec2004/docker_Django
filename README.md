# docker_Django
Dockerising Django

#command to start and create django app
django-admin startproject djangoapp

python .\manage.py runserver

#post changig the code or any update in the files we need to rebuild before that we need to make it down the app using
docker-compose down &&
docker-compose up -d --build # rebuild the app
