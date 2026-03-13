# FROM python:3.11-slim

# WORKDIR /app

# COPY . /app
# # install system dependencies
# RUN apt-get update && apt-get install -y libyaml-dev
# RUN pip install --upgrade pip
# RUN pip install --upgrade pip setuptools wheel
# RUN pip install -r requirements.txt

# EXPOSE 5000

# CMD [ "python","app.py"]



# Use Python 3.11 slim image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements first to leverage Docker cache
COPY requirements.txt .

# Install system dependencies needed to build some Python packages
RUN apt-get update && apt-get install -y libyaml-dev gcc && \
    rm -rf /var/lib/apt/lists/*

# Upgrade pip and essential packaging tools
RUN pip install --upgrade pip setuptools wheel

# Install Python dependencies
RUN pip install -r requirements.txt

# Copy the rest of the app code
COPY  . /app

# Expose the port your app runs on
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]