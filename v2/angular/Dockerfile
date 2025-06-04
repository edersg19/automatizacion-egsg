FROM nginx:stable-alpine

# Usar el volumen /tmp
VOLUME /tmp

# Instalar nginx en el servidor
RUN rm -rf /usr/share/nginx/html/*

COPY nginx.conf /etc/nginx/nginx.conf
COPY billingApp /usr/share/nginx/html
COPY mime.types /etc/nginx/mime.types

# The port 80 for web app
# EXPOSE 80 7080
EXPOSE 80

# ENTRYPOINT ["sh", "/appshell.sh"]
CMD ["nginx", "-g", "daemon off;"]