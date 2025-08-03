FROM python:3.11-slim

# Establecer variables de entorno recomendadas
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    LANG=C.UTF-8 \
    LC_ALL=C.UTF-8

# Instalar certificados raíz y herramientas necesarias
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    gnupg \
 && update-ca-certificates \
 && rm -rf /var/lib/apt/lists/*

# Instalar snscrape con pip
RUN pip install --no-cache-dir snscrape

# Crear y usar un directorio de trabajo
WORKDIR /app

# Comando por defecto (puedes cambiarlo si quieres algo más útil)
CMD ["tail", "-f", "/dev/null"]
