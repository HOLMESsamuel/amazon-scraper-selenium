# really light image for python
FROM python:3.7-alpine

# make python return things without beeing buffered
ENV PYTHONBUFFERED 1
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
COPY ./app /app
WORKDIR /app