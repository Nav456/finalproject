# Use an official Nginx image as a parent image
FROM nginx:latest

# Copy nginx configuration file into the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the frontend files into the container
COPY index.html /usr/share/nginx/html/
