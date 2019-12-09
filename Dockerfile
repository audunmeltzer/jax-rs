FROM maven:3.6.3-jdk-8-slim as builder
COPY pom.xml .
RUN mvn -B dependency:resolve dependency:resolve-plugins	
COPY src /src
RUN mvn package

FROM tomcat:9.0.29-jdk11-openjdk-slim 
RUN rm -rf $CATALINA_HOME/webapps/*
COPY --from=builder /target/*.war $CATALINA_HOME/webapps/ROOT.war
CMD ["catalina.sh", "run"]
