FROM python:3.8.2-buster

MAINTAINER martin@majlis.cz
LABEL maintainer=martin@majlis.cz

LABEL python=3.8.2-buster
LABEL scipy=1.3.3
LABEL numpy=1.18.2
RUN pip install scipy==1.3.3 numpy==1.18.2
