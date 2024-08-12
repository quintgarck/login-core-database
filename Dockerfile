# Usa la imagen oficial de PostgreSQL
FROM postgres:bullseye

# Exponer el puerto de PostgreSQL
EXPOSE 5432

# Iniciar PostgreSQL
CMD ["postgres"]
