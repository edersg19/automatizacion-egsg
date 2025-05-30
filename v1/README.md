# Docker

## Instalación de Docker
Instalación:
- Para Ubuntu: Ir a https://docs.docker.com/engine/install/ubuntu/ y seguir las instrucciones

- Para Linux Mint: https://www.linuxtechi.com/how-to-install-docker-on-linux-mint/

## Lista de comandos básicos de Docker

- Listar las imagenes disponibles en el sistema:

``` shell
docker ps -a
```

- Inicializar un contenedor:
``` shell
docker start [nombre o ID]
```

- Ver los logs de los contenedores:
``` shell
docker logs []
```

- Detener los contenedores:
``` shell
docker stop [nombre contenedor]
```

- Eliminar un contenedor: 
``` shell
docker rm [nombre o ID]
```

- Eliminar una imagen:
``` shell
docker image rm [nombre o ID]
```

## Repositorio de Docker
[Repositorio](https://hub.docker.com/)

## Crear una imagen a partir de un archivo Dockerfile
``` shell
docker build -t nameapp:tag --no-cache --build-arg JAR_FILE=target/*.jar .
```

## Levantar un contenedor a partir de una imagen
``` shell
docker run -p 80:80 -p 8080:8080 --name container-name nameapp:tag
```

## Tarea: Crear una máquina virtual, instalar Docker y levantar este contenedor.