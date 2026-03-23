#!/bin/bash

if [ -f /opt/my-resources/setup/gpu/setup-gpu.sh ]; then
  /opt/my-resources/setup/gpu/setup-gpu.sh || echo "GPU setup had errors, continuing..."
fi

echo "First-time setup complete!"
