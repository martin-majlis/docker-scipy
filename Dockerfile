FROM python:2.7.18

MAINTAINER martin@majlis.cz
LABEL maintainer=martin@majlis.cz

LABEL python=2.7.18
LABEL scipy=1.3.1
LABEL numpy=1.17.0
RUN pip install scipy==1.3.1 numpy==1.17.0
