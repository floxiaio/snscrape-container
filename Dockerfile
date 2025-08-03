FROM python:3.11-slim

# Evita que python guarde .pyc
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Instalación de snscrape
RUN pip install --no-cache-dir snscrape

# Creamos una carpeta de trabajo
WORKDIR /app

# Comando por defecto (deja el contenedor vivo)
CMD ["tail", "-f", "/dev/null"]
