FROM python:3.10-slim-bullseye

WORKDIR /usr/app/src

COPY requirements.txt ./

COPY main.py ./

RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir -r requirements.txt

CMD ["python", "./main.py"]