FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv

COPY requirements.txt /app
COPY djangoDockerization /app

RUN pip3 install -r requirements.txt && cd djangoDemoApp

ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]