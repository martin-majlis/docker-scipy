FROM python:3.6.9-buster

LABEL python=3.6.9-buster
LABEL scipy=1.3.1
LABEL numpy=1.17.0
RUN pip install scipy==1.3.1 numpy==1.17.0
