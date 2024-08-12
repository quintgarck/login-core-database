#!/bin/bash
set -e

# Asignar los permisos correctos a los directorios de backups y logs
chmod -R 750 /pgadmin/var/lib/pgadmin /pgadmin/var/log/pgadmin /pgadmin/var/backups

# Ejecutar el comando original de pgAdmin
exec "$@"
