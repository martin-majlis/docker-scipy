FROM python:3.5.9-alpine3.11

LABEL python=3.5.9-alpine3.11
LABEL scipy=1.3.1
LABEL numpy=1.17.0
RUN apk add --update build-base gcc g++ make bash curl coreutils automake openblas openblas-dev
RUN pip install scipy==1.3.1 numpy==1.17.0
