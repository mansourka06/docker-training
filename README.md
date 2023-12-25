# DOCKER-TRAINING
Welcome to the Docker Training Repository! This repository contains materials and examples for learning Docker, a popular platform for containerization.

## Description
 This repository serves as a resource for Docker training, providing hands-on examples, exercises, and documentation to help you master Docker containerization. Whether you're a beginner or looking to enhance your Docker skills, this training material is designed to guide you through the fundamentals and advanced concepts.
 
 - Docker provides an efficient way to package, distribute, and run applications across different environments while ensuring consistency.
 - In this repository we setup step-by-step instructions for deploying a web application using Docker containers. Docker is a platform that allows you to package an application and its dependencies into a single unit called a container, ensuring consistency and portability across different environments.

## Prerequisites
Before starting the training, ensure that you have the following prerequisites installed:

- Ensure that Docker is installed on your system. If not, you can download and install it from the official Docker website: [Docker Installation Guide](https://docs.docker.com/get-docker/)
- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)
  
## Getting Started

1. **Clone the Repository:**

 - Clone the repository:
   ```bash
   git clone https://github.com/mansourka06/docker-training.git 
   cd docker-webapp

 - Navigate to the project directory:
   ```bash
   cd docker-training
   ```

## Creation of docker image
 
 1. - **Creating the Dockefile**
 ```bash
 vi Dockerfile
 ```
 - add the images configurations (for exemple the following content)
 ```bash
 FROM ubuntu 
 RUN apt update && apt upgrade -y
 RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata 
 RUN apt-get install -y -q git apache2 nginx
 RUN mv /var/www/html/index.html /var/www/html/index.html.old 
 RUN git clone https://github.com/mansourka06/my-simple-devops-webapp.git
 RUN cd my-simple-devops-webapp && cp -r * /var/www/html/
 ```

2. - **Bulding the docker images**
 ```bash
 docker build -t container_name .
 ```
 
3. - show the docker container id,  run the following command: 
 ```bash 
 docker ps
 ```

## Running the docker image

 **with docker command**
 ```bash
 docker run -d -p 8080:80 docker-container-id --name my-nginx-webapp
 ```
 **with docker-compose file**
 1. - Create the docker-compose file and add the following content:
 ```bash
 vi docker-compose.yml
 ```
 docker-compose.yml content
 ```bash
 version: '3'

 services:
   my-nginx-webapp:
     build: .
     image: my-nginx-webapp
     ports:
       - "8081:80"
     container_name: my-nginx-webapp
     command: ["nginx", "-g", "daemon off;"]
 ```

 2. - run the docker compose command:    
 ```bash
 docker-compose up -d
 ```

3. Access the Application

 Open a web browser and navigate to http://localhost:8080 to access your web application


## Update

- **Customization and Configuration:**
Update the Dockerfile and application code to suit your specific needs.
Use environment variables and Docker Compose to manage configuration.
Consider using Docker Compose for multi-container applications and defining services.

### Build docker image with tag (version)

    ```bash
    docker build -t my-web-app:v1.0.0 .

### Rununing docker container with tag (version)

    Run a Docker container using the image you built:
    ```bash
    docker run --name my-web-app -d -p 80:80 my-web-app:v1.0.0
    
> **_NOTE:_**
  - The -d flag runs the container in the background, and -p maps port 3000 inside the container to port 8080 on your host machine.
  - v1.0.0 is the webapp tag version
    
## Maintenance

  - To stop the running container, use:
    ```bash
    docker stop <container_id or container_name>:

 - To remove the container, use:
    ```bash
    docker rm <container_id or container_name>

 - To remove the Docker image, use:
    ```bash
    docker rmi docker_image_name

## Troubleshooting

 - Refer to the official Docker documentation for troubleshooting: Docker Troubleshooting Guide

 - Check Docker logs for any errors or issues:
    ```bash
    docker logs <container_id or container_name>

## Author
- [Mansour KA](https://github.com/mansourka06)

