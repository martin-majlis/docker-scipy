FROM python:3

LABEL python=3
LABEL scipy=1.3.1
LABEL numpy=1.17.0
RUN pip install scipy==1.3.1 numpy==1.17.0
