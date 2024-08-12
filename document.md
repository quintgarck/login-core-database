Documentación: Comandos útiles para Monitoreo y Seguimiento de Contenedores Docker y Docker Compose
1. Comandos básicos de Docker
1.1. Gestión de Contenedores
Listar contenedores activos:

bash
Copy code
docker ps
Muestra los contenedores en ejecución.
Listar todos los contenedores (activos e inactivos):

bash
Copy code
docker ps -a
Muestra todos los contenedores, incluyendo los que están detenidos.
Iniciar un contenedor detenido:

bash
Copy code
docker start <container_name_or_id>
Inicia un contenedor previamente detenido.
Detener un contenedor en ejecución:

bash
Copy code
docker stop <container_name_or_id>
Detiene un contenedor en ejecución.
Reiniciar un contenedor:

bash
Copy code
docker restart <container_name_or_id>
Reinicia un contenedor.
Eliminar un contenedor detenido:

bash
Copy code
docker rm <container_name_or_id>
Elimina un contenedor que no está en ejecución.
Eliminar todos los contenedores detenidos:

bash
Copy code
docker container prune
Limpia todos los contenedores detenidos.
1.2. Gestión de Imágenes
Listar imágenes descargadas:

bash
Copy code
docker images
Muestra las imágenes almacenadas localmente.
Eliminar una imagen:

bash
Copy code
docker rmi <image_name_or_id>
Elimina una imagen de Docker.
Eliminar todas las imágenes no utilizadas:

bash
Copy code
docker image prune -a
Limpia todas las imágenes no referenciadas por ningún contenedor.
1.3. Monitoreo de Contenedores
Ver los logs de un contenedor:

bash
Copy code
docker logs <container_name_or_id>
Muestra los logs del contenedor.
Seguir los logs en tiempo real:

bash
Copy code
docker logs -f <container_name_or_id>
Muestra los logs en tiempo real.
Ver estadísticas de rendimiento de los contenedores:

bash
Copy code
docker stats
Muestra el uso de CPU, memoria, red y disco de los contenedores activos.
Inspeccionar un contenedor (detalles avanzados):

bash
Copy code
docker inspect <container_name_or_id>
Muestra información detallada sobre un contenedor, incluyendo variables de entorno, configuraciones de red, volúmenes, etc.
2. Comandos avanzados de Docker
2.1. Gestión de Volúmenes
Listar volúmenes de Docker:

bash
Copy code
docker volume ls
Muestra todos los volúmenes creados en Docker.
Inspeccionar un volumen:

bash
Copy code
docker volume inspect <volume_name>
Proporciona detalles sobre un volumen específico, como su punto de montaje.
Eliminar un volumen:

bash
Copy code
docker volume rm <volume_name>
Elimina un volumen específico.
Eliminar volúmenes no utilizados:

bash
Copy code
docker volume prune
Limpia todos los volúmenes que no están en uso por ningún contenedor.
2.2. Gestión de Redes
Listar redes de Docker:

bash
Copy code
docker network ls
Muestra todas las redes creadas en Docker.
Inspeccionar una red:

bash
Copy code
docker network inspect <network_name>
Muestra información detallada sobre una red de Docker.
Crear una nueva red:

bash
Copy code
docker network create <network_name>
Crea una nueva red en Docker.
Conectar un contenedor a una red:

bash
Copy code
docker network connect <network_name> <container_name_or_id>
Conecta un contenedor a una red específica.
Desconectar un contenedor de una red:

bash
Copy code
docker network disconnect <network_name> <container_name_or_id>
Desconecta un contenedor de una red específica.
Eliminar una red:

bash
Copy code
docker network rm <network_name>
Elimina una red que no está en uso por ningún contenedor.
3. Comandos útiles de Docker Compose
3.1. Gestión de Servicios
Iniciar servicios definidos en docker-compose.yml:

bash
Copy code
docker-compose up -d
Inicia todos los servicios en segundo plano (-d).
Detener servicios:

bash
Copy code
docker-compose down
Detiene todos los servicios y elimina los contenedores.
Reconstruir y reiniciar servicios:

bash
Copy code
docker-compose up -d --build
Reconstruye las imágenes y reinicia los servicios.
Ver el estado de los servicios:

bash
Copy code
docker-compose ps
Muestra el estado de los contenedores que forman parte del docker-compose.
Ver los logs de todos los servicios:

bash
Copy code
docker-compose logs
Muestra los logs combinados de todos los servicios definidos.
Ver los logs en tiempo real:

bash
Copy code
docker-compose logs -f
Sigue los logs en tiempo real de todos los servicios.
3.2. Escalado de Servicios
Escalar un servicio:
bash
Copy code
docker-compose up -d --scale <service_name>=<number_of_instances>
Escala un servicio a un número específico de instancias.
4. Comandos avanzados de Docker Compose
4.1. Verificación de Configuración
Verificar la configuración del archivo docker-compose.yml:

bash
Copy code
docker-compose config
Muestra la configuración resultante tras procesar las variables de entorno y otros ajustes.
Validar la configuración del archivo docker-compose.yml:

bash
Copy code
docker-compose config -q
Verifica si la configuración es válida y no tiene errores.
4.2. Gestión de Volúmenes y Redes
Listar volúmenes y redes asociadas a un proyecto de Docker Compose:

bash
Copy code
docker-compose down --volumes --remove-orphans
Detiene los servicios, elimina los volúmenes y redes asociadas al proyecto.
Detener y eliminar contenedores huérfanos:

bash
Copy code
docker-compose down --remove-orphans
Limpia contenedores que no están en el archivo docker-compose.yml actual.
5. Sugerencias de Buenas Prácticas
Documentación:

Mantén una documentación clara y actualizada de tus configuraciones de Docker y Docker Compose.
Usa comentarios en tus archivos Dockerfile y docker-compose.yml para explicar configuraciones especiales.
Manejo de Variables de Entorno:

Nunca almacenes credenciales sensibles directamente en el archivo docker-compose.yml. Utiliza archivos .env y considera encriptar variables sensibles.
Asegúrate de no incluir archivos .env en tu control de versiones si contienen información sensible.
Monitorización:

Considera integrar herramientas de monitorización como Prometheus y Grafana para visualizar estadísticas detalladas de contenedores en producción.
Copia de Seguridad:

Implementa estrategias de backup regulares para los volúmenes que contienen datos críticos.
Automatización:

Automatiza la construcción y despliegue de contenedores usando CI/CD pipelines con herramientas como Jenkins, GitLab CI, o GitHub Actions.
6. Referencias y Recursos
Documentación oficial de Docker:
Docker Docs
Documentación oficial de Docker Compose:
Docker Compose Docs
Comandos de red en Docker:
Docker Network Overview