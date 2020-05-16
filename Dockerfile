FROM python:3.8

MAINTAINER martin@majlis.cz
LABEL maintainer=martin@majlis.cz

LABEL python=3.8
LABEL scipy=1.3.1
LABEL numpy=1.17.0
RUN pip install scipy==1.3.1 numpy==1.17.0
