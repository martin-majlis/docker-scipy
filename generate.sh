#!/usr/bin/env bash

# https://hub.docker.com/_/python
# alpine - 
# buster/stretch - https://wiki.debian.org/DebianReleases - Buster (2019-07-06), Stretch (2017-06-17)
# slim - this image does not contain the common packages => we highly recommend using the default image

PYTHONS=(\
    2.7.18-alpine3.10\
    2.7.18-alpine3.11\
    2.7.18-stretch\
    2.7.18-buster\
    2.7.18\
    2.7\
    #3.5.9-windowsservercore-ltsc2016 3.5.9-windowsservercore-1809\
    3.5.9-alpine3.10\
    3.5.9-alpine3.11\
    3.5.9-stretch\
    3.5.9-buster\
    3.5.9\
    3.5\
    #3.6.9-windowsservercore-ltsc2016 3.6.9-windowsservercore-1809\
    3.6.9-alpine3.10\
    3.6.9-alpine3.11\
    3.6.9-stretch\
    3.6.9-buster\
    3.6.9\
    3.6\
    #3.7.7-windowsservercore-ltsc2016 3.7.7-windowsservercore-1809\
    3.7.7-alpine3.10\
    3.7.7-alpine3.11\
    3.7.7-stretch\
    3.7.7-buster\
    3.7.7\
    3.7\
    # 3.8.2-windowsservercore-ltsc2016 3.8.2-windowsservercore-1809\
    3.8.2-alpine3.10 \
    3.8.2-alpine3.11 \
    3.8.2-buster \
    3.8.3-alpine3.10 \    
    3.8.3-alpine3.11 \
    3.8.3-buster \
    3.8.3 \
    3.8 \
    3 \
    latest\
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
EOM

    if [[ $python_version == *"alpine"* ]]; then
      # install packages needed by alpine
      echo "RUN apk add --update build-base gcc g++ make bash curl coreutils automake openblas openblas-dev" >> ${docker_file};
    else
      # install packages needed by Debian
      # echo "RUN apt-get install build-base gcc g++ make bash curl coreutils automake openblas openblas-dev" >> ${docker_file};
      cat /dev/null;
    fi;

    echo "RUN pip install scipy==${scipy_version} numpy==${numpy_version}" >> ${docker_file};    

    echo "File: ${docker_file}; Tag: ${docker_tag}";

    cp ${docker_file} Dockerfile
    git add Dockerfile ${docker_file}
    git tag -d ${docker_tag}
    git push --delete origin ${docker_tag}
    git commit -m "Generating docker for ${docker_tag}" ${docker_file} Dockerfile
    git tag -a ${docker_tag} -m ${docker_tag}
  done;
done
git push origin
git push origin --tags

