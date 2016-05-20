FROM davidcaste/alpine-tomcat:tomcat8

RUN rm -rf /opt/tomcat/webapps/ROOT

#ADD ./RAP-0.14.1-SNAPSHOT.war /opt/tomcat/webapps/ROOT.war
ADD ./rap /opt/tomcat/webapps/ROOT

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
