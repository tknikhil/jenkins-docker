#Adding jdk to docker which same as project java version
FROM openjdk:11-jdk-slim as build

EXPOSE 9000

LABEL org.opencontainers.image.authors="Nikhil TK"

COPY target/jenkinsdemo.jar jenkinsdemo.jar

ENTRYPOINT ["java","-jar","/jenkinsdemo.jar"]