FROM python:3.8.3-alpine3.10

LABEL python=3.8.3-alpine3.10
LABEL scipy=1.3.3
LABEL numpy=1.18.2
RUN apk add --update build-base gcc g++ make bash curl coreutils automake openblas openblas-dev
RUN pip install scipy==1.3.3 numpy==1.18.2
