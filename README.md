# Greetings Service

This is a simple "Hello World" greetings service implemented using Node.js and Express. The service responds with different salutations based on customer requests. The purpose of this API is to showcase a basic RESTful API implementation with Docker and Kubernetes deployment.

## Features

- Greet different customers with personalized messages.
- Dockerized for easy deployment and containerization.
- Kubernetes deployment files for individual customers.

## Getting Started

### Prerequisites

- Node.js: [Download Node.js](https://nodejs.org/)
- Docker: [Download Docker](https://www.docker.com/)
- Kubernetes (Optional): [Install Minikube](https://minikube.sigs.k8s.io/docs/start/)

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/Ismail-Elyaakouby/Greetings-REST-API-HelloWorld.git
    cd Greetings-REST-API-HelloWorld
    ```

2. Install dependencies:

    ```bash
    npm install
    ```

### Usage

1. Run the greetings service:

    ```bash
    npm start
    ```

   The service will be running at http://localhost:3000

2. Test the greetings endpoint:

    - Customer A: http://localhost:3000/greet/A
    - Customer B: http://localhost:3000/greet/B
    - Customer C: http://localhost:3000/greet/C

### Real-time Logging

- The terminal running the service displays real-time logs for HTTP requests and responses. Alternatively, you can view logs using

```bash
docker logs container_name."
```

### Docker

Build the Docker image and push it to a local registry:

```bash
docker build -t greetings-service:latest .
docker tag greetings-service:latest 88915020/greetings-service:latest
docker push 88915020/greetings-service:latest


./scripts/docker_build.sh --docker_image_name greetings-service --tag_version latest --docker_repo_name 88915020





