FROM python:3.6.9-alpine3.10

MAINTAINER martin@majlis.cz
LABEL maintainer=martin@majlis.cz

LABEL python=3.6.9-alpine3.10
LABEL scipy=1.3.1
LABEL numpy=1.17.0
RUN apk add --update build-base gcc g++ make bash curl coreutils automake openblas openblas-dev
RUN pip install scipy==1.3.1 numpy==1.17.0
