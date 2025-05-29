FROM eclipse-temurin:21-jdk-alpine

VOLUME /tmp

# Copia cualquier .jar generado
COPY target/*.jar app.jar

ENTRYPOINT ["java", "-jar", "/app.jar"]

