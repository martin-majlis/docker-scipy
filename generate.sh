#!/usr/bin/env bash

PYTHONS=(\ 
    # 3.8.2-buster 3.8.2-alpine3.11 3.8.2-alpine3.10 3.8.2-windowsservercore-ltsc2016 3.8.2-windowsservercore-1809\
    #3.7.7-buster\
    3.7.7-alpine3.11\
    3.7.7-alpine3.10\ 
    #3.7.7-windowsservercore-ltsc2016 3.7.7-windowsservercore-1809\
    #3.6.9-buster\
    3.6.9-alpine3.11\
    3.6.9-alpine3.10\ 
    #3.6.9-windowsservercore-ltsc2016 3.6.9-windowsservercore-1809\
    #3.5.9-buster\
    3.5.9-alpine3.11\
    3.5.9-alpine3.10\ 
    #3.5.9-windowsservercore-ltsc2016 3.5.9-windowsservercore-1809\
    #2.7.18-buster\
    2.7.18-alpine3.11\
    2.7.18-alpine3.10\
)

# 1.4.1 cannot be built
# - https://github.com/scipy/scipy/issues/11319
# - https://github.com/scipy/scipy/pull/11320
SCIPYS=(
    "1.3.3;1.18.2"\
    "1.3.2;1.17.3"\    
    "1.3.1;1.17.0"\
    "1.3.0;1.16.6"\
    "1.2.1;1.16.6"\
)

for python_version in ${PYTHONS[@]}; do
  for g in ${SCIPYS[@]}; do
    scipy_version=`echo $g | sed -rn 's/(.*);(.*)/\1/p'`;
    numpy_version=`echo $g | sed -rn 's/(.*);(.*)/\2/p'`;

    echo "Python=${python_version}; Scipy: ${scipy_version}; Numpy: ${numpy_version}";
    docker_dir="python-${python_version}/scipy-${scipy_version}";
    docker_file=${docker_dir}/Dockerfile;
    docker_tag="${python_version}-${scipy_version}";
    mkdir -p ${docker_dir};
    cat > ${docker_file} <<- EOM
FROM python:${python_version}

LABEL python=${python_version}
LABEL scipy=${scipy_version}
LABEL numpy=${numpy_version}

RUN apk add --update build-base gcc g++ make bash curl coreutils automake openblas openblas-dev
RUN pip install --upgrade pip
RUN pip install scipy==${scipy_version} numpy==${numpy_version}
EOM
    echo "File: ${docker_file}; Tag: ${docker_tag}";    
  done;
done