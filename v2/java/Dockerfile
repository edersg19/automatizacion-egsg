# Usar la imagen base con JRE 17 en Alpine
FROM eclipse-temurin:17-alpine

# Crear un nuevo grupo llamado "devopsc" para el almacenamiento
RUN addgroup -g 1028 devopsc \
    && adduser -D -G devopsc admin

# Crear la carpeta "tmp" para el almacenamiento del cache+
VOLUME /tmp

# Establecer una variable de entorno JAR_FILE para la ruta del archivo
ARG JAR_FILE 

# Establecer una variable en entorno DB_PASSWORD con el valor del argumento
ARG DB_PASSWORD

# Agregar las variables al .env
ENV DB_PASSWORD=$DB_PASSWORD

# Copiar el archivo JAR
COPY ${JAR_FILE} /tmp/app.jar

# Generar los permisos
RUN chown -R admin:devopsc /tmp

# Cambiar el usuario admin
USER admin

# Expone el puerto 8080 para el backend
EXPOSE 8080

# Ejecutar el JAR para iniciar el contenedor
ENTRYPOINT ["java", "-jar", "/tmp/app.jar"]