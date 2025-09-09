# Use the official Nginx image as base
FROM nginx:latest

# Remove default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy custom HTML file
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
