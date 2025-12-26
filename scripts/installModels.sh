#!/bin/bash

echo "Script to install a series of models into a comfy install"

# use no spaces
COMFY_PATH="/workspace/runpod-slim/ComfyUI"

if true; then

	echo "Using comfy location:  $COMFY_PATH"
	# Need check that path exists

	echo "~~~~~  Installing models for SCAIL  ~~~~~~"

	# Wan21-14B-SCAIL-preview_fp8_e4m3fn_scaled_KJ.safetensors
	echo "Wan21-14B-SCAIL-preview_fp8_e4m3fn_scaled_KJ.safetensors"
	wget https://huggingface.co/Kijai/WanVideo_comfy_fp8_scaled/resolve/main/SCAIL/Wan21-14B-SCAIL-preview_fp8_e4m3fn_scaled_KJ.safetensors
	ls Wan21-14B-SCAIL-preview_fp8_e4m3fn_scaled_KJ.safetensors
	mv Wan21-14B-SCAIL-preview_fp8_e4m3fn_scaled_KJ.safetensors "$COMFY_PATH/models/diffusion_models"

	# wan_2.1_vae.safetensors 
	echo "wan_2.1_vae.safetensors"
	wget https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors
	ls wan_2.1_vae.safetensors
	mv wan_2.1_vae.safetensors "$COMFY_PATH/models/vae"

	# lightx2v_T2V_14B_cfg_step_distill_v2_lora_rank64_bf16.safetensors
	echo "lightx2v_T2V_14B_cfg_step_distill_v2_lora_rank64_bf16.safetensors"
	wget https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Lightx2v/lightx2v_T2V_14B_cfg_step_distill_v2_lora_rank64_bf16.safetensors
	ls lightx2v_T2V_14B_cfg_step_distill_v2_lora_rank64_bf16.safetensors
	mv lightx2v_T2V_14B_cfg_step_distill_v2_lora_rank64_bf16.safetensors "$COMFY_PATH/models/loras"

	# clip_vision_h.safetensors
	echo "clip_vision_h.safetensors"
	wget https://huggingface.co/fofr/comfyui/resolve/main/clip_vision/clip_vision_h.safetensors
	ls clip_vision_h.safetensors
	mv clip_vision_h.safetensors "$COMFY_PATH/models/clip_vision"

	# vitpose-l-wholebody.onnx
	echo "vitpose-l-wholebody.onnx"
	wget https://huggingface.co/JunkyByte/easy_ViTPose/resolve/main/onnx/wholebody/vitpose-l-wholebody.onnx
	ls vitpose-l-wholebody.onnx
	mv vitpose-l-wholebody.onnx "$COMFY_PATH/models/detection"

	# yolov10m.onnx
	echo "yolov10m.onnx"
	wget https://huggingface.co/onnx-community/YOLOv10/resolve/main/yolov10m.onnx
	ls yolov10m.onnx
	mv yolov10m.onnx "$COMFY_PATH/models/detection"

	# umt5-xxl-enc-bf16.safetensors
	echo "umt5-xxl-enc-bf16.safetensors"
	wget https://huggingface.co/Serenak/chilloutmix/resolve/main/umt5-xxl-enc-bf16.safetensors
	ls umt5-xxl-enc-bf16.safetensors
	mv umt5-xxl-enc-bf16.safetensors "$COMFY_PATH/models/text_encoders"

	echo "~~~~~~  END installing mdels for SCAIL  ~~~~~~"

fi
