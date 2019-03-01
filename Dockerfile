FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

COPY requirements.txt /
RUN pip install --no-cache-dir -r requirements.txt

COPY src/ /app
WORKDIR /app

ENTRYPOINT [ "python", "__init__.py" ]