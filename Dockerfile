FROM python:2.7

MAINTAINER martin@majlis.cz
LABEL maintainer=martin@majlis.cz

LABEL python=2.7
LABEL scipy=1.3.1
LABEL numpy=1.17.0
RUN pip install scipy==1.3.1 numpy==1.17.0
