FROM python:3-slim
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN python -m pip install --no-cache-dir -r requirements.txt
COPY ./bids.py ./
COPY ./app.py ./
COPY ./auctionService.py ./
COPY ./customer.py ./
CMD [ "python", "./bids.py"]