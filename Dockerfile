FROM typesense/typesense:0.25.1

# Add curl for optional health checks (optional)
RUN apk add --no-cache curl

# Set environment variables using Render's internal ENV system
ENV TYPESENSE_API_KEY=secret
ENV TYPESENSE_DATA_DIR=/data
ENV TYPESENSE_ENABLE_CORS=true

# Expose Typesense default port
EXPOSE 8108

# Run the server
CMD ["--data-dir", "/data", "--api-key", "xyzsecret", "--enable-cors"]
