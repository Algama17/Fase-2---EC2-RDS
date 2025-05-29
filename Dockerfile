FROM openjdk:21-jdk-slim
VOLUME /tmp
COPY target/Fase-2-EC2-RDS-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]



