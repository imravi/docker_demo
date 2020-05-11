FROM gradle

RUN gradle build

FROM openjdk:latest

ARG JAR_FILE=build/libs/*.jar

ADD ${JAR_FILE} app.jar

ENTRYPOINT [ "java","-jar","app.jar" ]

EXPOSE 8000
