# Use Ubuntu 18.04 as base image
FROM ubuntu:18.04

# Avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Set environment variable to allow building as root
ENV FORCE_UNSAFE_CONFIGURE=1

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    git \
    make \
    gcc \
    g++ \
    libncurses5-dev \
    wget \
    cpio \
    unzip \
    rsync \
    bc \
    file \
    python3 \
    && rm -rf /var/lib/apt/lists/*

# Create and set working directory
WORKDIR /buildroot

# Clone the repository
RUN git clone https://github.com/douglasdgoulart/buildroot.git .

# Configure for business card
RUN make business_card_defconfig
RUN make

CMD ["/bin/bash"]
