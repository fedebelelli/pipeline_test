FROM python:3.10.0rc2-alpine3.14

WORKDIR /app

COPY ./requeriments.txt .

RUN pip3 install -r requeriments.txt

COPY . /app

CMD [ "python", "app.py" ]

#CMD [ "flask", "run" ]