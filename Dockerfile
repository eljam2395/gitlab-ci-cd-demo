#--FROM openjdk:8u111-jdk-alpine
##--VOLUME /tmp
#--ADD /target/petclinic.war petclinic.war
#--ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

FROM sionsmith/tomcat-7
#VOLUME /tmp
#ADD target/petclinic.war petclinic.war
COPY target/petclinic.war petclinic.war

#RUN apt-get -qq update

#install maven and git to build project
#RUN apt-get install -y wget git-core maven

# Pull project
# RUN git clone ssh://git@localhost:10022/kmcgowan/spring-framework-petclinic.git

# Build project
# RUN cd spring-framework-petclinic && mvn package
#RUN mv petclinic.war /opt/tomcat/webapps/petclinic.war


#RUN apt-get -qq update

#install maven and git to build project
#RUN apt-get install -y wget git-core maven

# Pull project
#RUN git clone https://github.com/sionsmith/spring-petclinic.git
#RUN git clone http://localhost:10080/kmcgowan/spring-framework-petclinic.git

# Build project
#RUN cd spring-petclinic && mvn package
RUN mv petclinic.war /opt/tomcat/webapps/petclinic.war
