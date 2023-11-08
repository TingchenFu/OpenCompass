RUN_DIR="$PWD"

python run.py \
--datasets triviaqa_gen \
--hf-path  ${RUN_DIR}/../../../PLM/GPT-2-small \
--model-kwargs torch_dtype='auto' \
--tokenizer-kwargs padding_side='right' truncation='true' use_fast=False \
--max-out-len 100 \
--max-seq-len 2048 \
--batch-size 2 \
--no-batch-padding \
--num-gpus 0  # Number of minimum required GPUs