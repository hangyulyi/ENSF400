# Dockerfile to containerize the project

FROM python:3-alpine

RUN mkdir -p /var/app_data

WORKDIR /app

# Copy and install dependencies listed in file
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app/ ./

CMD ["python3", "app.py"]