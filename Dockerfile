FROM docker.io/python:3.10

RUN pip install django
COPY mysite /mysite 
WORKDIR /mysite
#--------------------
#RUN -e PORT=8080
#EXPOSE 8080o
EXPOSE $PORT
#--------------
CMD python3 ./manage.py runserver 0.0.0.0:8000
