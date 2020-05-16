FROM python:3.5.9-stretch

MAINTAINER martin@majlis.cz
LABEL maintainer=martin@majlis.cz

LABEL python=3.5.9-stretch
LABEL scipy=1.2.1
LABEL numpy=1.16.6
RUN pip install scipy==1.2.1 numpy==1.16.6
