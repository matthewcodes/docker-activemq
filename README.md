ActiveMQ on Docker
==================
Activemq 5.11.1 on java 7 oracle webupd8 ubuntu trusty.

#Running the container

    sudo docker run -d --name activemq -p 61616:61616 -p 8161:8161 -p 61613:61613 comparison/activemq


#Building the Dockerfile


    sudo docker build -t "comparison/activemq" .
