FROM daocloud.io/centos:6.6

MAINTAINER  feel  <fye@gizwits.com>

ENV	HOME /root

ENV	LANG en_US.UTF-8
ENV	LC_ALL en_US.UTF-8
ENV JDK_VERSION 8u11
ENV JDK_BUILD_VERSION b12

RUN yum install -y curl ;curl -LO "http://download.oracle.com/otn-pub/java/jdk/$JDK_VERSION-$JDK_BUILD_VERSION/jdk-$JDK_VERSION-linux-x64.rpm" -H 'Cookie: oraclelicense=accept-securebackup-cookie' && rpm -i jdk-$JDK_VERSION-linux-x64.rpm; rm -f jdk-$JDK_VERSION-linux-x64.rpm; yum remove curl;yum clean all

ENV JAVA_HOME /usr/java/default

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]
