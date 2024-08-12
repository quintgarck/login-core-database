#!/bin/bash
set -e

# Esperar a que el servidor PostgreSQL esté disponible
until pg_isready -q -h localhost -p 5432 -U postgres; do
  echo "Esperando a que PostgreSQL esté disponible..."
  sleep 2
done

# Restaurar el respaldo en la base de datos
if [ -f /var/backups/DBGOM_production.backup ]; then
  echo "Restaurando el respaldo en la base de datos..."
  pg_restore -U postgres -d DBGOM_production /var/backups/DBGOM_production.backup
else
  echo "El archivo de respaldo no se encontró."
fi

# Mantener el contenedor ejecutándose
exec postgres
