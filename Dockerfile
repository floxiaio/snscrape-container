FROM python:3.11-slim

RUN pip install --no-cache-dir snscrape

WORKDIR /app

CMD ["tail", "-f", "/dev/null"]

