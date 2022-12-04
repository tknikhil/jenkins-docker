#Adding jdk to docker which same as project java version
FROM openjdk:11-jdk-slim as build

EXPOSE 9000

LABEL org.opencontainers.image.authors="Nikhil TK"

COPY target\Jenkinsdemo-0.0.1-SNAPSHOT.jar Jenkinsdemo-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","/Jenkinsdemo-0.0.1-SNAPSHOT.jar"]