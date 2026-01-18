FROM grafana/grafana:latest

# Disable Grafana sign up option
ENV GF_USERS_ALLOW_SIGN_UP=false

# Copy local Grafana config and provisioning into the image
COPY grafana.ini /etc/grafana/grafana.ini
COPY provisioning/ /etc/grafana/provisioning/

# Switch back to Grafana user and keep default entrypoint/CMD
EXPOSE 3000
