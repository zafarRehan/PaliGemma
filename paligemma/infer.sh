#!/bin/bash

MODEL_PATH="/home/rehan/projects/pytorch/PaliGemma/weights/"
PROMPT="this building is "
IMAGE_FILE_PATH="/home/rehan/projects/pytorch/PaliGemma/test_images/image1.jpg"
MAX_TOKENS_TO_GENERATE=100
TEMPERATURE=0.8
TOP_P=0.9
DO_SAMPLE="False"
ONLY_CPU="True"
FP16="False"

python inference.py \
    --model_path "$MODEL_PATH" \
    --prompt "$PROMPT" \
    --image_file_path "$IMAGE_FILE_PATH" \
    --max_tokens_to_generate $MAX_TOKENS_TO_GENERATE \
    --temperature $TEMPERATURE \
    --top_p $TOP_P \
    --do_sample $DO_SAMPLE \
    --only_cpu $ONLY_CPU \
    --fp16 $FP16                                        \
