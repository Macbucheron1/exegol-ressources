#!/bin/bash

if [ -f /opt/my-resources/setup/gpu/setup-gpu.sh ]; then
  /opt/my-resources/setup/gpu/setup-gpu.sh || echo "GPU setup had errors, continuing..."
fi

cargo install --locked zellij
rm ~/.config/zellij/config.kdl
mkdir -p ~/.config/zellij/themes
cp -r /opt/my-resources/setup/zellij/. ~/.config/zellij/

echo "First-time setup complete!"
