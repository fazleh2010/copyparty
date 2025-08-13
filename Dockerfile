# Use official Python 3.11 slim image
FROM python:3.11-slim

# Install system dependencies for ffmpeg and networking
RUN apt-get update && apt-get install -y --no-install-recommends \
    ffmpeg \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip and install Copyparty for the current user
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --user --upgrade copyparty

# Add the user's local bin to PATH so 'copyparty' command works
ENV PATH="/root/.local/bin:$PATH"

# Set working directory for file sharing
WORKDIR /copyparty

# Expose Copyparty port 5010
EXPOSE 5010

# Run Copyparty from current working directory on port 5010
CMD ["python3", "-m", "copyparty", "-i", "0.0.0.0", "-p", "5010", "-a", "/copyparty:rw"]

