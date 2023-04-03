# FROM python:3-slim
# WORKDIR /usr/src/app
# COPY requirements.txt amqp.reqs.txt ./
# RUN python -m pip install --no-cache-dir -r requirements.txt -r amqp.reqs.txt
# COPY ./customer.py ./app.py ./
# CMD [ "python", "./customer.py" ]

# Dockerfile for customer.js
# FROM node:14
# WORKDIR /app
# COPY package*.json ./
# RUN npm install
# COPY . .
# EXPOSE 5700
# CMD [ "node", "customer.js" ]

FROM node:latest

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY customer.js ./

EXPOSE 5700

CMD [ "node", "customer.js" ]