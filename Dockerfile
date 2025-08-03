FROM python:3.11-slim

# Instalar dependencias necesarias y certificados raíz
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    libffi-dev \
    libssl-dev \
    ca-certificates \
    curl \
    gnupg \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Forzar actualización de certificados
RUN update-ca-certificates

# Instalar snscrape con pip
RUN pip install --no-cache-dir snscrape

# Establecer directorio de trabajo
WORKDIR /app

# Comando por defecto (mantener contenedor vivo)
CMD ["tail", "-f", "/dev/null"]
