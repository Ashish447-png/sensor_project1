FROM python:3.11-slim

WORKDIR /app

COPY . /app
# install system dependencies
RUN apt-get update && apt-get install -y libyaml-dev
RUN pip install --upgrade pip
RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt

EXPOSE 5000

CMD [ "python","app.py"]



