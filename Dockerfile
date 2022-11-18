FROM selenium/standalone-chrome

WORKDIR /usr/app/src

COPY requirements.txt ./

COPY main.py ./

USER root
RUN apt-get update && apt-get install python3-distutils -y
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py
RUN python3 -m pip install --no-cache-dir --upgrade pip \
  && python3 -m pip install --no-cache-dir -r requirements.txt

CMD ["python3", "./main.py"]