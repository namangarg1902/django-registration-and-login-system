FROM python:3

RUN pip install django==3.2
RUN pip install python-dotenv==0.19.0
RUN pip install social-auth-app-django==5.0.0
RUN pip install social-auth-core==4.3.0
RUN pip install Pillow==9.2.0
COPY . .
RUN python3 manage.py migrate
CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
