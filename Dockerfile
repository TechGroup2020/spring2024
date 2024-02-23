FROM tomcat:8-jre8
RUN sed -i 's/port="8080"/port="6565"/' /usr/local/tomcat/conf/server.xml
COPY kube1-3.2.1.war /usr/local/tomcat/webapps/
EXPOSE 6565
