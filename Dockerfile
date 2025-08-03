FROM python:3.11-slim

# Instala snscrape y bash
RUN apt-get update && apt-get install -y bash && \
    pip install --no-cache-dir snscrape && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /app

CMD ["/bin/bash"]
