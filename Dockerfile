#Adding jdk to docker which same as project java version
FROM openjdk:11-jdk-slim as build

EXPOSE 9000

LABEL org.opencontainers.image.authors="Nikhil TK"

COPY target\jenkinsDemo.jar jenkinsDemo.jar

ENTRYPOINT ["java","-jar","/jenkinsDemo.jar"]