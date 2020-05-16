FROM python:3.7

MAINTAINER martin@majlis.cz
LABEL maintainer=martin@majlis.cz

LABEL python=3.7
LABEL scipy=1.3.0
LABEL numpy=1.16.6
RUN pip install scipy==1.3.0 numpy==1.16.6
