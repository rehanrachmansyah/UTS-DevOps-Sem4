# Gunakan image Python resmi
FROM python:3.10-slim

# Set working directory di dalam container
WORKDIR /app

# Copy semua file ke dalam container
COPY . /app

# Install dependency
RUN pip install --no-cache-dir -r requirements.txt

# Jalankan aplikasi Flask
CMD ["python", "app.py"]
