FROM python:slim

WORKDIR /code

COPY .  /code

RUN pip install -r requirements.txt
RUN export FLASK_APP=app.py

EXPOSE 5000

CMD ["/usr/local/bin/flask", "run", "--host", "0.0.0.0"]