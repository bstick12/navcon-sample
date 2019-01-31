FROM openjdk:jdk-slim
COPY build/libs/navcon-sample.jar .
ENTRYPOINT ["/usr/bin/java", "-jar",  "/navcon-sample.jar"]

