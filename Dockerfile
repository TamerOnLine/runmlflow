FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install mlflow

ENTRYPOINT [ "mlflow", "server" ]

CMD [ "--host", "0.0.0.0", "--port", "5001" ]