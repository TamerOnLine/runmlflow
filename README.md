
# MLflow Dockerized Application

This repository contains a Dockerfile for setting up an MLflow server in a lightweight Python environment.

## Features

- Based on the lightweight Python 3.10-slim image.
- Includes MLflow installation for serving machine learning models.
- Configured to run the MLflow server on port 5001.

## Dockerfile Overview

```Dockerfile
FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install mlflow

ENTRYPOINT [ "mlflow", "server" ]

CMD [ "--host", "0.0.0.0", "--port", "5001" ]
```

## Usage

### Build the Docker Image

To build the Docker image, run the following command in the directory containing the `Dockerfile`:

```bash
docker build -t mlflow-server .
```

### Run the Docker Container

To run the container, execute:

```bash
docker run -p 5001:5001 mlflow-server
```

The MLflow server will be accessible at `http://localhost:5001`.

## Customization

You can customize the MLflow server by modifying the `CMD` instruction in the Dockerfile. For example, you can change the port or add additional flags.

## License

This project is licensed under the MIT License. See the LICENSE file for details.
