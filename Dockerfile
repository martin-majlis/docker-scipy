FROM python:2.7.18-buster

LABEL python=2.7.18-buster
LABEL scipy=1.2.1
LABEL numpy=1.16.6
RUN pip install scipy==1.2.1 numpy==1.16.6
