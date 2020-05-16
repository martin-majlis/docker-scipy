FROM python:latest

LABEL python=latest
LABEL scipy=1.3.2
LABEL numpy=1.17.3
RUN pip install scipy==1.3.2 numpy==1.17.3
