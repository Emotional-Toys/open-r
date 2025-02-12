# Stage 1: Build stage
FROM debian:6 AS build

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
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
FROM debian:6

# Install runtime dependencies
RUN apt-get update && apt-get install -y \
    openjdk-11-jre-headless \
    && rm -rf /var/lib/apt/lists/*

# Copy the built SDK from the build stage
COPY --from=build /workspace/sdk/build /opt/sdk

# Set the entrypoint
ENTRYPOINT ["/opt/sdk/your-sdk-executable"]