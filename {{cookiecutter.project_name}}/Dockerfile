FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["opentelemetry-instrument", \
     "--service_name={{cookiecutter.project_name}}", \
     "--traces_exporter=otlp", \
     "--metrics_exporter=otlp", \
     "flask", "--app", "app", "run", "--host=0.0.0.0", "--port=5000"]
