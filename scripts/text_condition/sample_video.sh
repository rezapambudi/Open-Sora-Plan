

CUDA_VISIBLE_DEVICES=$1 python opensora/sample/sample_t2v.py \
    --model_path hw_65/model \
    --version 65x512x512 \
    --num_frames 65 \
    --height $6 \
    --width $7 \
    --cache_dir "./cache_dir" \
    --text_encoder_name DeepFloyd/t5-v1_1-xxl \
    --text_prompt examples/$2 \
    --ae CausalVAEModel_4x8x8 \
    --ae_path "/dxyl_data02/CausalVAEModel_4x8x8/" \
    --save_img_path $3 \
    --fps 24 \
    --guidance_scale $4 \
    --num_sampling_steps $5 \
    --enable_tiling
