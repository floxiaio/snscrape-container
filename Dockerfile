FROM python:3.11-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates curl gnupg openssl \
 && update-ca-certificates \
 && rm -rf /var/lib/apt/lists/*

# Establecer certificado por defecto para Python
RUN ln -sf /etc/ssl/certs/ca-certificates.crt /usr/lib/ssl/cert.pem

RUN pip install --no-cache-dir snscrape

WORKDIR /app
CMD ["tail", "-f", "/dev/null"]
