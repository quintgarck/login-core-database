# Usa la imagen oficial de PostgreSQL como base
FROM postgres:bullseye

LABEL version="1.0"
LABEL description="Custom PostgreSQL with custom configuration"

# Definir argumentos que se pasan en tiempo de build
ARG POSTGRES_PORT
ARG BACKUP_FILE

# Configurar variables de entorno desde los argumentos
ENV POSTGRES_PORT=${POSTGRES_PORT}
ENV BACKUP_FILE=${BACKUP_FILE}

# Copia el archivo .env al contenedor
COPY .env /usr/config/.env

# Instala dos2unix para convertir el archivo .env a formato Unix (si es necesario)
RUN apt-get update && apt-get install -y dos2unix && \
    dos2unix /usr/config/.env

# Copiar los archivos de configuración personalizados
COPY postgresql.conf /etc/postgresql/postgresql.conf
COPY pg_hba.conf /etc/postgresql/pg_hba.conf

# Establecer permisos adecuados para los archivos de configuración
RUN chown postgres:postgres /etc/postgresql/postgresql.conf /etc/postgresql/pg_hba.conf

# Exponer el puerto de PostgreSQL
EXPOSE ${POSTGRES_PORT}

# Iniciar PostgreSQL
CMD ["postgres", "-c", "config_file=/etc/postgresql/postgresql.conf"]
