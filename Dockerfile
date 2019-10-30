FROM python:latest

COPY requirements.txt /app/
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install git+https://github.com/erikavaris/tokenizer.git
RUN python -m spacy download en_core_web_lg

