#!/usr/bin/env bash

set -x

EXP_DIR=/nobackup-slow/dataset/my_xfdu/detr_out/exps/pascal_center_project_dim_16_weight_0.5_t_0.1_vmf_start_0_reweighted_mc_relu
PY_ARGS=${@:1}

python -u main.py --output_dir ${EXP_DIR} \
      --dataset_file voc \
 --dataset voc \
  --epochs 50 \
  --lr_drop 40 \
   --eval_every 10 \
   --batch_size 1 \
     --load_backbone dino \
     --center_loss \
     --center_loss_scheme_project 1 \
     --project_dim 16 \
     --center_temp 0.1 \
     --center_weight 0.5 \
     --unknown_start_epoch 0 \
     --vmf \
     --vmf_weight 1.0 \
     --center_adaptive \
     --vmf_multi_classifer \
     --vmf_multi_classifer_ml \
   ${PY_ARGS} \



#python -u main.py --output_dir ${EXP_DIR} \
#      --dataset_file coco \
# --dataset coco_ood_val \
#  --epochs 50 \
#  --lr_drop 40 \
#   --eval_every 10 \
#   --batch_size 1 \
#     --load_backbone dino \
#     --center_loss \
#     --center_loss_scheme_project 1 \
#     --project_dim 16 \
#     --center_temp 0.1 \
#     --center_weight 0.5 \
#     --unknown_start_epoch 0 \
#     --vmf \
#     --vmf_weight 1.0 \
#     --center_adaptive \
#     --vmf_multi_classifer \
#     --vmf_multi_classifer_ml \
#   ${PY_ARGS} \


#python -u main.py --output_dir ${EXP_DIR} \
#      --dataset_file coco \
# --dataset openimages_ood_val \
#  --epochs 50 \
#  --lr_drop 40 \
#   --eval_every 10 \
#   --batch_size 1 \
#     --load_backbone dino \
#     --center_loss \
#     --center_loss_scheme_project 1 \
#     --project_dim 16 \
#     --center_temp 0.1 \
#     --center_weight 0.5 \
#     --unknown_start_epoch 0 \
#     --vmf \
#     --vmf_weight 1.0 \
#     --center_adaptive \
#   ${PY_ARGS} \

