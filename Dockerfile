FROM python:3.8.3-buster

LABEL python=3.8.3-buster
LABEL scipy=1.2.1
LABEL numpy=1.16.6
RUN pip install scipy==1.2.1 numpy==1.16.6
