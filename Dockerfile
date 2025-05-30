# Indicar la imagen base (nginx) alpine que es una distribución de Linux ligera
FROM nginx:alpine

# Instalar Java 8
# Ejecutar un comando como si estuvieramos en terminal (RUN)
# apk es un comando de alpine para instalación de paquetes
# La primera opción indica actualizar/agregar el paquete y después descargar openjdk8
# Después eliminar el caché
RUN apk -U add openjdk8 \ 
    && rm -rf /var/cache/apk/*;

# Instalar la librería tff-dejavu
RUN apk add ttf-dejavu

# Instalar los microservicios
ENV JAVA_OPTS=""

# Agregar variables de entorno
ARG JAR_FILE

ADD ${JAR_FILE} app.jar

# Transferir los archivos a nginx 
VOLUME /tmp

# Eliminar los archivos del directorio de nginx (/usr/share/nginx/html)
RUN rm -rf /usr/share/nginx/html/*

# Copiar la configuración del archivo nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Copiar la aplicación de Angular
COPY dist/bilingApp /usr/share/nginx/html

# Copiar el archivo appshell.sh a la imagen
COPY appshell.sh appshell.sh

# Exponer los puertos necesarios (80, 8080)
EXPOSE 80 8080

# Ejecutar el script .sh
ENTRYPOINT ["sh","/appshell.sh"]