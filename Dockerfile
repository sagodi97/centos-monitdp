FROM centos

RUN yum -y install wget && \
    yum -y install maven && \
    wget https://download.jboss.org/wildfly/16.0.0.Final/wildfly-16.0.0.Final.tar.gz -P /tmp && \
    tar xf /tmp/wildfly-16.0.0.Final.tar.gz -C /opt/ && \
    ln -s /opt/wildfly-16.0.0.Final /opt/wildfly && \
    PATH=$PATH:/opt/wildfly/bin && \
    yum -y install git && \
    yum -y install -y gcc-c++ make && \ 
    curl -sL https://rpm.nodesource.com/setup_12.x | bash - && \
    yum -y install nodejs && \
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm && \
    yum -y localinstall google-chrome-stable_current_x86_64.rpm && \
    npm i -g @angular/cli
RUN adduser gitlab
