# run with the command below:
python -m venv .venv && source .venv/bin/activate
pip install torch==2.4.0 torchvision==0.19.0 torchaudio==2.4.0 --index-url https://download.pytorch.org/whl/cu121
bash ./setup.sh --basic --xformers --flash-attn --diffoctreerast --spconv --mipgaussian --kaolin --nvdiffrast

# install kaolin
#pip install kaolin==0.16.0 -f https://nvidia-kaolin.s3.us-east-2.amazonaws.com/torch-2.4.0_cu121.html

#install flash_attn
pip install wheel psutil
pip install flash_attn --no-build-isolation
pip install git+https://github.com/graphdeco-inria/diff-gaussian-rasterization.git

# upgrade gradio. If it says below, you can ignore it.
# ERROR: pip's dependency resolver does not currently take into account all the packages that are installed. This behaviour is the source of the following dependency conflicts.
# gradio-litmodel3d 0.0.1 requires gradio<5.0,>=4.0, but you have gradio 5.49.1 which is incompatible. 
pip install --upgrade gradio

# download models the model will be downloaded to models/TRELLIS-image-large need to modify the path in app.py
pip install modelscope
modelscope download --model microsoft/TRELLIS-image-large --local_dir models/TRELLIS-image-large
modelscope download --model lmh2025/dinov2_vitl14_reg4_pretrain --local_dir models/dinov2


