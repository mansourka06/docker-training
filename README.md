# docker-webapp

    Deployment of Web Application in Docker Container

## Description
 
 - Docker provides an efficient way to package, distribute, and run applications across different environments while ensuring consistency.
 - In this repository we setup step-by-step instructions for deploying a web application using Docker containers. Docker is a platform that allows you to package an application and its dependencies into a single unit called a container, ensuring consistency and portability across different environments.

## Prerequisites

- Docker: Ensure that Docker is installed on your system. If not, you can download and install it from the official Docker website: [Docker Installation Guide](https://docs.docker.com/get-docker/)

## Getting Started

1. **Clone the Repository:**

   Clone the repository containing your web application source code.

   ```bash
   git clone https://github.com/mansourka06/docker-webapp.git 
   cd docker-webapp

2. **Build Docker Image:**

    ```bash
    docker build -t my-web-app .

3. **Run Docker Container:**

    Run a Docker container using the image you built:
    ```bash
    docker run --name my-web-app -d -p 80:80 my-web-app:v1

> **_NOTE:_**
    - The -d flag runs the container in the background, and -p maps port 3000 inside the container to port 8080 on your host machine.
    - v1 is the webapp tag version

4. **Access the Application:**

    Open a web browser and navigate to http://localhost:8080 to access your web application


## Update

- **Customization and Configuration:**
Update the Dockerfile and application code to suit your specific needs.
Use environment variables and Docker Compose to manage configuration.
Consider using Docker Compose for multi-container applications and defining services.

## Maintenance

  - To stop the running container, use:
    ```bash
    docker stop <container_id_or_name>:

 - To remove the container, use:
    ```bash
    docker rm <container_id_or_name>

 - To remove the Docker image, use:
    ```bash
    docker rmi my-web-app

## Troubleshooting

 - Refer to the official Docker documentation for troubleshooting: Docker Troubleshooting Guide

 - Check Docker logs for any errors or issues:
    ```bash
    docker logs <container_id_or_name>


