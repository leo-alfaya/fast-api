FROM alpine

WORKDIR /app

RUN apk add gcc python3-dev musl-dev linux-headers
RUN apk add --update python3 py3-pip poetry

COPY . .

RUN poetry install

