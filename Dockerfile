# syntax=docker/dockerfile:1

FROM python:3.9-slim-buster

WORKDIR /app

RUN pip3 install --no-cache fastapi uvicorn[standard]

COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--reload"]
