#!/bin/bash
set -e

# activate venv if exists
if [ -d "venv" ]; then
  source venv/bin/activate
fi

# start service with OpenTelemetry auto-instrumentation
opentelemetry-instrument \
  --service_name {{cookiecutter.project_name}} \
  --traces_exporter otlp \
  --metrics_exporter otlp \
  flask --app app run --host 0.0.0.0 --port 5000
