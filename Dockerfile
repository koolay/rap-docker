FROM davidcaste/alpine-tomcat:tomcat8

RUN rm -rf /opt/tomcat/webapps/ROOT

#ADD ./RAP-0.14.1-SNAPSHOT.war /opt/tomcat/webapps/ROOT.war
ADD ./rap /opt/tomcat/webapps/ROOT
RUN wget https://github.com/kelseyhightower/confd/releases/download/v0.11.0/confd-0.11.0-linux-amd64 -O /bin/confd \
    && chmod +x /bin/confd

ADD ./confd/config /etc/confd
ADD ./run.sh /bin/rap
RUN chmod +x /bin/rap
EXPOSE 8080

CMD ["rap"]
