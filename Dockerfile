FROM amazonlinux:2.0.20230515.0
RUN ulimit -n 1024 && yum -y update && yum -y install \
    amazon-linux-extras 

RUN amazon-linux-extras enable python3.8
RUN ulimit -n 1024 && yum -y update && yum -y install \
    python38 \
    python38-pip \
    python38-devel \
    zip \
    && yum clean all

RUN rm -rf /python/lib/python3.8/site-packages/__pycache__
RUN python3.8 -m pip install --no-cache-dir pip==22.1.2
RUN pip install --no-cache-dir virtualenv==20.14.1