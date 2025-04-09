# Base stage: simple Nginx with curl installed
FROM nginx:alpine as base

RUN apk add --no-cache curl apache2-utils

WORKDIR /test

COPY . .

# Optional test stage - for test-only pipelines
FROM base as test
# Aquí podrías agregar comandos de prueba si fuera necesario
# Ejemplo: RUN ./run-tests.sh
