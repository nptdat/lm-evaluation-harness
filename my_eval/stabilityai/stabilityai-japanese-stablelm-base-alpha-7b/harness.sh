#!/bin/bash
set -eu

MODEL_ARGS="pretrained=stabilityai/japanese-stablelm-base-alpha-7b,tokenizer=novelai/nerdstash-tokenizer-v1,use_fast=False,trust_remote_code=True"
TASK="jsquad-1.1-0.3,jcommonsenseqa-1.1-0.3,jnli-1.1-0.3,marc_ja-1.1-0.3"
python main.py \
    --model hf-causal \
    --model_args $MODEL_ARGS \
    --tasks $TASK \
    --num_fewshot "2,3,3,3" \
    --device "cuda" \
    --output_path "my_eval/stabilityai/stabilityai-japanese-stablelm-base-alpha-7b/result.json"
