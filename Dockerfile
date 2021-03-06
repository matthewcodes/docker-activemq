FROM cloudesire/java:7

ENV ACTIVEMQ_VERSION 5.11.1
ENV ACTIVEMQ apache-activemq-$ACTIVEMQ_VERSION

ENV ACTIVEMQ_HOME /opt/activemq

RUN \
    wget http://archive.apache.org/dist/activemq/$ACTIVEMQ_VERSION/$ACTIVEMQ-bin.tar.gz && \
    mkdir -p /opt && \
    tar xf $ACTIVEMQ-bin.tar.gz -C /opt/ && \
    rm $ACTIVEMQ-bin.tar.gz && \
    ln -s /opt/$ACTIVEMQ $ACTIVEMQ_HOME

WORKDIR $ACTIVEMQ_HOME
EXPOSE 61616 8161 61613

CMD ["/bin/bash", "-c", "bin/activemq console"]
