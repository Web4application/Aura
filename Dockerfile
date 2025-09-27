# Inherit from your Kubuverse base image
FROM ghcr.io/web4application/kubuverse@sha256:25f25b85336f0404001537eeb4cad839b5aa27aaaae12818704e9675ae8bc43d

# Set working directory
WORKDIR /app

# Copy Aura source code
COPY . /app

# Install Aura dependencies (example: Python, Node, etc. depending on Aura stack)
RUN apt-get update && apt-get install -y \
    python3 python3-pip \
    nodejs npm \
    && rm -rf /var/lib/apt/lists/*

# Install Python deps
RUN pip3 install --no-cache-dir -r requirements.txt

# Install Node deps (if Aura has a frontend part)
RUN npm install

# Expose Aura default port (adjust as needed)
EXPOSE 8080

# Start Aura
CMD ["python3", "main.py"]
