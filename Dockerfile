FROM python:3.11-slim

# Actualizar repos e instalar certificados raíz
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    gnupg \
    && update-ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Instalar snscrape
RUN pip install --no-cache-dir snscrape

# Establecer directorio de trabajo
WORKDIR /app

# Comando base (puedes cambiarlo luego por uno funcional)
CMD ["tail", "-f", "/dev/null"]
