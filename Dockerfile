FROM python:2.7.18-alpine3.10

LABEL python=2.7.18-alpine3.10
LABEL scipy=1.3.2
LABEL numpy=1.17.3
RUN apk add --update build-base gcc g++ make bash curl coreutils automake openblas openblas-dev
RUN pip install scipy==1.3.2 numpy==1.17.3
