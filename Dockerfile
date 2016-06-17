FROM agate/factual-docker-rvm-mri:2.3.1

MAINTAINER agate<agate.hao@gmail.com>

RUN apt-get update
RUN apt-get install -y git curl wget s3cmd libcurl4-openssl-dev libmysqlclient-dev python-pip
RUN pip install awscli

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
