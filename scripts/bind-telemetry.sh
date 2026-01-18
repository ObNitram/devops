#!/bin/bash

# Local port on your machine
LOCAL_PORT=3030

# Remote port on the server
REMOTE_PORT=3030

# SSH host alias defined in ~/.ssh/config
SSH_ALIAS="hyntaria"

echo "🔐 Establishing SSH tunnel: localhost:${LOCAL_PORT} → ${SSH_ALIAS}:localhost:${REMOTE_PORT}"
echo "🌐 Access the telemetry dashboard at http://grafana.localhost:${LOCAL_PORT}"
echo "Press Ctrl+C to close the tunnel."

ssh -N -L ${LOCAL_PORT}:127.0.0.1:${REMOTE_PORT} ${SSH_ALIAS}


