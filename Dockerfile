# Stage 1: Build stage
FROM debian:bullseye-slim AS build

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    openjdk-11-jdk \
    python3 \
    python3-pip \
    unzip \
    zip \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /workspace

# Copy the SDK source code
COPY sdk/ /workspace/sdk

# Copy the dependencies
COPY deps/ /workspace/deps

# Build the SDK
WORKDIR /workspace/sdk
RUN make

# Stage 2: Runtime stage
FROM debian:bullseye-slim

# Install runtime dependencies
RUN apt-get update && apt-get install -y \
    openjdk-11-jre-headless \
    && rm -rf /var/lib/apt/lists/*

# Copy the built SDK from the build stage
COPY --from=build /workspace/sdk/build /opt/sdk

# Set the entrypoint
ENTRYPOINT ["/opt/sdk/your-sdk-executable"]