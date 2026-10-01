#!/bin/zsh
set -e
export PYTORCH_ENABLE_MPS_FALLBACK=1
CORE="$HOME/Documents/ComfyUI-H3-Core"
cd "$CORE"
exec .venv/bin/python main.py \
  --listen 0.0.0.0 \
  --port 8190 \
  --force-upcast-attention \
  --extra-model-paths-config "$CORE/extra_model_paths.yaml" \
  --input-directory "$HOME/Documents/ComfyUI/input" \
  --output-directory "$HOME/Documents/ComfyUI/output" \
  --user-directory "$HOME/Documents/ComfyUI/user-h3" \
  --database-url "sqlite:////Users/mikuru/Documents/ComfyUI/user-h3/comfyui.db"
