# Use the official MySQL image as the base
FROM mysql:latest

# Environment variables for MySQL configuration
ENV MYSQL_ROOT_PASSWORD=abcd
ENV MYSQL_DATABASE=mydb
ENV MYSQL_USER=root
ENV MYSQL_PASSWORD=abcd

# Copy the SQL initialization script
COPY init.sql /docker-entrypoint-initdb.d/

# Expose MySQL port
EXPOSE 3306
