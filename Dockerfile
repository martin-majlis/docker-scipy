FROM python:latest

MAINTAINER martin@majlis.cz
LABEL maintainer=martin@majlis.cz

LABEL python=latest
LABEL scipy=1.3.0
LABEL numpy=1.16.6
RUN pip install scipy==1.3.0 numpy==1.16.6
