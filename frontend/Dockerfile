# Use a lightweight base image
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy the content from local host to the image
COPY index.html /usr/share/nginx/html

# Expose the port where nginx is serving
EXPOSE 80

# Command to run the nginx server
CMD ["nginx", "-g", "daemon off;"]
