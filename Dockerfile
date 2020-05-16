FROM python:3.6.9-buster

LABEL python=3.6.9-buster
LABEL scipy=1.3.2
LABEL numpy=1.17.3
RUN pip install scipy==1.3.2 numpy==1.17.3
