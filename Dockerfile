FROM python:3.6.9-stretch

LABEL python=3.6.9-stretch
LABEL scipy=1.3.0
LABEL numpy=1.16.6
RUN pip install scipy==1.3.0 numpy==1.16.6
