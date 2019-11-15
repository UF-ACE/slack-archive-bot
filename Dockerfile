FROM python:3.8-alpine

WORKDIR /usr/src/app

ADD requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

ADD . .
CMD [ "python", "./app.py" ]
