FROM python:3.7.7-alpine3.10

MAINTAINER martin@majlis.cz
LABEL maintainer=martin@majlis.cz

LABEL python=3.7.7-alpine3.10
LABEL scipy=1.3.0
LABEL numpy=1.16.6
RUN apk add --update build-base gcc g++ make bash curl coreutils automake openblas openblas-dev
RUN pip install scipy==1.3.0 numpy==1.16.6
