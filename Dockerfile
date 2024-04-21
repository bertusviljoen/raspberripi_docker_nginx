# Use the official NGINX image from Docker Hub as the base image
FROM nginx:latest

# Remove the default configuration files provided by NGINX
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom configuration files from the host to the container
COPY nginx.conf /etc/nginx/nginx.conf
COPY yoursite.conf /etc/nginx/conf.d/

# Expose both port 80 and 443 to the host so that NGINX can receive HTTP and HTTPS requests
EXPOSE 80 443

# Command to start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
