FROM python:3.5.9-stretch

LABEL python=3.5.9-stretch
LABEL scipy=1.3.3
LABEL numpy=1.18.2
RUN pip install scipy==1.3.3 numpy==1.18.2
