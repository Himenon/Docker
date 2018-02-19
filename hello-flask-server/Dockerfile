FROM python:3.6-alpine

LABEL maintainer "himenon <k.himeno314@gmail.com>"

ENV SERVER_NAME flask-server

RUN mkdir -p /app
WORKDIR /app
COPY ./ /app/

RUN pip install flask
EXPOSE 5000

CMD ["python", "server.py"]
