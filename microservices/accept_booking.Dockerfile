FROM python:3-slim
WORKDIR /usr/src/app
COPY requirements.txt amqp.reqs.txt ./
RUN python -m pip install --no-cache-dir -r requirements.txt -r amqp.reqs.txt
COPY ./booking.py ./customer.py ./accept_booking.py ./invokes.py ./amqp_setup.py ./
CMD [ "python", "./search_booking.py" ]