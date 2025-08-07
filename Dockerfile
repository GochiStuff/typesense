FROM typesense/typesense:0.25.1

# Optional: install curl for health checks or debugging
RUN apt-get update && apt-get install -y curl && apt-get clean

# Set environment variables using Render dashboard (not in Dockerfile)
# Example:
# ENV TYPESENSE_API_KEY=xyz
# ENV TYPESENSE_DATA_DIR=/data

# Create required directories
RUN mkdir -p /data

# Expose the port Typesense listens on
EXPOSE 8108

# Start Typesense
CMD ["/opt/typesense-server/typesense-server", "--data-dir", "/data", "--api-key", "$TYPESENSE_API_KEY"]
