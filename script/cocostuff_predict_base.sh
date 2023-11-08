#!/bin/bash

# Tell the system the resources you need. Adjust the numbers according to your need, e.g.
#SBATCH --job-name=cocostuff_predict_base
#SBATCH --mail-user=nhlben@connect.hku.hk
#SBATCH --mail-type=ALL
#SBATCH --output=/userhome/cs2/nhlben/comp7404/project/cocostuff_base_predict_log.txt
#SBATCH --gres=gpu:1

#If you use Anaconda, initialize it
. $HOME/anaconda3/etc/profile.d/conda.sh
conda activate comp7404_project

# cd your your desired directory and execute your program, e.g.
cd /userhome/cs2/nhlben/comp7404/project/PaddleSeg

export CUDA_VISIBLE_DEVICES=0
export PYTHONWARNINGS="ignore"


python tools/val.py \
       --config configs/rtformer/rtformer_base_cocostuff_640x640_50k.yml \
       --model_path output/cocostuff_base/best_model/model.pdparams \

python tools/predict.py \
       --config configs/rtformer/rtformer_base_cocostuff_640x640_50k.yml \
       --model_path output/cocostuff_base/best_model/model.pdparams \
       --image_path data/cocostuff/images/val2017 \
       --save_dir output/cocostuff_base/predict
           