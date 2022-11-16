FROM python:3.11

WORKDIR /usr/app/src

COPY main.py ./

CMD ["python", "./main.py"]