FROM python:3.6.9-alpine3.10

LABEL python=3.6.9-alpine3.10
LABEL scipy=1.2.1
LABEL numpy=1.16.6
RUN apk add --update build-base gcc g++ make bash curl coreutils automake openblas openblas-dev
RUN pip install scipy==1.2.1 numpy==1.16.6
