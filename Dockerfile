FROM python:3.9-slim-buster

WORKDIR /app

# Set a default download directory inside the container
ENV DOWNLOAD_DIR=/app/downloads

# Copy the rest of the application code
COPY . .

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends ffmpeg

# Install Python dependencies
RUN pip install -r requirements.txt

# Use bash to run the script
CMD ["/bin/bash", "/app/dockerrun.sh"]