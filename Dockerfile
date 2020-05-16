FROM python:2.7.18

MAINTAINER martin@majlis.cz
LABEL maintainer=martin@majlis.cz

LABEL python=2.7.18
LABEL scipy=1.3.2
LABEL numpy=1.17.3
RUN pip install scipy==1.3.2 numpy==1.17.3
