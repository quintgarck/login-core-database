#!/bin/bash
set -e

# Esperar a que el servidor PostgreSQL esté disponible
until pg_isready -h login-postgres -p 5432 -U "$POSTGRES_USER"; do
  echo "Esperando a que PostgreSQL esté disponible..."
  sleep 2
done

# Verificar si la base de datos ya tiene tablas
if psql -h login-postgres -U "$POSTGRES_USER" -d "$POSTGRES_DB" -c '\dt' | grep -q '.'; then
  echo "La base de datos ya contiene tablas. No es necesario restaurar."
else
  echo "Restaurando el respaldo en la base de datos $POSTGRES_DB..."
  pg_restore -h login-postgres -U "$POSTGRES_USER" -d "$POSTGRES_DB" /var/backups/DBGOM_production.backup || true
fi

echo "Restauración completada."
