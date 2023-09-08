# Use the official Nginx image as the base image
FROM nginx:latest

# Set metadata for the image
LABEL "Author"="Akin"
LABEL "project"="Jendarey Consulting"

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the HTML content into the container's working directory
COPY index.html .

# Copy the HTML content into the container's working directory
COPY recipt.html .

# Copy the HTML content into the container's working directory
COPY registration.html .

# Optional: Expose port 80 to allow incoming HTTP traffic
EXPOSE 80

# The default command for the Nginx container starts the Nginx server automatically
CMD ["nginx", "-g", "daemon off;"]


#docker build -t jendaredocker/jendarey_devops_webpage:v1 .
#docker run -d -p 10000:80 jendaredocker/jendarey_devops_webpage:v1