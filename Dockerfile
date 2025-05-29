# Imagen segura y ligera
FROM eclipse-temurin:21-jdk-alpine

# Crear volumen temporal (Spring usa /tmp)
VOLUME /tmp

# Nombre del .jar como argumento
ARG JAR_FILE=target/demo-0.0.1-SNAPSHOT.jar

# Copiar el .jar al contenedor
COPY ${JAR_FILE} app.jar

# Ejecutar la app
ENTRYPOINT ["java", "-jar", "/app.jar"]
