export HF_HOME=/mnt/workspace/TRELLIS/models
source .venv/bin/activate
# copy the model to the cache directory
mkdir -p /root/.cache/torch/hub/ && cp -n models/dinov2/zipball/main.zip /root/.cache/torch/hub/main.zip
mkdir -p /root/.cache/torch/hub/checkpoints/ && cp -n models/dinov2/dinov2_vitl14_reg4_pretrain.pth /root/.cache/torch/hub/checkpoints/dinov2_vitl14_reg4_pretrain.pth
# set TORCH_HUB_NO_DOWNLOAD=1 to avoid downloading the model again
export TORCH_HUB_NO_DOWNLOAD=1
python app.py