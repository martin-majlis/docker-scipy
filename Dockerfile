FROM python:latest

LABEL python=latest
LABEL scipy=1.3.1
LABEL numpy=1.17.0
RUN pip install scipy==1.3.1 numpy==1.17.0
