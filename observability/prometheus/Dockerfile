
# https://github.com/prometheus/prometheus/releases
FROM prom/prometheus:latest

# Copy Prometheus configuration
COPY prometheus.yaml /etc/prometheus/prometheus.yaml

# Switch to default user and expose port
EXPOSE 9090

# Start Prometheus with the provided configuration file
ENTRYPOINT ["prometheus"]
CMD ["--config.file=/etc/prometheus/prometheus.yaml", "--storage.tsdb.path=/prometheus"]
