# Selecting the nginx server version
FROM nginx:alpine
# Copy your custom nginx.conf to the appropriate location inside the container
COPY nginx.conf /etc/nginx/conf.d/default.conf
# Copying the required files 
COPY index.html /usr/share/nginx/html
