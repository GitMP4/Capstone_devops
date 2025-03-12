# Use the pre-built container `hshar/webapp` as the base image
FROM hshar/webapp:latest

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy your application code (from the current directory) into the container
COPY . /var/www/html

# Expose port 80 (or the port your app runs on)
EXPOSE 80

# Start the application (web server)
CMD ["nginx", "-g", "daemon off;"]
