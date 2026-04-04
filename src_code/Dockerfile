# Use lightweight Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Prevent Python from writing .pyc files, these are cache files, not required in docker image.
ENV PYTHONDONTWRITEBYTECODE=1
# Print logs immediately to console
ENV PYTHONUNBUFFERED=1 

# Copy requirements first (for caching)
COPY ./src_code/requirements.txt .

# Install Python dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy app code
COPY . .

# Expose port
EXPOSE 5000

# Run app using gunicorn (production server)
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app"]
