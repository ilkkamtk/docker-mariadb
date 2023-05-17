FROM mariadb:latest

# Copy the SQL file into the container
COPY lp.sql /docker-entrypoint-initdb.d/

# Expose the default MySQL port
EXPOSE 3306

# Set the entrypoint command to start MariaDB server
CMD ["mysqld"]