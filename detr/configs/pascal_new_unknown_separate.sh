#!/usr/bin/env bash

set -x

EXP_DIR=/nobackup/my_xfdu/detr_out/exps/pascal_unknown_separate
PY_ARGS=${@:1}

python -u main.py --output_dir ${EXP_DIR} \
      --dataset_file voc \
 --dataset voc \
  --epochs 50 \
  --lr_drop 40 \
   --eval_every 10 \
   --batch_size 1 \
     --load_backbone dino \
     --unknown \
     --separate \
     --separate_loss_weight 1.0 \
   ${PY_ARGS} \



#python -u main.py --output_dir ${EXP_DIR} \
#    --dataset_file coco \
#   --dataset coco_ood_val \
#  --epochs 50 \
#  --lr_drop 40 \
#   --eval_every 10 \
#   --batch_size 1 \
#     --load_backbone dino \
#    --unknown \
#     --separate \
#     --separate_loss_weight 1.0 \
#   ${PY_ARGS} \
