FROM python:3.7.7-buster

LABEL python=3.7.7-buster
LABEL scipy=1.3.2
LABEL numpy=1.17.3
RUN pip install scipy==1.3.2 numpy==1.17.3
