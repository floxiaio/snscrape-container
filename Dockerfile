FROM python:3.11-slim

# Instalar certificados raíz y herramientas requeridas
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    libffi-dev \
    libssl-dev \
    ca-certificates \
    curl \
    gnupg \
    openssl \
    && update-ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Instalar snscrape
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir snscrape

# Verificar certificados (debug opcional)
RUN python3 -c "import ssl; print(ssl.get_default_verify_paths())"

# Establecer directorio de trabajo
WORKDIR /app

# Mantener el contenedor corriendo (útil para pruebas)
CMD ["tail", "-f", "/dev/null"]
