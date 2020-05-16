FROM python:3.7.7-alpine3.11

LABEL python=3.7.7-alpine3.11
LABEL scipy=1.3.3
LABEL numpy=1.18.2
RUN apk add --update build-base gcc g++ make bash curl coreutils automake openblas openblas-dev
RUN pip install scipy==1.3.3 numpy==1.18.2
