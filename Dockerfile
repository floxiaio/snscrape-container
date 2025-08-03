FROM python:3.11-slim

# Instalar certificados y dependencias mínimas
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Instalar snscrape
RUN pip install --no-cache-dir snscrape

WORKDIR /app

CMD ["tail", "-f", "/dev/null"]
